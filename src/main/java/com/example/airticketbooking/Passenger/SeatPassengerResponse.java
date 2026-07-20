package com.example.airticketbooking.Passenger;


import lombok.Data;

import java.math.BigDecimal;

@Data
public class SeatPassengerResponse {

    private String seatClass;
    private BigDecimal seatPrice;
}
