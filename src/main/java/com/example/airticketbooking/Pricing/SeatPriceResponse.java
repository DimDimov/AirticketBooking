package com.example.airticketbooking.Pricing;


import com.example.airticketbooking.Passenger.SeatPassengerResponse;
import lombok.Data;

import java.math.BigDecimal;
import java.util.List;

@Data
public class SeatPriceResponse {

    private BigDecimal seatPrice;

   /* private BigDecimal totalPrice;*/
    private List<SeatPassengerResponse> passengers;

}
