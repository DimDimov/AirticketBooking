package com.example.airticketbooking.Pricing;

import com.example.airticketbooking.Passenger.MealPassengerResponse;
import lombok.Data;

import java.math.BigDecimal;
import java.util.List;

@Data
public class MealPriceResponse {

    private BigDecimal mealPrice;

    private List<MealPassengerResponse> passengers;

}
