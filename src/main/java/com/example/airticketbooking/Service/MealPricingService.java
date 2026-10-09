package com.example.airticketbooking.Service;

import org.springframework.stereotype.Service;
import java.math.BigDecimal;

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
}
