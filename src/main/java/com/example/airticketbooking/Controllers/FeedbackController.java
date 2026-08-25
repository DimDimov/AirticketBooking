package com.example.airticketbooking.Controllers;

import com.example.airticketbooking.DTO.FeedbackRequest;
import com.example.airticketbooking.Service.EmailService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/feedback")
public class FeedbackController {

    private final EmailService emailService;

    public FeedbackController(EmailService emailService) {
        this.emailService = emailService;
    }

    @PostMapping
    public ResponseEntity<String> sendFeedback(
            @RequestBody FeedbackRequest request
            ) {
        emailService.sendFeedback(request.getName(), request.getEmail(), request.getMessage());

        return ResponseEntity.ok("Feedback wurde erfolgreich gesendet");
    }
}
