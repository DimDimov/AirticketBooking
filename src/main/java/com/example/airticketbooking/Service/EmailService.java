package com.example.airticketbooking.Service;

import com.example.airticketbooking.Model.Booking;
import com.example.airticketbooking.Model.FlightBooking;
import com.example.airticketbooking.Model.Passenger;
import com.example.airticketbooking.Passenger.Meal.MealSegment;
import com.example.airticketbooking.Passenger.Seat.Seat;
import com.example.airticketbooking.pdf.PdfGenerator;
import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.ClassPathResource;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.mail.javamail.JavaMailSender;

import java.io.IOException;
import java.time.format.DateTimeFormatter;

@Service
public class EmailService {

    private final JavaMailSender mailSender;
    private final PdfGenerator pdfGenerator;

    public EmailService(JavaMailSender mailSender, PdfGenerator pdfGenerator) {
        this.mailSender = mailSender;
        this.pdfGenerator = pdfGenerator;
    }

    public void sendBookingConfirmation (Booking booking) throws MessagingException {

        MimeMessage message = mailSender.createMimeMessage();

        MimeMessageHelper helper = new MimeMessageHelper(message, true);

        helper.setTo(booking.getUser().getEmail());
        helper.setSubject("Ihre Flugbuchungsbestätigung");

        StringBuilder emailInfo = new StringBuilder();

        DateTimeFormatter  formatter = DateTimeFormatter.ofPattern("dd.MM.yyyy HH:mm");


        for (FlightBooking flight : booking.getFlights()) {

            if ("outbound".equals(flight.getDirection())) {

                emailInfo.append("<h3>Hinflug - ")
                        .append(flight.getFlightNumber())
                        .append("</h3>");

                emailInfo.append("<p>");

                emailInfo.append("<b>Fluggesellschaft: </b>")
                        .append(flight.getAirline())
                        .append("<br>");

                emailInfo.append("<b>Flugnummer: </b>")
                        .append(flight.getFlightNumber())
                        .append("<br>");

                emailInfo.append("<b>Abflug: </b>")
                        .append(flight.getDepartureAirportName())
                        .append("<br>");

                emailInfo.append("<b>Abfahrtszeit: </b>")
                        .append(flight.getDepartureTime().format(formatter))
                        .append("<br>");

                emailInfo.append("<b>Ankunft: </b>")
                        .append(flight.getArrivalAirportName())
                        .append("<br>");

                emailInfo.append("<b>Ankunftszeit: </b>")
                        .append(flight.getArrivalTime().format(formatter))
                        .append("<br>");

                emailInfo.append("<p>");

                for (Passenger passenger : booking.getPassengers()) {

                    emailInfo.append("<b>Passagier: </b>")
                            .append(passenger.getFirstName())
                            .append(" ")
                            .append(passenger.getLastName())
                            .append("<br>");

                    for (Seat seat : passenger.getSeats()) {

                        if (flight.getDirection().equals(seat.getDirection())
                                && flight.getFlightIndex().equals(seat.getFlightIndex())) {
                            emailInfo.append("<b>Sitzplatz: </b>")
                                    .append(seat.getSeat())
                                    .append("<br>");

                            emailInfo.append("<b>Sitzklasse: </b>")
                                    .append(seat.getSeatClass())
                                    .append("<br>");
                        }
                    }

                        for (MealSegment meal : passenger.getMeals()) {

                            if (flight.getDirection().equals(meal.getDirection())
                                    && flight.getFlightIndex().equals(meal.getFlightIndex())) {
                                emailInfo.append("<b>Malzeit: </b>")
                                        .append(meal.getMeal())
                                        .append("<br><br>");
                            }
                        }
                    }
                 } else if ("inbound".equals(flight.getDirection())) {

                emailInfo.append("<h3>Rückflug - ")
                             .append(flight.getFlightNumber())
                             .append("</h3>");

                emailInfo.append("<p>");

                emailInfo.append("<b>Fluggesellschaft: </b>")
                            .append(flight.getAirline())
                            .append("<br>");

                emailInfo.append("<b>Flugnummer: </b>")
                            .append(flight.getFlightNumber())
                            .append("<br>");

                emailInfo.append("<b>Abflug: </b>")
                            .append(flight.getDepartureAirportName())
                            .append("<br>");

                emailInfo.append("<b>Abfahrtszeit: </b>")
                            .append(flight.getDepartureTime().format(formatter))
                            .append("<br>");

                emailInfo.append("<b>Ankunft: </b>")
                            .append(flight.getArrivalAirportName())
                            .append("<br>");

                emailInfo.append("<b>Ankunftszeit: </b>")
                            .append(flight.getArrivalTime().format(formatter))
                            .append("<br>");

                emailInfo.append("<p>");

                     for (Passenger passenger : booking.getPassengers()) {

                         emailInfo.append("<b>Passagier: </b>")
                                 .append(passenger.getFirstName())
                                 .append(" ")
                                 .append(passenger.getLastName())
                                 .append("<br>");

                         for (Seat seat : passenger.getSeats()) {

                             if (flight.getDirection().equals(seat.getDirection())
                                     && flight.getFlightIndex().equals(seat.getFlightIndex())) {
                                 emailInfo.append("<b>Sitzplatz: </b>")
                                         .append(seat.getSeat())
                                         .append("<br>");

                                 emailInfo.append("<b>Sitzklasse: </b>")
                                         .append(seat.getSeatClass())
                                         .append("<br>");
                             }
                         }
                             for (MealSegment meal: passenger.getMeals()) {

                                 if (flight.getDirection().equals(meal.getDirection())
                                         && flight.getFlightIndex().equals(meal.getFlightIndex())) {
                                     emailInfo.append("<b>Malzeit: </b>")
                                             .append(meal.getMeal())
                                             .append("<br><br>");

                                 }
                     }
                 }
            }
        }

        String text = """
                <html>
                <body>
             
                  <img src="cid:logo" width="50">
                
                <h2>Guten Tag,</h2>
             
                       <p> Ihre Buchung wurde bestätigt.</p>
                    
                        %s
                        
                        <p>Vielen Dank für die Wähl von  dem Air Ticket Booking.</p>
                     
                <p>Wir wünschen Ihnen eine angenehme Reise!</p>
             
                </body>
                </html>
""".formatted(
                emailInfo.toString());

        helper.setText(text, true);
        helper.addInline(
                "logo",
                new ClassPathResource("static/images/logo.png")
        );
        mailSender.send(message);
    }

    public void sendAccountBlockedEmail(String email) throws MessagingException {

        MimeMessage message = mailSender.createMimeMessage();

        MimeMessageHelper helper = new MimeMessageHelper(message, true);

        helper.setTo(email);

        helper.setSubject("Ihr Konto wurde gesperrt");

        String text = """
                <html>
                <body>
                <p>Ihr Konto wurde von einem Administrator vorübergehend gesperrt.</p>
                </body>
                </html>
                """;

        helper.setText(text);
        mailSender.send(message);
    }

    public void sendTicketEmail( Booking booking) throws IOException, MessagingException {

        byte[] pdf = pdfGenerator.generate(booking);

        MimeMessage message = mailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message,true);

        helper.setTo(booking.getUser().getEmail());
        helper.setSubject("Ihr Flugticket");
        helper.setText("Ihr Flugticket ist beigefügt");

        helper.addAttachment("Flugkarte.pdf", new ByteArrayResource(pdf));
        mailSender.send(message);
    }

    public void sendVerificationCode (String email, String code) {

        SimpleMailMessage message = new SimpleMailMessage();

        message.setTo(email);

        message.setSubject("Ihr Anmeldebestätigungscode");

        message.setText("Ihr Bestaetigungscode ist: "
                + code
    + "\n\nDieser Code läuft in 5 Minuten ab.");

        mailSender.send(message);
    }

    public void sendFeedback(String name, String email, String message) {

         SimpleMailMessage mail = new SimpleMailMessage();

         mail.setTo("flughafen536@gmail.com");

         mail.setSubject("Das Feedback von " + name + " mit der E-Mail " + email);

         mail.setText(message);

      mailSender.send(mail);

    }
}
