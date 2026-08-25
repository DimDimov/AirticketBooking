package com.example.airticketbooking.Model;

import com.example.airticketbooking.Enum.Role;
import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDateTime;

@Entity
@Data
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String email;

    private String verificationCode;

    private LocalDateTime codeExpiresAt;

    @Column(nullable = false)
    private String password;

    @Enumerated(EnumType.STRING)
    private Role role;
@Column(nullable = false)
    private boolean enabled = true;
}
