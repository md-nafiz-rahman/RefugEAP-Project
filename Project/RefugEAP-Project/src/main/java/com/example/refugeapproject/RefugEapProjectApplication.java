package com.example.refugeapproject;

import com.example.refugeapproject.membership.Blog;
import com.example.refugeapproject.membership.BlogRepo;
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
	private BlogRepo Brepo;

	public static void main(String[] args) {
		SpringApplication.run(RefugEapProjectApplication.class, args);




	}


	@Override
	public void run(String... args) throws Exception {
		//System.out.println(Brepo.getBlogByBlog_id(1).getTitle());

		//System.out.println(Brepo.total_rows_in_blog());


		//Gets all blogs from the blog database and stores them in the "blogs" list
		for( int i = 1; i <= Brepo.total_rows_in_blog(); i++) {
			blogs.add(Brepo.getBlogByBlog_id(i));
		}

		for( int i = 0; i < blogs.size(); i++) {
			System.out.println(blogs.get(i).getBlog_id());
		}

	}
	}
}


}
