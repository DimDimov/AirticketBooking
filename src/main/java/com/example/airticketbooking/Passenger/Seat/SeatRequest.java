package com.example.airticketbooking.Passenger.Seat;


import lombok.Data;

@Data
public class SeatRequest {

    private String direction;
    private Integer flightIndex;
    private String seat;
    private String seatClass;
}
