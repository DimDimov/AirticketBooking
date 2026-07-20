package com.example.airticketbooking.Service;

import com.example.airticketbooking.Passenger.PassengerRequest;
import com.example.airticketbooking.Passenger.SeatPassengerRequest;
import com.example.airticketbooking.Passenger.SeatPassengerResponse;
import com.example.airticketbooking.Pricing.PriceResponse;
import com.example.airticketbooking.Pricing.SeatPriceRequest;
import com.example.airticketbooking.Pricing.SeatPriceResponse;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    public SeatPriceResponse calculateBookingSeatPrice (SeatPriceRequest request) {

        BigDecimal totalSeatPrice = BigDecimal.ZERO;

        List<SeatPassengerResponse> passengers = new ArrayList<>();

        for(SeatPassengerRequest passenger: request.getPassengers()) {

            if (passenger.getSeatClass() != null) {

                BigDecimal price = calculate(passenger.getSeatClass());

                SeatPassengerResponse passengerResponse =
                        new SeatPassengerResponse();

                passengerResponse.setSeatClass(passengerResponse.getSeatClass());
                passengerResponse.setSeatPrice(price);
                passengers.add(passengerResponse);
                totalSeatPrice = totalSeatPrice.add(price);
            }
        }

       /* BigDecimal totalPrice = request.getFlightPrice().add(totalSeatPrice);*/

        SeatPriceResponse response = new SeatPriceResponse();


        response.setSeatPrice(totalSeatPrice);
        response.setPassengers(passengers);

        return response;
    }

    public Map<String, BigDecimal> getSeatPrices() {

        Map<String, BigDecimal> prices = new HashMap<>();

        prices.put("Economy", calculate("Economy"));
        prices.put("Business", calculate("Business"));
        prices.put("Economy Light", calculate("Economy Light"));

        return prices;
    }

}
