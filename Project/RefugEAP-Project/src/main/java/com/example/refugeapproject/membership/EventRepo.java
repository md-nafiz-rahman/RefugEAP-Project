package com.example.refugeapproject.membership;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface EventRepo extends CrudRepository<Event, Integer> {
    Event findById(int id);
    List<Event> findByStatus(String status);
}