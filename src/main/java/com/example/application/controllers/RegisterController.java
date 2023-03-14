package com.example.application.controllers;

import com.example.application.beans.Article;
import com.example.application.beans.User;
import com.example.application.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.ArrayList;

@Controller
@SessionAttributes({"login", "cart"})
public class RegisterController {

    @Autowired
    UserRepository userRepository;

    @ModelAttribute("cart")
    public ArrayList<Article> getDefaultCart() {
        return new ArrayList<>();
    }

    @ModelAttribute("login")
    public User getDefaultUser() {

        return new User();
    }
    @ModelAttribute("newuser")
    public User getDefaultNewUser() {
        return new User();
    }

    @GetMapping("/register")
    public String goLogin() {
        return "register";
    }

    @PostMapping("/registerUser")
    public String register(@ModelAttribute("newuser") User newuser) {
        try {
            userRepository.save(newuser);
            return "login";
        } catch (Exception e) {
            return "register";
        }
    }
}
