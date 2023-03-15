package com.example.refugeapproject.membership;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.time.LocalDateTime;
import java.util.List;

public interface EventRepo extends CrudRepository<Event, Integer> {
    Event findById(int id);
    List<Event> findByStatus(String status);
    @Query("SELECT e FROM Event e WHERE e.event_datetime BETWEEN :startDateTime AND :endDateTime")
    List<Event> findByEventDatetimeBetween(LocalDateTime startDateTime, LocalDateTime endDateTime);
}