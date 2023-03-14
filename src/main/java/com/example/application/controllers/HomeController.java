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
public class HomeController {

    ArrayList<Article> catalogue = new ArrayList<>();

    @Autowired
    ArticleRepository articleRepository;
    @Autowired
    UserRepository userRepository;

    @GetMapping("/home")
    public String goHome() {
        return "index";
    }

    @ModelAttribute("login")
    public User getDefaultUser() {
        return new User();
    }

    @ModelAttribute("cart")
    public ArrayList<Article> getDefaultCart() {
        return new ArrayList<>();
    }

    @ModelAttribute("catalogue")
    public ArrayList<Article> getDefaultCatalogue() {
        catalogue = (ArrayList<Article>) articleRepository.findByCommandeIdIsNull();
        return catalogue;
    }

    @RequestMapping(value = "/home", params = "ProcessAddAction")
    public String ProcessAddAction(@RequestParam(value = "idArticle") String idArticle,
                                   @ModelAttribute("cart") ArrayList<Article> cart) {
        for (int i = 0; i < cart.size(); i++) {
            if (cart.get(i).getId() == Integer.parseInt(idArticle)) {
                cart.remove(i);
            }
        }
        for (Article article : catalogue) {
            if (article.getId() == Integer.parseInt(idArticle)) {
                cart.add(article);
            }
        }

        return "redirect:home";
    }
    
}
