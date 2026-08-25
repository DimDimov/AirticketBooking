package com.example.airticketbooking.DTO;


import lombok.Data;

@Data
public class AuthResponse {
    private String token;

    private boolean requires2FA;

    public AuthResponse(String token, boolean requires2FA) {
        this.token = token;
        this.requires2FA = requires2FA;
    }
}
