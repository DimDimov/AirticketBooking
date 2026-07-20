package com.example.airticketbooking.Repositories;

import com.example.airticketbooking.Model.Airport;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import javax.swing.text.html.Option;
import java.util.List;
import java.util.Optional;

public interface AirportRepository extends JpaRepository<Airport, Long> {

    @Query("""
    select a from Airport a where lower(a.name)  like lower(concat(:q, '%'))
        order by a.name asc 
            """)
    List<Airport> searchAirports(@Param("q") String q);

  Optional< Airport > findByNameAndCity (String name, String city);
}


