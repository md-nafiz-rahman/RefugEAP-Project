package com.example.refugeapproject;

import com.example.refugeapproject.membership.Blog;
import com.example.refugeapproject.membership.BlogRepo;
import com.example.refugeapproject.membership.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


import java.util.ArrayList;

import java.util.List;

// Start Application with this file
@SpringBootApplication
public class RefugEapProjectApplication implements CommandLineRunner {

	public static List<Blog> blogs = new ArrayList<>();

	@Autowired
	private UserRepo repo;

	@Autowired
	private BlogRepo blogRepo;

	public static void main(String[] args) {
		SpringApplication.run(RefugEapProjectApplication.class, args);




	}


	// Test to see retrieving data working
	@Override
	public void run(String... args) throws Exception {
		// Get a blog by id and print its title
		int blogId = 1;
		Blog blog = blogRepo.findById(blogId);
		if (blog != null) {
			System.out.println("Blog title: " + blog.getTitle());
		} else {
			System.out.println("Blog with id " + blogId + " not found");
		}
	}

}
