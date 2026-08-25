package com.example.airticketbooking.Flight;


import com.example.airticketbooking.Pricing.PassengerPriceDto;
import lombok.Data;

import java.util.List;

@Data
public class FlightOption {

    private double price;
    private String duration;
   private List<FlightSegment> flights;
   private List<PassengerPriceDto> passengerPrices;
}
