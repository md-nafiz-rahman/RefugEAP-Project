package com.example.refugeapproject.membership;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface BlogRepo extends CrudRepository<Blog,Integer> {

    @Query("SELECT b FROM Blog b WHERE b.blog_id = :blog_id")
    public Blog getBlogByBlog_id(@Param("blog_id") String blog_id);

}
