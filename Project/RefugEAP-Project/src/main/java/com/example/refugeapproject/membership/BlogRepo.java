package com.example.refugeapproject.membership;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface BlogRepo extends CrudRepository<Blog,Integer> {

    @Query("SELECT b FROM Blog b WHERE b.blog_id = :blog_id")
    public Blog getBlogByBlog_id(@Param("blog_id") int blog_id);

    @Query("SELECT count(b.blog_id) FROM Blog b") //Find the total number of entries in the blogs table
    public long total_rows_in_blog ();


}
