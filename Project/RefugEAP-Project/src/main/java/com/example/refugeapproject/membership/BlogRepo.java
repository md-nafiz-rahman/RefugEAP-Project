package com.example.refugeapproject.membership;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

/*  Interface for retrieving blogs via methods from the database  */
public interface BlogRepo extends CrudRepository<Blog, Integer> {
    public Blog findById(int id);
    public List<Blog> findByStatus(String status);
    public List<Blog> findByStatusAndTypeOfContribution(String status, String typeOfContribution);

}