package com.example.airticketbooking.Flight;


import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@Data
public class FlightPartRequest {
    private List<FlightSegment> flights;
}
