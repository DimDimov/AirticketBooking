package com.example.airticketbooking.DTO;

import lombok.Getter;

import java.time.LocalDateTime;

@Getter
public class AirportDto {

    private String id;
    private String time;
    private String name;
    private String iataCode;
}
