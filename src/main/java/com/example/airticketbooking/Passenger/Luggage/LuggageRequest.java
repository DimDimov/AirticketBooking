package com.example.airticketbooking.Passenger.Luggage;


import lombok.Data;

@Data
public class LuggageRequest {

    private LuggageDirectionRequest outbound;

    private LuggageDirectionRequest inbound;
}
