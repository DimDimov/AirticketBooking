package com.example.airticketbooking.Flight;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.List;

@Data
public class SerpApiFlightResponse {
    @JsonProperty("best_flights")
    private List<FlightOption> outboundFlights;
    @JsonProperty("other_flights")
    private List<FlightOption> returnFlights;
}
