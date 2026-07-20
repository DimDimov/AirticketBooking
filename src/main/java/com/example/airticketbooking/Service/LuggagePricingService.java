package com.example.airticketbooking.Service;


import com.example.airticketbooking.Passenger.LuggagePassengerRequest;
import com.example.airticketbooking.Passenger.LuggagePassengerResponse;
import com.example.airticketbooking.Pricing.LuggagePriceRequest;
import com.example.airticketbooking.Pricing.LuggagePriceResponse;
import com.example.airticketbooking.Pricing.PriceResponse;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Service
public class LuggagePricingService {

    public LuggagePriceResponse calculateLuggagePrices(LuggagePriceRequest request) {

        BigDecimal totalLuggagePrice = BigDecimal.ZERO;

        List<LuggagePassengerResponse> passengers = new ArrayList<>();

        for (LuggagePassengerRequest passenger : request.getPassengers()) {

            BigDecimal luggagePrice = BigDecimal.ZERO;

            if (passenger.isCabinLuggage()) {
                luggagePrice = luggagePrice.add(BigDecimal.valueOf(10));
            }

            Integer checkedLuggage = passenger.getCheckedLuggage();

            luggagePrice = luggagePrice.add(
                    BigDecimal.valueOf(25)
                            .multiply(BigDecimal.valueOf(checkedLuggage == null ? 0 : checkedLuggage))
            );

            LuggagePassengerResponse passengerResponse =
                    new LuggagePassengerResponse();

            passengerResponse.setLuggagePrice(luggagePrice);
            passengers.add(passengerResponse);
            totalLuggagePrice = totalLuggagePrice.add(luggagePrice);
        }

        LuggagePriceResponse response = new LuggagePriceResponse();
        response.setLuggagePrice(totalLuggagePrice);
        response.setPassengers(passengers);

        return response;
    }
}
