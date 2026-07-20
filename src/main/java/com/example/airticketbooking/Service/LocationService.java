package com.example.airticketbooking.Service;


import com.example.airticketbooking.DTO.CountryDto;
import com.example.airticketbooking.DTO.LocationDto;
import com.example.airticketbooking.Repositories.AirportRepository;
import com.example.airticketbooking.Repositories.CountryRepository;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class LocationService {

    private final AirportRepository airportRepo;

    private final CountryRepository countryRepo;



    public LocationService(AirportRepository airportRepo, CountryRepository countryRepo) {
        this.airportRepo = airportRepo;
        this.countryRepo = countryRepo;
    }

    public List<LocationDto> search(String q) {
        List<LocationDto> result = new ArrayList<>();

        airportRepo.searchAirports(q).forEach(a ->
                {
                    LocationDto dto = new LocationDto();
                   dto.setAirport_name(a.getName());
                   dto.setType(a.getType());
                    dto.setCode(a.getIataCode());
                    result.add(dto);
                });

        countryRepo.findByNameContainingIgnoreCase(q)
                .forEach(c -> {
                    LocationDto dto = new LocationDto();
                   dto.setCountry(c.getName());
                   dto.setCountry_code(c.getCode());
                   result.add(dto);
                });

        return result;
    }

}
