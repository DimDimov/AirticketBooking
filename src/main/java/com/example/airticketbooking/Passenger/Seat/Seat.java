package com.example.airticketbooking.Passenger.Seat;

import jakarta.persistence.Embeddable;
import lombok.Data;

import java.math.BigDecimal;

@Data
@Embeddable
public class Seat {

    private String direction;
    private Integer flightIndex;
    private String seat;
    private String seatClass;
    private BigDecimal seatPrice;
}
