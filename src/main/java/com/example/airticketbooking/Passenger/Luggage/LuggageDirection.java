package com.example.airticketbooking.Passenger.Luggage;

import jakarta.persistence.Embeddable;
import lombok.Data;
import java.math.BigDecimal;

@Embeddable
@Data
public class LuggageDirection {

    private Boolean cabinLuggage;

    private Integer checkedLuggage;

    private BigDecimal luggagePrice;
}
