package com.example.airticketbooking.Pricing;


import com.example.airticketbooking.Passenger.LuggagePassengerRequest;
import com.example.airticketbooking.Passenger.MealPassengerRequest;
import lombok.Data;

import java.math.BigDecimal;
import java.util.List;

@Data
public class LuggagePriceRequest {

   /* private BigDecimal flightPrice;*/

    private List<LuggagePassengerRequest> passengers;
}
