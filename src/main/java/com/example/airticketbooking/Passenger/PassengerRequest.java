package com.example.airticketbooking.Passenger;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class PassengerRequest {

    private String title;

    private String firstName;

    private String lastName;

    private String type;

    private String seat;

    private Integer childAge;

    private String gender;

    private String seatClass;

    private BigDecimal seatPrice;

    private String meal;

    private BigDecimal mealPrice;

    private BigDecimal luggagePrice;

    private boolean cabinLuggage;

    private Integer checkedLuggage;

}
