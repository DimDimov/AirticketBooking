package com.example.airticketbooking.Service;

import com.example.airticketbooking.DTO.AuthResponse;
import com.example.airticketbooking.DTO.LoginRequestDto;
import com.example.airticketbooking.DTO.RegisterRequest;
import com.example.airticketbooking.Enum.Role;
import com.example.airticketbooking.Model.User;
import com.example.airticketbooking.Repositories.UserRepository;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;

import java.time.LocalDateTime;
import java.util.concurrent.ThreadLocalRandom;

@Service
public class AuthService {

 private final UserRepository userRepository;
 private final PasswordEncoder passwordEncoder;
 private final AuthenticationManager authenticationManager;

    private final JwtService jwtService;
    private final UserDetailsService userDetailsService;
    private final EmailService emailService;

    public AuthService(UserRepository userRepository, PasswordEncoder passwordEncoder, AuthenticationManager authenticationManager, JwtService jwtService, UserDetailsService userDetailsService, EmailService emailService) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
        this.authenticationManager = authenticationManager;
        this.jwtService = jwtService;
        this.userDetailsService = userDetailsService;
        this.emailService = emailService;
    }

    public void register (RegisterRequest request) {
        User user = new User();
        user.setEmail(request.getEmail());
        user.setRole(Role.USER);
        user.setPassword(passwordEncoder.encode(request.getPassword()));
        userRepository.save(user);
    }

    public AuthResponse login (LoginRequestDto request) {

        Authentication auth =

        authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(
                        request.getEmail(),
                        request.getPassword()
                )
        );

      UserDetails userDetails = (UserDetails) auth.getPrincipal();

      User user = userRepository.findByEmail(request.getEmail()).orElseThrow();

      String code = String.valueOf(
              ThreadLocalRandom.current().nextInt(100000, 999999)
      );

      user.setVerificationCode(code);
      user.setCodeExpiresAt(LocalDateTime.now().plusMinutes(5));

      userRepository.save(user);

      emailService.sendVerificationCode(user.getEmail(), code);

      return new AuthResponse(null, true);

    }

    public String verifyCode(String email, String code) {

        User user = userRepository.findByEmail(email).orElseThrow();

        if (!user.getVerificationCode().equals(code)) {
            throw new RuntimeException("Invalid verification code");
        }

        if (user.getCodeExpiresAt().isBefore(LocalDateTime.now())) {
            throw new RuntimeException("Verification code expired");
        }

        UserDetails userDetails = userDetailsService.loadUserByUsername(email);

        user.setVerificationCode(null);
        user.setCodeExpiresAt(null);
        userRepository.save(user);

        return jwtService.generateToken(userDetails);
    }
}
