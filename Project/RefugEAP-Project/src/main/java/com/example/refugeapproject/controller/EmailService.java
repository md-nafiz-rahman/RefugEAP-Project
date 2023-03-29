package com.example.refugeapproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;


/*  Class to send emails to users  */
@Component
public class EmailService {

    @Autowired
    private JavaMailSender mailSender;

    // This method creates a template email to quickly send emails
    public void sendMessage(
            String to, String subject, String text) {

        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom("Your email to send from"); // Use the email you want to send emails from (to the client), change to RefugEAP email
        message.setTo(to);
        message.setSubject(subject);
        message.setText(text);
        mailSender.send(message);

    }
}