package com.example.airticketbooking.Controllers;


import com.example.airticketbooking.Model.User;
import com.example.airticketbooking.Service.UserService;
import jakarta.mail.MessagingException;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/admin/users")
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping
    public List<User> getAllUsers() {

        return userService.getAllUsers();
    }

    @PutMapping("/{id}/block")
    public void blockUser(@PathVariable Long id) throws MessagingException {
        userService.blockUser(id);
    }

    @PutMapping("/{id}/unblock")
    public void unblockUser(@PathVariable Long id) throws MessagingException {
        userService.unblockUser(id);
    }
}
