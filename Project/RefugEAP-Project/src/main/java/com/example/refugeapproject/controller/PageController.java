package com.example.refugeapproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

    @RequestMapping(value = "/") // Request to HomePage
    public String HomePage() {
        return "homePage";
    } // test for commit

}
