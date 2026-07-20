package com.example.airticketbooking.Controllers;


import com.example.airticketbooking.Passenger.LuggagePassengerRequest;
import com.example.airticketbooking.Pricing.*;
import com.example.airticketbooking.Service.LuggagePricingService;
import com.example.airticketbooking.Service.MealPricingService;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.Map;

@RestController
@RequestMapping("/api/pricing")
public class MealAndLuggagePricingController {

  private final  MealPricingService mealPricingService;

  private final LuggagePricingService luggagePricingService;


    public MealAndLuggagePricingController(MealPricingService mealPricingService, LuggagePricingService luggagePricingService) {
        this.mealPricingService = mealPricingService;
        this.luggagePricingService = luggagePricingService;
    }

    @PostMapping("/meal")
    public MealPriceResponse calculateMealPrice (
            @RequestBody MealPriceRequest request) {
        return mealPricingService.calculateBookingMealPrice(request);
    }

    @GetMapping("/meal_prices")
    public Map<String, BigDecimal> getSeatPrices() {
        return mealPricingService.getMealPrices();
    }

    @PostMapping("luggage")
    public LuggagePriceResponse calculateLuggagePrice (
            @RequestBody LuggagePriceRequest request) {
        return luggagePricingService.calculateLuggagePrices(request);
    }

    @GetMapping("/luggage_prices")
    public Map<String, BigDecimal> getLuggagePrices() {
        return Map.of(
                "cabin", BigDecimal.valueOf(10),
                "checked", BigDecimal.valueOf(25)
        );
    }
}
