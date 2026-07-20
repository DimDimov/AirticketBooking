package com.example.airticketbooking.Flight;


import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDate;

@Data
public class FlightBookingRequest {

    private FlightPartRequest outbound;
    private FlightPartRequest inbound;

    private AirportRequest departureAirport;
    private AirportRequest arrivalAirport;

}
