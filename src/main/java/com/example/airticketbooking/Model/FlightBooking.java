package com.example.airticketbooking.Model;


import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDateTime;

@Entity
@Data
public class FlightBooking {

    @Id@GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String airline;

    private String airlineLogo;

    private String airplane;

    private String flightNumber;

    private String tripType;

    private String departureAirportName;
    private String departureAirportIata;
    private String arrivalAirportName;
    private String arrivalAirportIata;

    @ManyToOne
    @JoinColumn(name = "departure_airport_id")
    private Airport departureAirport;

    @ManyToOne
    @JoinColumn(name = "arrival_airport_id")
    private  Airport arrivalAirport;

    private LocalDateTime departureTime;

    private LocalDateTime arrivalTime;
}
