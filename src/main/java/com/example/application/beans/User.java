package com.example.application.beans;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import javax.persistence.*;
import java.util.List;
import java.util.Objects;

@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String username;
    private String password;
    private String email;
    @OneToMany(mappedBy = "user")
    @LazyCollection(LazyCollectionOption.FALSE)
    private List<Commande> commande;
    @OneToMany(mappedBy = "user")
    @LazyCollection(LazyCollectionOption.FALSE)
    private List<Adresse> adresses;
    @ManyToMany
    @JoinTable(
            name = "favoris",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "article_id"))
    @LazyCollection(LazyCollectionOption.FALSE)
    private List<Article> favoris;

    public User() {
    }

    public User(String username, String password, String email, List<Commande> commande, List<Adresse> adresses) {
        this.username = username;
        this.password = password;
        this.email = email;
        this.commande = commande;
        this.adresses = adresses;
    }

    public User(int id, String username, String password, String email, List<Commande> commande, List<Adresse> adresses) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.commande = commande;
        this.adresses = adresses;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public List<Commande> getCommande() {
        return commande;
    }

    public void setCommande(List<Commande> commande) {
        this.commande = commande;
    }

    public List<Adresse> getAdresses() {
        return adresses;
    }

    public void setAdresse(List<Adresse> adresses) {
        this.adresses = adresses;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return username.equals(user.username) && password.equals(user.password);
    }

    @Override
    public int hashCode() {
        return Objects.hash(username, password);
    }
}
