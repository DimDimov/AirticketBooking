package com.example.airticketbooking.Service;


import com.example.airticketbooking.Passenger.MealPassengerRequest;
import com.example.airticketbooking.Passenger.MealPassengerResponse;
import com.example.airticketbooking.Pricing.MealPriceRequest;
import com.example.airticketbooking.Pricing.MealPriceResponse;
import com.example.airticketbooking.Pricing.PriceResponse;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class MealPricingService {

    public BigDecimal calculate (String mealType) {

        return switch (mealType) {
            case "standard" -> BigDecimal.valueOf(5);
            case "vegetarian" -> BigDecimal.valueOf(8);
            case "vegan" -> BigDecimal.valueOf(10);
            case "kosher" -> BigDecimal.valueOf(15);
            case "halal" -> BigDecimal.valueOf(12);
            case "child" -> BigDecimal.valueOf(6);
            default -> BigDecimal.ZERO;
        };


    }
    public MealPriceResponse calculateBookingMealPrice (MealPriceRequest request) {

        BigDecimal totalMealPrice = BigDecimal.ZERO;

        List<MealPassengerResponse> passengers = new ArrayList<>();

        for(MealPassengerRequest passenger: request.getPassengers()) {
            if (passenger.getMeal() != null) {

                BigDecimal price = calculate(passenger.getMeal());

                MealPassengerResponse passengerResponse =
                        new MealPassengerResponse();

                passengerResponse.setMealPrice(price);
                passengers.add(passengerResponse);
                totalMealPrice = totalMealPrice.add(price);
            }
        }

        MealPriceResponse response = new MealPriceResponse();

        response.setMealPrice(totalMealPrice);
        response.setPassengers(passengers);

        return response;
    }

    public Map<String, BigDecimal> getMealPrices() {

        Map<String, BigDecimal> prices = new HashMap<>();

        prices.put("standard", calculate("standard"));
        prices.put("vegetarian", calculate("vegetarian"));
        prices.put("vegan", calculate("vegan"));
        prices.put("kosher", calculate("kosher"));
        prices.put("halal", calculate("halal"));
        prices.put("child", calculate("child"));

        return prices;
    }

}
