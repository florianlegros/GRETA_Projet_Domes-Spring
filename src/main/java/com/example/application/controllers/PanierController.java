package com.example.application.controllers;

import com.example.application.beans.Article;
import com.example.application.repository.ArticleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@Controller
@SessionAttributes({"login", "cart"})
public class PanierController {

    ArrayList<Article> catalogue = new ArrayList<>();
    @Autowired
    ArticleRepository articleRepository;

    @GetMapping("/panier")
    public String goHome() {
        return "panier";
    }


    @ModelAttribute("cart")
    public ArrayList<Article> getDefaultCart() {
        return new ArrayList<>();
    }

    @RequestMapping(value = "/panier", params = "ProcessDelAction")
    public String ProcessAddAction(@RequestParam(value = "idArticle") String idArticle,
                                   @SessionAttribute("cart") ArrayList<Article> cart) {
        for (int i = 0; i < cart.size(); i++) {
            if (cart.get(i).getId() == Integer.parseInt(idArticle)) {
                cart.remove(i);
            }
        }

        return "redirect:panier";
    }
}
