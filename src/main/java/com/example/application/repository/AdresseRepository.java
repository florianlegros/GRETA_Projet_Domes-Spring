package com.example.application.repository;

import com.example.application.beans.Adresse;
import com.example.application.beans.Commande;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AdresseRepository extends CrudRepository<Adresse, Integer> {

}
