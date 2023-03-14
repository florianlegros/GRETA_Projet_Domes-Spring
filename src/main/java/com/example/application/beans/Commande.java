package com.example.application.beans;

import javax.persistence.*;

@Entity
public class Commande {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String date;
    @OneToOne(cascade = CascadeType.ALL)
    private Adresse adresse;
    @ManyToOne
    private User user;
    @OneToOne(mappedBy = "commande")
    private Article article;
    private String status;


    public Commande() {
    }

    public Commande(String date, Adresse adresse, User user, String status, Article article) {
        this.date = date;
        this.adresse = adresse;
        this.user = user;
        this.status = status;
        this.article = article;
    }

    public Commande(int id, String date, Adresse adresse, User user, String status, Article article) {
        this.id = id;
        this.date = date;
        this.adresse = adresse;
        this.user = user;
        this.status = status;
        this.article = article;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Adresse getAdresse() {
        return adresse;
    }

    public void setAdresse(Adresse adresse) {
        this.adresse = adresse;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Article getArticle() {
        return article;
    }

    public void setArticle(Article article) {
        this.article = article;
    }

    @Override
    public String toString() {
        return "Commande{" +
                "id=" + id +
                ", date='" + date + '\'' +
                ", adresse=" + adresse +
                ", status='" + status + '\'' +
                '}';
    }
}
