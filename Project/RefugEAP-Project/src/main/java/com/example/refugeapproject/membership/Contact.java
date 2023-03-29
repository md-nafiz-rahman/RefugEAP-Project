package com.example.refugeapproject.membership;

import javax.persistence.*;


/*  Class for contacts so can create objects to later add and retrieve contacts from the database  */
@Entity
@Table(name = "contacts")
public class Contact {


    // Automatically genertaed id unique for each contact
    @Id
    @Column(name = "contact_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer contact_id;

    private String status = "pending";

    private String email;
    private String name;

    private String message;

    public Integer getContact_id() {
        return contact_id;
    }

    public void setContact_id(Integer contact_id) {
        this.contact_id = contact_id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
