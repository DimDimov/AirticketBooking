package com.example.airticketbooking.Pricing;

import lombok.Data;

@Data
public class PassengerPriceDto {

    private String type;
    private double price;

    public PassengerPriceDto(double price, String type) {
        this.price = price;
        this.type = type;
    }
}
