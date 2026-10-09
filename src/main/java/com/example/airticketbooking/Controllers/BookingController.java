package com.example.airticketbooking.Controllers;


import com.example.airticketbooking.DTO.BookingRequest;
import com.example.airticketbooking.Model.Booking;
import com.example.airticketbooking.Service.BookingService;
import com.example.airticketbooking.pdf.PdfGenerator;
import jakarta.mail.MessagingException;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;
import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/api/bookings")
public class BookingController {

    private final BookingService bookingService;
    private final PdfGenerator pdfGenerator;

    public BookingController(BookingService bookingService, PdfGenerator pdfGenerator) {
        this.bookingService = bookingService;
        this.pdfGenerator = pdfGenerator;
    }

    @PostMapping
    public Booking createBooking(@RequestBody BookingRequest request) throws MessagingException {
        return bookingService.createBooking(request);
    }

    @GetMapping("/my-bookings")
    public List<Booking> getBookingsByUser(Authentication authentication) {

        UserDetails userDetails = (UserDetails) authentication.getPrincipal();

        return bookingService.getBookingsByEmail(userDetails.getUsername());
    }

    @GetMapping("/booking_by_id/{id}")
    public Booking getBooking(@PathVariable Long id) {

        return bookingService.getBookingById(id);
    }

    @GetMapping("/{id}/ticket")
    public ResponseEntity<byte[]> viewTicket (@PathVariable Long id) throws IOException {

        byte[] pdf = bookingService.generateTicket(id);

        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_PDF_VALUE)
                .header(HttpHeaders.CONTENT_DISPOSITION, "inline; filename=ticket.pdf")
                .body(pdf);
    }

    @GetMapping("/{id}/ticket/download")
    public ResponseEntity<byte[]> downloadTicket(@PathVariable Long id) throws IOException {

        Booking booking = bookingService.getBookingById(id);

        byte[] pdf = pdfGenerator.generate(booking);

        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_DISPOSITION,
                        "attachment; filename=Flugkarte-" + id + " .pdf")
                .contentType(MediaType.APPLICATION_PDF)
                .body(pdf);
    }
}