package com.example.refugeapproject.membership;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

/*  Interface for retrieving contacts via methods from the database  */
public interface ContactRepo extends CrudRepository<Contact, Integer> {
    public Contact findById(int id);
    public List<Contact> findByStatus(String status);
}

