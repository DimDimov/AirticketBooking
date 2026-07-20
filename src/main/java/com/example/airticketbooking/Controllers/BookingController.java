package com.example.airticketbooking.Controllers;


import com.example.airticketbooking.DTO.BookingRequest;
import com.example.airticketbooking.Model.Booking;
import com.example.airticketbooking.Service.BookingService;
import jakarta.mail.MessagingException;
import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/bookings")
public class BookingController {

    private final BookingService bookingService;

    public BookingController(BookingService bookingService) {
        this.bookingService = bookingService;
    }

     @PostMapping
    public Booking createBooking(@RequestBody BookingRequest request, Authentication authentication) throws MessagingException {
        return bookingService.createBooking(request);
     }
}
