package com.example.airticketbooking.Flight;


import com.example.airticketbooking.DTO.AirportDto;
import lombok.Data;

@Data
public class FlightSegment {

    private String airline;
    private String airplane;
    private String flight_number;
    private AirportDto departure_airport;
    private AirportDto arrival_airport;
    private String airline_logo;
    private String return_date;
}
