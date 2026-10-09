package com.example.airticketbooking.Passenger.Meal;

import jakarta.persistence.Embeddable;
import lombok.Data;
import java.math.BigDecimal;

@Embeddable
@Data
public class MealSegment {

    private String direction;
    private Integer flightIndex;
    private String meal;
    private BigDecimal mealPrice;
}
