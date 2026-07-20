package com.example.airticketbooking.Service;


import com.example.airticketbooking.DTO.BookingRequest;
import com.example.airticketbooking.Flight.FlightSegment;
import com.example.airticketbooking.Model.*;
import com.example.airticketbooking.Repositories.AirportRepository;
import com.example.airticketbooking.Repositories.BookingRepository;
import com.example.airticketbooking.Repositories.UserRepository;
import jakarta.mail.MessagingException;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

@Service
public class BookingService {

    private final BookingRepository bookingRepository;
    private final UserRepository userRepository;
    private final AirportRepository airportRepository;
    private final EmailService emailService;

    public BookingService(BookingRepository bookingRepository, UserRepository userRepository, AirportRepository airportRepository, EmailService emailService) {
        this.bookingRepository = bookingRepository;
        this.userRepository = userRepository;
        this.airportRepository = airportRepository;
        this.emailService = emailService;
    }

    public Booking createBooking(BookingRequest request) throws MessagingException {

        User user = userRepository.findByEmail(request.getUserEmail())
                .orElseThrow(() -> new RuntimeException("Benutzer nicht gefunden."));


        Booking booking = new Booking();

        booking.setBookingTime(LocalDateTime.now());

        booking.setAdults(request.getAdults());
        booking.setChildren(request.getChildren());
        booking.setTotalPrice(request.getTotalPrice());
        List<Passenger> passengers = request.getPassengers()
                        .stream()
                                .map(passengerRequest ->  {
                                    Passenger passenger = new Passenger();
                                    passenger.setTitle(passengerRequest.getTitle());
                                    passenger.setFirstName(passengerRequest.getFirstName());
                                    passenger.setLastName(passengerRequest.getLastName());
                                    passenger.setType(passengerRequest.getType());
                                    passenger.setSeat(passengerRequest.getSeat());
                                    passenger.setChildAge(passengerRequest.getChildAge());
                                    passenger.setGender(passengerRequest.getGender());
                                    passenger.setSeatClass(passengerRequest.getSeatClass());
                                    passenger.setSeat(passengerRequest.getSeat());
                                    passenger.setSeatPrice(passengerRequest.getSeatPrice());
                                    passenger.setMeal(passengerRequest.getMeal());
                                    passenger.setMealPrice(passengerRequest.getMealPrice());
                                    passenger.setLuggagePrice(passengerRequest.getLuggagePrice());
                                    passenger.setCabinLuggage(passengerRequest.isCabinLuggage());
                                    passenger.setCheckedLuggage(passengerRequest.getCheckedLuggage());
                                    passenger.setId(booking.getId());

                                    return  passenger;
                                })
                                        .toList();

      FlightBooking flightBooking = new FlightBooking();

        DateTimeFormatter formatter =
                DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");

        FlightSegment outboundFlight = request
                .getFlight()
                        .getOutbound()
                                .getFlights()
                                        .get(0);

         flightBooking.setAirline(outboundFlight.getAirline());
        flightBooking.setAirlineLogo(outboundFlight.getAirline_logo());
        flightBooking.setAirplane(outboundFlight.getAirplane());
        flightBooking.setFlightNumber(outboundFlight.getFlight_number());
        flightBooking.setTripType(String.valueOf(outboundFlight.getTripType()));
        flightBooking.setDepartureTime(LocalDateTime.parse(outboundFlight.getDeparture_airport().getTime(), formatter));
        flightBooking.setArrivalTime(LocalDateTime.parse(outboundFlight.getArrival_airport().getTime(), formatter));

        Airport departure = airportRepository.findByNameAndCity(

                request.getFlight()
                        .getDepartureAirport()
                        .getName(),
                request.getFlight().getDepartureAirport().getCity()

        ).orElseThrow(() -> new RuntimeException("Flughafen nicht gefunden"));


        Airport arrival = airportRepository.findByNameAndCity(

                request.getFlight()
                        .getArrivalAirport()
                        .getName(),
                request.getFlight().getArrivalAirport().getCity()
        ).orElseThrow(() -> new RuntimeException("Flughafen nicht gefunden"));

        flightBooking.setDepartureAirport(departure);
        flightBooking.setDepartureAirportName(departure.getName());
        flightBooking.setDepartureAirportIata(departure.getIataCode());
        flightBooking.setArrivalAirport(arrival);
        flightBooking.setArrivalAirportName(arrival.getName());
        flightBooking.setArrivalAirportIata(arrival.getIataCode());

        flightBooking.setDepartureAirport(departure);
        flightBooking.setArrivalAirport(arrival);

        booking.setUser(user);
        booking.setPassengers(passengers);
        booking.setFlight(flightBooking);

        Booking savedBooking = bookingRepository.save(booking);

        emailService.sendBookingConfirmation(savedBooking);

        return  savedBooking;
    }
}
