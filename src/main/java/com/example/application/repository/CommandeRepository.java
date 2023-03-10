package com.example.application.repository;

import com.example.application.beans.Commande;
import com.example.application.beans.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface CommandeRepository extends CrudRepository<Commande, Integer> {

}
