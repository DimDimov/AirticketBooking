package com.example.airticketbooking.Controllers;


import com.example.airticketbooking.DTO.BookingStatusDto;
import com.example.airticketbooking.Enum.BookingStatus;
import com.example.airticketbooking.Model.Booking;
import com.example.airticketbooking.Repositories.BookingRepository;
import com.example.airticketbooking.Service.BookingService;
import com.example.airticketbooking.pdf.PdfGenerator;
import jakarta.mail.MessagingException;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/api/admin/bookings")
public class AdminBookingController {


    private final BookingService bookingService;
    private final PdfGenerator pdfGenerator;

    public AdminBookingController(BookingService bookingService, PdfGenerator pdfGenerator) {
        this.bookingService = bookingService;
        this.pdfGenerator = pdfGenerator;
    }

    @GetMapping("/all_bookings")
    public List<Booking> getAllBookings() {
        return bookingService.getAllBookings();
    }

    @GetMapping("booking_by_id/{id}")
    public Booking getBooking (@PathVariable Long id) {
        return bookingService.getBookingById(id);
    }

    @PutMapping("/{id}/status")
    public ResponseEntity<?> updateStatus(
            @PathVariable Long id,
            @RequestBody BookingStatusDto dto) {
        bookingService.updateStatus(id, dto.getStatus());

        return  ResponseEntity.ok().build();
    }

    @GetMapping("/{id}/ticket")
    public ResponseEntity<byte[]> viewTicket (@PathVariable Long id) throws IOException {

        byte[] pdf = bookingService.generateTicket(id);

        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_PDF_VALUE)
                .header(HttpHeaders.CONTENT_DISPOSITION, "inline; filename=ticket.pdf")
                .body(pdf);
    }

    @PostMapping("{id}/resend")
    public ResponseEntity<?> resendEmail (@PathVariable Long id) throws MessagingException, IOException {
        bookingService.resendEmail(id);
        return ResponseEntity.ok().build();
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
