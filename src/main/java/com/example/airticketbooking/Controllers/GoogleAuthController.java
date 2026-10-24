package com.example.airticketbooking.Controllers;


import com.example.airticketbooking.DTO.GoogleLoginRequest;
import com.example.airticketbooking.Service.GoogleAuthService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.Map;

@RestController
@RequestMapping("/api/auth")
public class GoogleAuthController {

    private final GoogleAuthService googleAuthService;

    public GoogleAuthController(GoogleAuthService googleAuthService) {
        this.googleAuthService = googleAuthService;
    }

    @PostMapping("/google")
    public ResponseEntity<?> googleLogin(
            @RequestBody GoogleLoginRequest request
            ) {

        String jwt = googleAuthService.loginWithGoogleAccessToken(request.accessToken());

        return  ResponseEntity.ok(Map.of("token", jwt));
    }
}
