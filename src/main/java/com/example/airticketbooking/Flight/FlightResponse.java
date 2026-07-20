package com.example.airticketbooking.Flight;

import lombok.Data;

import java.util.List;


@Data
public class FlightResponse {

    private List<FlightOption> outboundFlights;
    private List<FlightOption> returnFlights;
    private double priceProPerson;
    private double outboundTotalPrice;
    private double returnTotalPrice;
}
