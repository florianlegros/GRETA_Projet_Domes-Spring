package com.example.application.beans;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import javax.persistence.*;
import java.util.List;

@Entity
public class Article {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String nom;
	private double prix;
	private String categorie;
	private String race;
	private String description;
	private String image;
	@OneToOne
	private Commande commande;
	@ManyToMany
	@JoinTable(
			name = "favoris",
			joinColumns = @JoinColumn(name = "article_id"),
			inverseJoinColumns = @JoinColumn(name = "user_id"))
	@LazyCollection(LazyCollectionOption.FALSE)
	private List<User> favoris;
	public Article() {
	}

	public Article(String nom, double prix, String categorie, String race, String description, String image, Commande commande) {
		this.nom = nom;
		this.prix = prix;
		this.categorie = categorie;
		this.race = race;
		this.description = description;
		this.image = image;
		this.commande = commande;
	}

	public Article(int id, String nom, double prix, String categorie, String race, String description, String image, Commande commande) {
		this.id = id;
		this.nom = nom;
		this.prix = prix;
		this.categorie = categorie;
		this.race = race;
		this.description = description;
		this.image = image;
		this.commande = commande;
	}

	public  String getImage() {
		return image;
	}

	public  void setImage(String image) {
		this.image = image;
	}

	public  String getNom() {
		return nom;
	}

	public  void setNom(String nom) {
		this.nom = nom;
	}

	public  double getPrix() {
		return prix;
	}

	public  void setPrix(double prix) {
		this.prix = prix;
	}

	public  String getDescription() {
		return description;
	}

	public  void setDescription(String description) {
		this.description = description;
	}

	public  String getCategorie() {
		return categorie;
	}

	public  void setCategorie(String categorie) {
		this.categorie = categorie;
	}

	public  int getId() {
		return id;
	}

	public  void setId(int id) {
		this.id = id;
	}

	public  String getRace() {
		return race;
	}

	public  void setRace(String race) {
		this.race = race;
	}

	public Commande getCommande() {
		return commande;
	}

	public void setCommande(Commande commande) {
		this.commande = commande;
	}

	public List<User> getFavoris() {
		return favoris;
	}

	public void setFavoris(List<User> favoris) {
		this.favoris = favoris;
	}

	@Override
	public String toString() {
		return "Article{" +
				"id=" + id +
				", nom='" + nom + '\'' +
				", prix=" + prix +
				", categorie='" + categorie + '\'' +
				", race='" + race + '\'' +
				", description='" + description + '\'' +
				", image='" + image + '\'' +
				'}';
	}
}
