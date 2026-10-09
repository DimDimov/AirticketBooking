package com.example.airticketbooking.Model;


import com.example.airticketbooking.Passenger.Luggage.LuggageDirection;
import com.example.airticketbooking.Passenger.Meal.MealSegment;
import com.example.airticketbooking.Passenger.Seat.Seat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.Data;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

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
    private BigDecimal flightPrice;
    private BigDecimal totalMealPrice;

    @ElementCollection
    @CollectionTable(
            name = "passenger_seats",
            joinColumns = @JoinColumn(name = "passenger_id")
    )
    private List<Seat> seats = new ArrayList<>();

    @ElementCollection
    @CollectionTable(
            name = "passenger_meals",
            joinColumns = @JoinColumn(name = "passenger_id")
    )
    private List<MealSegment> meals = new ArrayList<>();

    @Embedded
    @AttributeOverrides({
            @AttributeOverride(
                    name = "cabinLuggage",
                    column = @Column(name = "outbound_cabin_luggage")
            ),
            @AttributeOverride(
                    name = "checkedLuggage",
                    column = @Column(name = "outbound_checked_luggage")
            ),
            @AttributeOverride(
                    name = "luggagePrice",
                    column = @Column(name = "outbound_luggage_price")
            )
    })
    private LuggageDirection outboundLuggage;

    @Embedded
    @AttributeOverrides({
            @AttributeOverride(
                    name = "cabinLuggage",
                    column = @Column(name = "inbound_cabin_luggage")
            ),
            @AttributeOverride(
                    name = "checkedLuggage",
                    column = @Column(name = "inbound_checked_luggage")
            ),
            @AttributeOverride(
                    name = "luggagePrice",
                    column = @Column(name = "inbound_luggage_price")
            )
    })
    private LuggageDirection inboundLuggage;


    @ManyToOne
    @JoinColumn(name = "booking_id")
    @JsonIgnore
    private Booking booking;
}
