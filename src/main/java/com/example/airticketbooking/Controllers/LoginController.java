package com.example.airticketbooking.Controllers;

import com.example.airticketbooking.DTO.AuthResponse;
import com.example.airticketbooking.DTO.LoginRequestDto;
import com.example.airticketbooking.DTO.VerifyCodeRequest;
import com.example.airticketbooking.Service.AuthService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@CrossOrigin(origins = "http://localhost:5173", allowCredentials = "true")
@RestController
@RequestMapping("/api/auth")
public class LoginController {

    private final AuthService authService;

    public LoginController(AuthService authService) {
        this.authService = authService;
    }

    @PostMapping("/login")
    public ResponseEntity<AuthResponse> login(@RequestBody LoginRequestDto request) {

        return ResponseEntity.ok(authService.login(request));
    }

    @PostMapping("/logout")
    public ResponseEntity<String> logout(
    )  {
        return ResponseEntity.ok("Logged out");
    }

    @PostMapping("/verify")
    public ResponseEntity<?> verifyCode(@RequestBody VerifyCodeRequest request) {

        String token = authService.verifyCode(
                request.getEmail(),
                request.getCode()
        );

        return  ResponseEntity.ok(
                Map.of("token", token)
        );
    }
}
