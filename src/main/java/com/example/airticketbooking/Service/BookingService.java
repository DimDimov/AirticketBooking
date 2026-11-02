package com.example.airticketbooking.Service;


import com.example.airticketbooking.DTO.BookingRequest;
import com.example.airticketbooking.Enum.BookingStatus;
import com.example.airticketbooking.Enum.PaymentStatus;
import com.example.airticketbooking.Flight.FlightSegment;
import com.example.airticketbooking.Model.*;
import com.example.airticketbooking.Passenger.Luggage.LuggageDirection;
import com.example.airticketbooking.Passenger.Luggage.LuggageRequest;
import com.example.airticketbooking.Passenger.Meal.MealSegment;
import com.example.airticketbooking.Passenger.Meal.MealSegmentRequest;
import com.example.airticketbooking.Passenger.Seat.Seat;
import com.example.airticketbooking.Passenger.Seat.SeatRequest;
import com.example.airticketbooking.pdf.PdfGenerator;
import com.example.airticketbooking.Repositories.AirportRepository;
import com.example.airticketbooking.Repositories.BookingRepository;
import com.example.airticketbooking.Repositories.UserRepository;
import jakarta.mail.MessagingException;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Service
public class BookingService {

    private final BookingRepository bookingRepository;
    private final UserRepository userRepository;
    private final AirportRepository airportRepository;
    private final EmailService emailService;
    private final PdfGenerator pdfGenerator;
    private final LuggagePricingService luggagePricingService;
    private final MealPricingService mealPricingService;
    private final SeatPricingService seatPricingService;

    public BookingService(BookingRepository bookingRepository, LuggagePricingService luggagePricingService, UserRepository userRepository, AirportRepository airportRepository, EmailService emailService, PdfGenerator pdfGenerator, MealPricingService mealPricingService, SeatPricingService seatPricingService) {
        this.bookingRepository = bookingRepository;
        this.userRepository = userRepository;
        this.airportRepository = airportRepository;
        this.emailService = emailService;
        this.pdfGenerator = pdfGenerator;
        this.luggagePricingService = luggagePricingService;
        this.mealPricingService = mealPricingService;
        this.seatPricingService = seatPricingService;
    }

    public Booking createBooking(BookingRequest request) throws MessagingException {

        User user = userRepository.findByEmail(request.getUserEmail())
                .orElseThrow(() -> new RuntimeException("Benutzer nicht gefunden."));


        Booking booking = new Booking();

        booking.setBookingTime(LocalDateTime.now());

        booking.setAdults(request.getAdults());
        booking.setChildren(request.getChildren());
        booking.setTotalPrice(request.getTotalPrice());
        booking.setStatus(BookingStatus.PENDING);
        List<Passenger> passengers = request.getPassengers()
                        .stream()
                                .map(passengerRequest ->  {
                                    Passenger passenger = new Passenger();
                                    passenger.setTitle(passengerRequest.getTitle());
                                    passenger.setFirstName(passengerRequest.getFirstName());
                                    passenger.setLastName(passengerRequest.getLastName());
                                    passenger.setType(passengerRequest.getType());
                                    passenger.setChildAge(passengerRequest.getChildAge());
                                    passenger.setGender(passengerRequest.getGender());
                                    passenger.setFlightPrice(passengerRequest.getFlightPrice());


                                    List<Seat> seats = new ArrayList<>();
                                    for(SeatRequest seatRequest: passengerRequest.getSeats()) {

                                        Seat seat = new Seat();

                                        seat.setDirection(seatRequest.getDirection());
                                        seat.setFlightIndex(seatRequest.getFlightIndex());
                                        seat.setSeat(seatRequest.getSeat());
                                        seat.setSeatClass(seatRequest.getSeatClass());

                                        BigDecimal price = seatPricingService.calculate(
                                                seatRequest.getSeatClass()
                                        );

                                        seat.setSeatPrice(price);
                                        seats.add(seat);
                                    }

                                    passenger.setSeats(seats);

                                    List<MealSegment> meals = new ArrayList<>();

                                    if(passengerRequest.getMeals() != null
                                            &&
                                    passengerRequest.getMeals().getOutbound() != null &&
                                            passengerRequest.getMeals().getOutbound().getSegments() != null
                                    ){

                                        for (MealSegmentRequest segmentRequest :
                                        passengerRequest.getMeals().getOutbound().getSegments()
                                        ) {

                                            MealSegment mealSegment = new MealSegment();

                                            mealSegment.setDirection("outbound");
                                            mealSegment.setFlightIndex(segmentRequest.getFlightIndex());
                                            mealSegment.setMeal(segmentRequest.getMeal());

                                            BigDecimal price =
                                                    mealPricingService.calculate(segmentRequest.getMeal());

                                            mealSegment.setMealPrice(price);
                                            meals.add(mealSegment);
                                        }
                                    }

                                    if(passengerRequest.getMeals() != null
                                            &&
                                            passengerRequest.getMeals().getInbound() != null &&
                                            passengerRequest.getMeals().getInbound().getSegments() != null

                                    ){

                                        for (MealSegmentRequest segmentRequest
                                                : passengerRequest.getMeals().getInbound().getSegments()) {

                                            MealSegment mealSegment = new MealSegment();

                                            mealSegment.setDirection("inbound");
                                           mealSegment.setFlightIndex(segmentRequest.getFlightIndex());
                                            mealSegment.setMeal(segmentRequest.getMeal());

                                            BigDecimal price =
                                                    mealPricingService.calculate(segmentRequest.getMeal());

                                            mealSegment.setMealPrice(price);
                                            meals.add(mealSegment);
                                        }
                                    }

                                    BigDecimal totalMealPrice = meals.stream()
                                            .map(MealSegment::getMealPrice)
                                            .filter(Objects::nonNull)
                                            .reduce(BigDecimal.ZERO, BigDecimal::add);

                                    passenger.setTotalMealPrice(totalMealPrice);
                                    passenger.setMeals(meals);

                                    LuggageRequest luggage = passengerRequest.getLuggage();
                                    if (luggage != null) {

                                        if (luggage.getOutbound() != null) {
                                           LuggageDirection outbound = new LuggageDirection();

                                            outbound.setCabinLuggage(luggage.getOutbound().getCabinLuggage());
                                            outbound.setCheckedLuggage(luggage.getOutbound().getCheckedLuggage());

                                            BigDecimal outboundPrice = luggagePricingService.calculateLuggagePrice(
                                                    luggage.getOutbound().getCabinLuggage(),
                                                    luggage.getOutbound().getCheckedLuggage()
                                            );

                                            outbound.setLuggagePrice(outboundPrice);

                                            passenger.setOutboundLuggage(outbound);
                                        }

                                        if (luggage.getInbound() != null) {
                                            LuggageDirection inbound = new LuggageDirection();

                                            inbound.setCabinLuggage(luggage.getInbound().getCabinLuggage());
                                            inbound.setCheckedLuggage(luggage.getInbound().getCheckedLuggage());

                                            BigDecimal inboundPrice = luggagePricingService.calculateLuggagePrice(
                                                    luggage.getInbound().getCabinLuggage(),
                                                    luggage.getInbound().getCheckedLuggage()
                                                    );

                                            inbound.setLuggagePrice(inboundPrice);

                                            passenger.setInboundLuggage(inbound);
                                        }
                                    }

                                    passenger.setBooking(booking);
                                    passenger.setId(booking.getId());

                                    return  passenger;
                                })
                                        .toList();
        
       booking.setPassengers(passengers);

        List <FlightBooking> flightBookings = new ArrayList<>();

  for (int i=0; i < request.getFlight().getOutbound().getFlights().size(); i++) {

      FlightSegment outboundFlight = request
              .getFlight()
              .getOutbound()
              .getFlights()
              .get(i);


     FlightBooking flightBooking = new FlightBooking();

      DateTimeFormatter formatter =
              DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");

     flightBooking.setDirection("outbound");
     flightBooking.setFlightIndex(i);

      String departureIata = request.getFlight().getDepartureAirport().getIataCode();

      String arrivalIata = request.getFlight().getDepartureAirport().getIataCode();

      Airport departure = airportRepository.findByIataCode(departureIata
      ).orElseThrow(() -> new RuntimeException("Flughafen nicht gefunden"));

      Airport arrival = airportRepository.findByIataCode(arrivalIata
      ).orElseThrow(() -> new RuntimeException("Flughafen nicht gefunden"));

      flightBooking.setDepartureAirport(departure);
      flightBooking.setArrivalAirport(arrival);

      flightBooking.setAirline(outboundFlight.getAirline());
      flightBooking.setAirlineLogo(outboundFlight.getAirline_logo());
      flightBooking.setAirplane(outboundFlight.getAirplane());
      flightBooking.setFlightNumber(outboundFlight.getFlight_number());
      flightBooking.setDepartureTime(LocalDateTime.parse(outboundFlight.getDeparture_airport().getTime(), formatter));
      flightBooking.setArrivalTime(LocalDateTime.parse(outboundFlight.getArrival_airport().getTime(), formatter));
      flightBooking.setDepartureAirportName(outboundFlight.getDeparture_airport().getName());
      flightBooking.setDepartureAirportIata(outboundFlight.getDeparture_airport().getId());
      flightBooking.setArrivalAirportName(outboundFlight.getArrival_airport().getName());
      flightBooking.setArrivalAirportIata(outboundFlight.getArrival_airport().getId());
      flightBookings.add(flightBooking);
      booking.setFlights(flightBookings);
  }


            if(request.getFlight().getInbound() != null) {
                for (int i = 0; i < request.getFlight().getInbound().getFlights().size(); i++) {

                    FlightSegment inboundFlight = request
                            .getFlight()
                            .getInbound()
                            .getFlights()
                            .get(i);


                    FlightBooking flightBooking = new FlightBooking();

                    DateTimeFormatter formatter =
                            DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");

                    flightBooking.setDirection("inbound");
                    flightBooking.setFlightIndex(i);


                    String departureIata = request.getFlight().getDepartureAirport().getIataCode();

                    String arrivalIata = request.getFlight().getDepartureAirport().getIataCode();

                    Airport departure = airportRepository.findByIataCode(departureIata
                    ).orElseThrow(() -> new RuntimeException("Flughafen nicht gefunden"));

                    Airport arrival = airportRepository.findByIataCode(arrivalIata
                    ).orElseThrow(() -> new RuntimeException("Flughafen nicht gefunden"));

                    flightBooking.setDepartureAirport(departure);
                    flightBooking.setArrivalAirport(arrival);

                    flightBooking.setAirline(inboundFlight.getAirline());
                    flightBooking.setAirlineLogo(inboundFlight.getAirline_logo());
                    flightBooking.setAirplane(inboundFlight.getAirplane());
                    flightBooking.setFlightNumber(inboundFlight.getFlight_number());
                    flightBooking.setDepartureTime(LocalDateTime.parse(inboundFlight.getDeparture_airport().getTime(), formatter));
                    flightBooking.setArrivalTime(LocalDateTime.parse(inboundFlight.getArrival_airport().getTime(), formatter));
                    flightBooking.setDepartureAirportName(inboundFlight.getDeparture_airport().getName());
                    flightBooking.setDepartureAirportIata(inboundFlight.getDeparture_airport().getId());
                    flightBooking.setArrivalAirportName(inboundFlight.getArrival_airport().getName());
                    flightBooking.setArrivalAirportIata(inboundFlight.getArrival_airport().getId());
                    flightBookings.add(flightBooking);
                    booking.setFlights(flightBookings);
                }
            }

        booking.setUser(user);

        booking.setTotalPrice(request.getTotalPrice());

        Booking savedBooking = bookingRepository.save(booking);

        emailService.sendBookingConfirmation(savedBooking);

        return  savedBooking;
    }


    @Transactional
    public void markPaymentSuccessful(long bookingId) {

        Booking booking = bookingRepository
                .findById(bookingId).orElseThrow(() -> new RuntimeException("Booking not found: " + bookingId));

        booking.setPaymentStatus(PaymentStatus.PAID);

        bookingRepository.save(booking);
    }

    public List<Booking> getAllBookings() {
        return bookingRepository.findAll();
    }

    public List<Booking> getBookingsByEmail(String email) {
        User user = userRepository.findByEmail(email).orElseThrow();


        return bookingRepository.findBookingsByUserId(user.getId());
    }

    public Booking getBookingById(Long id) {

        return bookingRepository
                .findById(id)
                .orElseThrow(() ->
                        new RuntimeException(
                                "Booking not found: " + id
                        )
                );
    }

    public void updateStatus(Long id, BookingStatus status) {
        Booking booking = bookingRepository.findById(id).orElseThrow();

        booking.setStatus(status);
        bookingRepository.save(booking);
    }

    public byte[] generateTicket(Long bookingId) throws IOException {

        Booking booking = bookingRepository.findById(bookingId)
                .orElseThrow(() -> new RuntimeException("Buchung nicht gefunden"));

        return pdfGenerator.generate(booking);
    }

    public void resendEmail(Long id) throws MessagingException, IOException {
        Booking booking = bookingRepository.findById(id).orElseThrow();
        emailService.sendTicketEmail(booking);
    }
}
