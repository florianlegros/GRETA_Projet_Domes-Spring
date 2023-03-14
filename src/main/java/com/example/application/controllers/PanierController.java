package com.example.application.controllers;

import com.example.application.beans.Adresse;
import com.example.application.beans.Article;
import com.example.application.beans.Commande;
import com.example.application.beans.User;
import com.example.application.repository.ArticleRepository;
import com.example.application.repository.CommandeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
@SessionAttributes({"login", "cart"})
public class PanierController {

    @Autowired
    CommandeRepository commandeRepository;

    @GetMapping("/panier")
    public String goHome() {
        return "panier";
    }

    @ModelAttribute("cart")
    public ArrayList<Article> getDefaultCart() {
        return new ArrayList<>();

    }

    @ModelAttribute("commande")
    public Commande getDefaultCommande() {
        return new Commande();

    }

    @ModelAttribute("adresses")
    public List<Adresse> getDefaultAdresses(@SessionAttribute(value = "adresses", required = false) List<Adresse> adresses) {

        return adresses == null ? new ArrayList<>() : adresses;

    }

    @RequestMapping(value = "/panier", params = "ProcessDelAction")
    public String ProcessDelAction(@RequestParam(value = "idArticle") String idArticle, @ModelAttribute("cart") ArrayList<Article> cart) {
        for (int i = 0; i < cart.size(); i++) {
            if (cart.get(i).getId() == Integer.parseInt(idArticle)) {
                cart.remove(i);
            }
        }

        return "redirect:panier";
    }

    @PostMapping("/panier")
    public String commander(@ModelAttribute("commande") Commande commande, @SessionAttribute("login") User login, @SessionAttribute("cart") ArrayList<Article> cart) {
        if (login.getUsername().isBlank() || login.getPassword().isBlank() || commande.getAdresse() == null || cart.size() < 1) {
            return "redirect:panier";
        } else {
            System.out.println(commande.getAdresse());
            commande.setUser(commande.getAdresse().getUser());
            for (Article article : cart) {
                commande.setArticle(article);
                commandeRepository.save(commande);
            }
            return "redirect:compte";
        }
    }
}
