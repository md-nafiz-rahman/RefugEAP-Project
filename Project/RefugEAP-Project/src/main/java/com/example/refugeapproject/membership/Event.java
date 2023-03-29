package com.example.refugeapproject.membership;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;


/*  Class for events so can create objects to later add and retrieve events from the database  */
@Entity
@Table(name = "events")
public class Event {

    // Automatically genertaed id unique for each event
    @Id
    @Column(name = "event_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer event_id;

    private String name;
    private String email;
    private String event_title;
    private String event_more_info;
    private LocalDateTime event_datetime;
    private String status = "Pending";
    @Transient
    private String formattedDate;
    @Transient
    private String formattedTime;
    @Transient
    private LocalDateTime eventDateTime;

    @PostLoad
    public void initEventDateTime() {
        // Set eventDateTime to the value of actualEventDateTime
        this.eventDateTime = this.event_datetime;
    }


    public Integer getEvent_id() {
        return event_id;
    }

    public void setEvent_id(Integer event_id) {
        this.event_id = event_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEvent_title() {
        return event_title;
    }

    public void setEvent_title(String event_title) {
        this.event_title = event_title;
    }

    public String getEvent_more_info() {
        return event_more_info;
    }

    public void setEvent_more_info(String event_more_info) {
        this.event_more_info = event_more_info;
    }

    public LocalDateTime getEvent_datetime() {
        return event_datetime;
    }

    public void setEvent_datetime(LocalDateTime event_datetime) {
        this.event_datetime = event_datetime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    public void setFormattedDate(String formattedDate) {
        this.formattedDate = formattedDate;
    }


    public void setFormattedTime(String formattedTime) {
        this.formattedTime = formattedTime;
    }

    public String getFormattedDate() {
        DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("MM/dd/yyyy");
        return eventDateTime.format(dateFormatter);
    }

    public String getFormattedTime() {
        DateTimeFormatter timeFormatter = DateTimeFormatter.ofPattern("hh:mm a");
        return eventDateTime.format(timeFormatter);
    }

}
