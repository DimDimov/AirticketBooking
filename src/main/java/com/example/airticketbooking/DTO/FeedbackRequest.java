package com.example.airticketbooking.DTO;


import lombok.Data;

@Data
public class FeedbackRequest {

    private String name;
    private String email;
    private String message;
}
