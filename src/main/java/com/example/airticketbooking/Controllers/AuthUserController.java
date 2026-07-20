package com.example.airticketbooking.Controllers;


import com.example.airticketbooking.DTO.AuthUserResponse;
import com.example.airticketbooking.Model.User;
import com.example.airticketbooking.Repositories.UserRepository;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin(origins = "http://localhost:5173", allowCredentials = "true")
@RestController
@RequestMapping("/api/auth/authUser")
public class AuthUserController {

    private final UserRepository userRepository;

    public AuthUserController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @GetMapping
    public ResponseEntity<AuthUserResponse> currentUser (Authentication auth) {
        if (auth == null) {
            return ResponseEntity.status(401).build();
        }

        User user = userRepository.findByEmail(auth.getName())
                .orElseThrow();

        return ResponseEntity.ok(
                new AuthUserResponse(
                        user.getEmail(),
                        user.getRole().name()
                )
        );
    }
}
