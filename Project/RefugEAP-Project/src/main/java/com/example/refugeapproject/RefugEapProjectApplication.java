package com.example.refugeapproject;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@SpringBootApplication
public class RefugEapProjectApplication {

	public static List<Month> months = new ArrayList<>();
	public static void main(String[] args) {
		SpringApplication.run(RefugEapProjectApplication.class, args);

	//We could use the calendar library to make this easier and more accurate

		Month mnth = new Month();
		mnth.setName("January");
		mnth.setNo_days(31);

		List<String> JanEvents = Arrays.asList(new String[31]);
		JanEvents.set(0,"First day");
		JanEvents.set(1,"Second day");

		mnth.setEvents(JanEvents);
		months.add(mnth);



		mnth = new Month();
		mnth.setName("February");
		mnth.setNo_days(28);

		List<String> FebEvents = Arrays.asList(new String[31]);
		FebEvents.set(0,"First day");
		FebEvents.set(1,"Second day");

		mnth.setEvents(FebEvents);
		months.add(mnth);

		mnth = new Month();
		mnth.setName("March");
		mnth.setNo_days(31);
		months.add(mnth);

		mnth = new Month();
		mnth.setName("April");
		mnth.setNo_days(30);
		months.add(mnth);

		mnth = new Month();
		mnth.setName("May");
		mnth.setNo_days(31);
		months.add(mnth);

		mnth = new Month();
		mnth.setName("June");
		mnth.setNo_days(30);
		months.add(mnth);

		mnth = new Month();
		mnth.setName("July");
		mnth.setNo_days(31);
		months.add(mnth);

		mnth = new Month();
		mnth.setName("August");
		mnth.setNo_days(31);
		months.add(mnth);

		mnth = new Month();
		mnth.setName("September");
		mnth.setNo_days(30);
		months.add(mnth);

		mnth = new Month();
		mnth.setName("October");
		mnth.setNo_days(31);
		months.add(mnth);

		mnth = new Month();
		mnth.setName("November");
		mnth.setNo_days(30);
		months.add(mnth);

		mnth = new Month();
		mnth.setName("December");
		mnth.setNo_days(31);
		months.add(mnth);



		System.out.println(months.get(0).getName());
		System.out.println(months.get(0).getNo_days());
		System.out.println(months.get(0).getEvents());

		System.out.println(months.get(1).getName());
		System.out.println(months.get(1).getNo_days());
		System.out.println(months.get(1).getEvents());

		System.out.println(months.get(0));



	}


}
