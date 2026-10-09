package com.example.airticketbooking.Passenger.Meal;


import lombok.Data;

@Data
public class MealRequest {

    private MealDirectionRequest outbound;

    private MealDirectionRequest inbound;
}
