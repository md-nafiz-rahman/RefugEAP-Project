package com.example.refugeapproject.controller;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndView;

import com.example.refugeapproject.membership.Role;
import com.example.refugeapproject.membership.RoleRepo;
import com.example.refugeapproject.membership.User;
import com.example.refugeapproject.membership.UserRepo;


@Controller
public class PageController {

    @Autowired
    UserRepo userRepo;

    @Autowired
    RoleRepo roleRepo;

    @RequestMapping(value = "/") // Request to HomePage
    public String HomePage() {
        return "homePage";
    }

    @RequestMapping(value = "/contactUs") // Request to contactUs page
    public String ContactUs() {
        return "contactUs";
    }

    // @RequestMapping(value = "/adminPortal") // Request to adminPortal page
    // public String AdminPortal() {
    //     return "adminPortal";
    // }


    @RequestMapping(value = "/admin/adminPortal") // Request to adminPortal page
    public ModelAndView AdminPortal() {

        ModelAndView modelAndView= new ModelAndView();

        modelAndView.addObject("roles",roleRepo.findAll());

        modelAndView.addObject("users",userRepo.findAll());

        modelAndView.setViewName("adminPortal");

        return modelAndView;
    }

    @RequestMapping(value = "/admin/user/add", method = RequestMethod.POST) // Request to adminPortal page
    public String UserAdd(@RequestParam("username") String usr,@RequestParam("password") String pwd,@RequestParam("role") String roleName) {

        User user=new User();
        user.setUsername(usr);
        String encrypPassword= new BCryptPasswordEncoder().encode(pwd);
        user.setPassword(encrypPassword);
        user.setEnabled(true);
        
        Set<Role> role= new HashSet<>();      
        Role role_= roleRepo.getRoleByName(roleName);
        role.add(role_);
        user.setRoles(role);

        userRepo.save(user);

        return "redirect:/admin/adminPortal";
        
    }

    @RequestMapping(value = "/login") // Request login page
    public ModelAndView Login() {

        ModelAndView modelAndView= new ModelAndView();

        modelAndView.setViewName("login");

        return modelAndView;
    }

    @RequestMapping(value = "/admin/secure") // Start page of the members only section
    public String Secure() {
        return "secure";
    }



}
