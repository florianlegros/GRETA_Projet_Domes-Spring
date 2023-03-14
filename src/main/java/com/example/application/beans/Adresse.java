package com.example.application.beans;

import javax.persistence.*;
import java.util.Objects;
@Entity
public class Adresse {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String adresse;
	@ManyToOne(fetch = FetchType.EAGER)
	private User user;
	public Adresse() {
	}

	public Adresse(String adresse) {
		this.adresse = adresse;
	}

	public Adresse(int id, String adresse,User user) {
		this.id = id;
		this.adresse = adresse;
		this.user = user;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Adresse{" +
				"id=" + id +
				", adresse='" + adresse + '\'' +
				'}';
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Adresse other = (Adresse) obj;
		return id == other.id;
	}

}
