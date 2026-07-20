package com.example.airticketbooking.Flight;


import lombok.Data;

import java.util.List;

@Data
public class FlightOption {

    private double price;
    private String duration;
   private List<FlightSegment> flights;
}
