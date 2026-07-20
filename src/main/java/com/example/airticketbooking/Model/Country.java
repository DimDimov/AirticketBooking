package com.example.airticketbooking.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name = "countries")
public class Country {

    @Id
    private Long id;

    private String code;
    private String name;
}
