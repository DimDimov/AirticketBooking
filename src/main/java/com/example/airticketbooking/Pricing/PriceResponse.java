package com.example.airticketbooking.Pricing;


import com.example.airticketbooking.Passenger.PassengerRequest;
import lombok.Data;

import java.math.BigDecimal;
import java.util.List;

@Data
public class PriceResponse {

    private BigDecimal seatPrice;

    private BigDecimal mealPrice;

    private BigDecimal luggagePrice;

    private BigDecimal totalPrice;

    private List<PassengerRequest> passengers;
}
