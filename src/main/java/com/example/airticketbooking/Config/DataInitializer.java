package com.example.airticketbooking.Config;

import com.example.airticketbooking.Enum.Role;
import com.example.airticketbooking.Model.User;
import com.example.airticketbooking.Repositories.UserRepository;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
public class DataInitializer {

    @Value("${ADMIN_EMAIL}")
    private String adminEmail;

    @Value("${ADMIN_PASSWORD}")
    private String adminPassword;

    @Bean
    CommandLineRunner initAdmin(
            UserRepository userRepository,
            PasswordEncoder passwordEncoder
    ) {

        return  args -> {

           /* String adminEmail =  "flughafen536@gmail.com";*/

            if (userRepository.findByEmail(adminEmail).isEmpty()) {

                User admin = new User();

                admin.setEmail(adminEmail);
                admin.setPassword(passwordEncoder.encode(adminPassword));
                admin.setRole(Role.ADMIN);

                userRepository.save(admin);
            }
        };
    }
}
