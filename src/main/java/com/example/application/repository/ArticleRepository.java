package com.example.application.repository;

import com.example.application.beans.Article;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ArticleRepository extends CrudRepository<Article, Integer> {

    List<Article> findByCommandeIdIsNull();

}
