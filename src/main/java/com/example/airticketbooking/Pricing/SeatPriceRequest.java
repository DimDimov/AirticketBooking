package com.example.airticketbooking.Pricing;


import com.example.airticketbooking.Passenger.PassengerRequest;
import com.example.airticketbooking.Passenger.SeatPassengerRequest;
import lombok.Data;

import java.math.BigDecimal;
import java.util.List;

@Data
public class SeatPriceRequest {

   /* private BigDecimal flightPrice;*/

    private List<SeatPassengerRequest> passengers;
}
