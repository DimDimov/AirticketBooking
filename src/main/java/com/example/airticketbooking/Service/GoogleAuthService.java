package com.example.airticketbooking.Service;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestClient;

@Service
public class GoogleAuthService {

    private final RestClient restClient;
    private final JwtService jwtService;
    private final UserDetailsService userDetailsService;

    public GoogleAuthService( RestClient.Builder builder, JwtService jwtService1, UserDetailsService userDetailsService) {

        this.restClient = builder.build();
        this.jwtService = jwtService1;
        this.userDetailsService = userDetailsService;
    }

    public String loginWithGoogleAccessToken(String accessToken) {


        GoogleUserInfo user = restClient.get()
                .uri("https://openidconnect.googleapis.com/v1/userinfo")
                .header("Authorization", "Bearer " + accessToken)
                .retrieve()
                .body(GoogleUserInfo.class);

        if (user == null || user.sub() == null || user.email() == null) {
            throw  new IllegalArgumentException("Could not retrieve Google user information");
        }

        UserDetails userDetails = userDetailsService.loadUserByUsername(user.email());

        return jwtService.generateToken(userDetails);
    }

    public record GoogleUserInfo(
            String sub,
            String email,
            String name,
            Boolean email_verified
    ){}
}
