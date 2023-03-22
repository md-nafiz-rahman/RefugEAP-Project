package com.example.refugeapproject.membership;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ContactRepo extends CrudRepository<Contact, Integer> {
    public Contact findById(int id);
    public List<Contact> findByStatus(String status);
}

