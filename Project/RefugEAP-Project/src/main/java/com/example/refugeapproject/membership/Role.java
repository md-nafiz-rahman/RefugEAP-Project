package com.example.refugeapproject.membership;

import javax.persistence.*;
 
@Entity
@Table(name = "roles")
public class Role {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    
    private String name;

    public Integer getId() {
        return id;
    }
    
    public String getName() {
        return name;
    }

    public void setId(int id)
    {
        this.id=id;
    }

    public void setName(String name)
    {
        this.name=name;
    }
}