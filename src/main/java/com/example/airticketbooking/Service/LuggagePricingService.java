package com.example.airticketbooking.Service;


import org.springframework.stereotype.Service;
import java.math.BigDecimal;

@Service
public class LuggagePricingService {

    public BigDecimal calculateLuggagePrice(
            Boolean cabinLuggage, Integer checkedLuggage
    ) {
        BigDecimal luggagePrice = BigDecimal.ZERO;

        if (Boolean.TRUE.equals(cabinLuggage)) {
            luggagePrice = luggagePrice.add(BigDecimal.valueOf(10));
        }

        luggagePrice = luggagePrice.add(
                BigDecimal.valueOf(25)
                        .multiply(BigDecimal.valueOf(checkedLuggage == null ? 0 : checkedLuggage))
        );

        return luggagePrice;
    }
}
