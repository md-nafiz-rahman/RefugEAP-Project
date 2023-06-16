package com.example.refugeapproject.membership;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.time.LocalDateTime;
import java.util.List;

/*  Interface for retrieving events via methods from the database  */
public interface EventRepo extends CrudRepository<Event, Integer> {
    Event findById(int id);
    List<Event> findByStatus(String status);

    // Find event between times
    @Query("SELECT e FROM Event e WHERE e.event_datetime BETWEEN :startDateTime AND :endDateTime AND e.status = 'approved'")
    List<Event> findByEventDatetimeBetween(LocalDateTime startDateTime, LocalDateTime endDateTime);

}