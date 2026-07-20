package com.example.airticketbooking.DTO;


import lombok.Data;

@Data
public class AuthUserResponse {

    private String email;
    private String role;

    public AuthUserResponse(String email, String role) {

        this.email = email;
        this.role = role;
    }
}
