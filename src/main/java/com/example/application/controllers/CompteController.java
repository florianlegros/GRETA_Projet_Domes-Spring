package com.example.application.controllers;

import com.example.application.beans.Adresse;
import com.example.application.beans.Article;
import com.example.application.beans.Commande;
import com.example.application.beans.User;
import com.example.application.repository.CommandeRepository;
import com.example.application.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

@Controller
@SessionAttributes({"login", "cart"})
public class CompteController {

    @Autowired
    UserRepository userRepository;
    @Autowired
    CommandeRepository commandeRepository;

    List<Commande> history = new ArrayList<>();
    List<Adresse> adresses;

    @ModelAttribute("login")
    public User getDefaultUser() {
        return new User();
    }

    @ModelAttribute("cart")
    public ArrayList<Article> getDefaultCart() {
        return new ArrayList<>();
    }

    @ModelAttribute("history")
    public List<Commande> getDefaultHistory(@SessionAttribute("login") User login) {

        userRepository.findByUsername(login.getUsername()).forEach(u -> history = u.getCommande());
        return history;
    }

    @ModelAttribute("adresses")
    public List<Adresse> getDefaultAdresses(@SessionAttribute("login") User login) {

        userRepository.findByUsername(login.getUsername()).forEach(u -> adresses = u.getAdresses());
        return adresses;
    }

    @GetMapping("/compte")
    public String goCompte(@SessionAttribute("login") User login) {

        return userRepository.checkLogin(login.getUsername(), login.getPassword()) ? "compte" : "redirect:login";
    }

    @RequestMapping(value = "/compte", params = "deconnect")
    public String deconnect(@SessionAttribute("login") User login) {
        login = new User();
        return "redirect:home";
    }
}
