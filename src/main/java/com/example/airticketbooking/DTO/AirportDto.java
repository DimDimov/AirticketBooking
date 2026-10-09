package com.example.airticketbooking.DTO;

import lombok.Data;
import lombok.Getter;


@Data
@Getter
public class AirportDto {

    private String id;
    private String time;
    private String name;
    private String iataCode;

}
