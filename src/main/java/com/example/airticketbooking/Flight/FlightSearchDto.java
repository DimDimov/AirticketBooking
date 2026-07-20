package com.example.airticketbooking.Flight;


import com.example.airticketbooking.Passenger.PassengerSummary;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class FlightSearchDto {

    private FlightRequest outbound;
    private FlightRequest inbound;
    private PassengerSummary passengers;
    private String cabinClass;
}
