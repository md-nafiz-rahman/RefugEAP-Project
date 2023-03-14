package com.example.refugeapproject.membership;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface BlogRepo extends CrudRepository<Blog, Integer> {
    public Blog findById(int id);
    public List<Blog> findByStatus(String status);
}

