package com.example.airticketbooking.DTO;


import lombok.Data;

@Data
public class VerifyCodeRequest {

    private String email;
    private String code;
}
