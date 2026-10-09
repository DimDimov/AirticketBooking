package com.example.airticketbooking.Service;


import org.springframework.stereotype.Service;

import java.math.BigDecimal;

@Service
public class SeatPricingService {

    public BigDecimal calculate(String seatType) {

        return switch (seatType) {
            case "Economy" -> BigDecimal.valueOf(15);
            case "Business" -> BigDecimal.valueOf(27);
            case "Economy Light" -> BigDecimal.valueOf(9);
            default -> BigDecimal.ZERO;
        };
    }
}
