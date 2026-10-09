package com.example.airticketbooking.Model;


import com.example.airticketbooking.Enum.BookingStatus;
import com.example.airticketbooking.Enum.PaymentStatus;
import jakarta.persistence.*;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Data
public class Booking {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
     private int adults;
     private int children;
    private BigDecimal totalPrice;
    @Enumerated(EnumType.STRING)
    private BookingStatus status;
    @Enumerated(EnumType.STRING)
    private PaymentStatus paymentStatus;


    @OneToMany(
            mappedBy = "booking",
            cascade = CascadeType.ALL
    )
    private List<Passenger> passengers = new ArrayList<>();

     private LocalDateTime bookingTime;

     @OneToMany(cascade = CascadeType.ALL)
     @JoinColumn(name = "booking_id")
     private List<FlightBooking> flights;

     @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

}
