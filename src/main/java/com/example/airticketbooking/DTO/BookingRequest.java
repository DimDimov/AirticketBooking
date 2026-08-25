package com.example.airticketbooking.DTO;


import com.example.airticketbooking.Flight.FlightBookingRequest;
import com.example.airticketbooking.Passenger.PassengerRequest;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@Data
public class BookingRequest {

    private FlightBookingRequest flight;
    private Integer adults;
    private Integer children;
    private List<Integer> childAges;
    private BigDecimal totalPrice;
    private List<PassengerRequest> passengers;
    private String status;

    private String userEmail;
}
