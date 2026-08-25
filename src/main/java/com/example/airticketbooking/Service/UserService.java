package com.example.airticketbooking.Service;


import com.example.airticketbooking.Model.User;
import com.example.airticketbooking.Repositories.UserRepository;
import jakarta.mail.MessagingException;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    private final UserRepository userRepository;
    private final EmailService emailService;

    public UserService(UserRepository userRepository, EmailService emailService) {
        this.userRepository = userRepository;
        this.emailService = emailService;
    }

    public List<User> getAllUsers() {

        return userRepository.findAll();
    }


    public void blockUser(Long id) throws MessagingException {
        User user = userRepository.findById(id)
                .orElseThrow();

        user.setEnabled(false);

        userRepository.save(user);
        emailService.sendAccountBlockedEmail(user.getEmail());
    }

    public void unblockUser(Long id) throws MessagingException {
        User user = userRepository.findById(id)
                .orElseThrow();

        user.setEnabled(true);

        userRepository.save(user);
       /* emailService.sendAccountBlockedEmail(user.getEmail());*/
    }

}
