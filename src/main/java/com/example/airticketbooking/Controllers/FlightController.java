package com.example.airticketbooking.Controllers;


import com.example.airticketbooking.Flight.FlightResponse;
import com.example.airticketbooking.Flight.FlightSearchDto;
import com.example.airticketbooking.Service.FlightService;
import org.springframework.web.bind.annotation.*;



@CrossOrigin(origins = "http://localhost:5173")
@RestController
@RequestMapping("/api/flights")
public class FlightController {

    private final FlightService service;

    public FlightController(FlightService service) {
        this.service = service;
    }


    @PostMapping
    public FlightResponse getFlights(@RequestBody FlightSearchDto request) {

        return service.searchFlights(
              request
        );
    }
}
