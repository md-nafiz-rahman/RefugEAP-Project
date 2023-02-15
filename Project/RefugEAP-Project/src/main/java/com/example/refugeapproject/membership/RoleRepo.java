package com.example.refugeapproject.membership;


import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface RoleRepo extends CrudRepository<Role,Integer> {

    @Query("SELECT u FROM Role u WHERE u.name = :name")
    public Role getRoleByName(@Param("name") String name);
    
}
