package com.example.refugeapproject;

import java.util.*;

public class Month {

    private String name;

    private int no_days;

    List<String> events = Arrays.asList(new String[31]);


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getNo_days() {
        return no_days;
    }

    public void setNo_days(int no_days) {
        this.no_days = no_days;
    }

    public List<String> getEvents() {
        return events;
    }

    public void setEvents(List<String> events) {
        this.events = events;
    }
}
