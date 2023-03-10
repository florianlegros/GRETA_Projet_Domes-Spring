package com.example.application.controllers;

import com.example.application.beans.Article;
import com.example.application.beans.User;
import com.example.application.repository.ArticleRepository;
import com.example.application.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@Controller
@SessionAttributes({"login", "cart"})
public class LoginController {

    @Autowired
    HomeController homeController;
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

    @GetMapping("/login")
    public String goLogin() {
        return "login";
    }

    @PostMapping("/loginUser")
    public String login(@ModelAttribute("login") User login) {

        return userRepository.checkLogin(login.getUsername(), login.getPassword())
                ? "redirect:compte" : "redirect:login";
    }
}
