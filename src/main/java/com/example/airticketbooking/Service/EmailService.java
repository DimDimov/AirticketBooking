package com.example.airticketbooking.Service;

import com.example.airticketbooking.Model.Booking;
import com.example.airticketbooking.Model.Passenger;
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
        helper.setText("Ihr Flugticket ist beigefuegt");

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
