package com.example.airticketbooking.Repositories;

import com.example.airticketbooking.Model.Country;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CountryRepository extends JpaRepository<Country, Long> {

    List<Country>findByNameContainingIgnoreCase(String q);
}
