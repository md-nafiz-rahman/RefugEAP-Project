package com.example.refugeapproject.membership;

import javax.persistence.*;
import java.util.Date;

/*  Class for blogs so can create objects to later add and retrieve blogs from the database  */
@Entity
@Table(name = "blogs")
public class Blog {

    // Automatically genertaed id unique for each blog
    @Id
    @Column(name = "blog_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer blog_id;

    private String title;
    private String content;
    private String status = "pending";

    private String email;
    private String name;

    private String affiliation; // added affiliation field
    private String role; // added role field
    private String typeOfContribution; // added type of contribution field

    private Date date;

    private String fileName;

    @Lob
    private byte[] fileData;

    public byte[] getFileData() {
        return fileData;
    }

    public void setFileData(byte[] fileData) {
        this.fileData = fileData;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }


    public Integer getBlog_id() {
        return blog_id;
    }

    public void setBlog_id(Integer blog_id) {
        this.blog_id = blog_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getStatus() {
        return status;
    }

    public void setEmail(String email) { this.email = email;}

    public String getEmail() { return email; }

    public void setName(String name) { this.name = name;}

    public String getName() { return name; }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    // added getters and setters for affiliation, role, and type of contribution fields
    public String getAffiliation() {
        return affiliation;
    }

    public void setAffiliation(String affiliation) {
        this.affiliation = affiliation;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getTypeOfContribution() {
        return typeOfContribution;
    }

    public void setTypeOfContribution(String typeOfContribution) {
        this.typeOfContribution = typeOfContribution;
    }
}
