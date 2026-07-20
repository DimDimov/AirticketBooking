package com.example.airticketbooking.Service;

import com.example.airticketbooking.Model.Booking;
import com.example.airticketbooking.Model.Passenger;
import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;
import org.springframework.core.io.ClassPathResource;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.mail.javamail.JavaMailSender;

import java.time.format.DateTimeFormatter;

@Service
public class EmailService {

    private final JavaMailSender mailSender;

    public EmailService(JavaMailSender mailSender) {
        this.mailSender = mailSender;
    }

    public void sendBookingConfirmation (Booking booking) throws MessagingException {

        MimeMessage message = mailSender.createMimeMessage();

        MimeMessageHelper helper = new MimeMessageHelper(message, true);

        helper.setTo(booking.getUser().getEmail());
        helper.setSubject("Ihre Flugbuchungsbestätigung");

        StringBuilder passengerInfo = new StringBuilder();

        for (Passenger passenger : booking.getPassengers()) {
            passengerInfo.append("<b>Passagier: </b>")
                    .append(passenger.getFirstName())
                    .append(" ")
                    .append(passenger.getLastName())
                    .append("<br>");

            passengerInfo.append("<b>Sitzplatz: </b>")
                    .append(passenger.getSeat())
                    .append("<br>");

            passengerInfo.append("<b>Sitzklasse: </b>")
                    .append(passenger.getSeatClass())
                    .append("<br>");

            passengerInfo.append("<b>Malzeit: </b>")
                    .append(passenger.getMeal())
                    .append("<br><br>");
        }

        DateTimeFormatter  formatter = DateTimeFormatter.ofPattern("dd.MM.yyyy HH:mm");

        String text = """ 
                <html>
                <body>
                  <img src="cid:logo" width="50">
                <h2>Guten Tag,</h2>
                       <p> Ihre Buchung wurde bestätigt.</p>
                       <p>
                        <b>Fluggesellschaft: </b> %s<br>
                        <b>Flugnummer: </b> %s<br>

                        <b>Abflug: </b> %s<br>
                        <b>Abfahrtszeit: </b> %s<br>
                        <b>Ankunft: </b> %s <br>
                        <b>Ankunftszeit: </b> %s <br>
                        </p>
                        %s
                        <p>Vielen Dank für die Wähl von  dem Air Ticket Booking.</p>
                <p>Wir wünschen Ihnen eine angenehme Reise!</p>
                </body>
                </html>
 """.formatted(
                booking.getFlight().getAirline(),
                booking.getFlight().getFlightNumber(),
                booking.getFlight().getDepartureAirportName(),
                booking.getFlight().getDepartureTime().format(formatter),
                booking.getFlight().getArrivalAirportName(),
                booking.getFlight().getArrivalTime().format(formatter),
                passengerInfo.toString()
        );
        helper.setText(text, true);
        helper.addInline(
                "logo",
                new ClassPathResource("static/images/logo.png")
        );
        mailSender.send(message);
    }
}
