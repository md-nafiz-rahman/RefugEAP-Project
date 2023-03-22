package com.example.refugeapproject.membership;
import org.springframework.data.repository.CrudRepository;

public interface ViewCountRepo extends CrudRepository<ViewCount, Integer> {

    public ViewCount findById(int id);
}

