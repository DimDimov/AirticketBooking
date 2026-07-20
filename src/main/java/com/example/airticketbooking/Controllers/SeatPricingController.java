package com.example.airticketbooking.Controllers;


import com.example.airticketbooking.Pricing.PriceResponse;
import com.example.airticketbooking.Pricing.SeatPriceRequest;
import com.example.airticketbooking.Pricing.SeatPriceResponse;
import com.example.airticketbooking.Service.SeatPricingService;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.Map;

@RestController
@RequestMapping("/api/pricing")
public class SeatPricingController {

    private final SeatPricingService seatPricingService;

    public SeatPricingController(SeatPricingService seatPricingService) {
        this.seatPricingService = seatPricingService;
    }

    @PostMapping("/seat")
    public SeatPriceResponse calculateSeatPrice (
            @RequestBody SeatPriceRequest request) {
        return seatPricingService.calculateBookingSeatPrice(request);
    }

    @GetMapping("/seat_prices")
    public Map<String, BigDecimal> getSeatPrices() {
        return seatPricingService.getSeatPrices();
    }

}
