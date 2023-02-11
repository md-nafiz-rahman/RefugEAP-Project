package com.example.refugeapproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

    @RequestMapping(value = "/") // Request to HomePage
    public String HomePage() {
        return "homePage";
    }

    @RequestMapping(value = "/contactUs") // Request to contactUs page
    public String ContactUs() {
        return "contactUs";
    }

    @RequestMapping(value = "/adminPortal") // Request to adminPortal page
    public String AdminPortal() {
        return "adminPortal";
    }



}