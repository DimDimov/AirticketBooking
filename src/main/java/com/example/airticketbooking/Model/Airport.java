package com.example.airticketbooking.Model;


import jakarta.persistence.*;
import lombok.*;


@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "airports")
public class Airport {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String city;

    private String type;

    @Column(name = "airport_name")
    private String name;

    @Column(unique = true, nullable = false)
    private String iataCode;

}
