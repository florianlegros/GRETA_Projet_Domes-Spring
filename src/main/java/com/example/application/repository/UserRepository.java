package com.example.application.repository;

import com.example.application.beans.Article;
import com.example.application.beans.Commande;
import com.example.application.beans.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends CrudRepository<User, Integer> {
    @Query("SELECT CASE WHEN count(u) > 0 THEN true ELSE false END from User u where u.username = ?1 and u.password = ?2")
    Boolean checkLogin(@Param("username") String username,@Param("password") String password);

    List<User> findByUsername(String username);


}
