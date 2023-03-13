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

@SpringBootApplication
public class RefugEapProjectApplication implements CommandLineRunner {

	public static List<Blog> blogs = new ArrayList<>();

	@Autowired
	private UserRepo repo;

	@Autowired
	private BlogRepo Brepo;

	public static void main(String[] args) {
		SpringApplication.run(RefugEapProjectApplication.class, args);




	}


	@Override
	public void run(String... args) throws Exception {
		System.out.println(Brepo.getBlogByBlog_id(1).getTitle());
	}
}


}
