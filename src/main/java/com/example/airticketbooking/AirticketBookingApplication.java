package com.example.airticketbooking;

import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.io.Encoders;
import io.jsonwebtoken.security.Keys;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class AirticketBookingApplication {

    public static void main(String[] args) {
        SpringApplication.run(AirticketBookingApplication.class, args);
    }

}
