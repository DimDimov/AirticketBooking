package com.example.airticketbooking.Passenger.Meal;


import lombok.Data;

import java.util.List;

@Data
public class MealDirectionRequest {

    private List <MealSegmentRequest> segments;
}
