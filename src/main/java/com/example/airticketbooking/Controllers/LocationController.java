package com.example.airticketbooking.Controllers;


import com.example.airticketbooking.DTO.LocationDto;
import com.example.airticketbooking.Service.LocationService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "http://localhost:5173")
public class LocationController {

    private final LocationService service;

    public LocationController(LocationService service) {
        this.service = service;
    }

    @GetMapping("/locations")
    public List<LocationDto> search(@RequestParam String s) {

        return service.search(s);
    }
}
