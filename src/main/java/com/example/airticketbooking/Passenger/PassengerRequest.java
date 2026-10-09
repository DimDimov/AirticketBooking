package com.example.airticketbooking.Passenger;

import com.example.airticketbooking.Passenger.Luggage.LuggageRequest;
import com.example.airticketbooking.Passenger.Meal.MealRequest;
import com.example.airticketbooking.Passenger.Seat.SeatRequest;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class PassengerRequest {

    private String title;

    private String firstName;

    private String lastName;

    private String type;

    private List<SeatRequest> seats;

    private Integer childAge;

    private String gender;

    private String seatClass;

    private BigDecimal seatPrice;

    private BigDecimal flightPrice;

    private MealRequest meals;

    private BigDecimal mealPrice;

    private BigDecimal luggagePrice;

    private LuggageRequest luggage;
}
