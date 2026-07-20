package com.example.airticketbooking.Pricing;


import com.example.airticketbooking.Passenger.LuggagePassengerResponse;
import lombok.Data;

import java.math.BigDecimal;
import java.util.List;

@Data
public class LuggagePriceResponse {

    private BigDecimal luggagePrice;

    private List<LuggagePassengerResponse> passengers;

}
