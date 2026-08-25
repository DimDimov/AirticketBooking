package com.example.airticketbooking.Model;


import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.Data;

import java.math.BigDecimal;

@Entity
@Data
public class Passenger {

    @Id
    @GeneratedValue
    private Long id;
    private String title;
    private String firstName;
    private String lastName;
    private String type;
    private Integer childAge;
    private String gender;
    private String seat;
    private String seatClass;
    private BigDecimal seatPrice;
    private BigDecimal flightPrice;
    private String meal;
    private BigDecimal mealPrice;
    private BigDecimal luggagePrice;
    private boolean cabinLuggage;
    private int checkedLuggage;

    @ManyToOne
    @JoinColumn(name = "booking_id")
    @JsonIgnore
    private Booking booking;
}
