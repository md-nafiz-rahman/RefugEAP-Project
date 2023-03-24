<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">
<head>
    <title>RefugEAP - Contact Management</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet"> <!--Google font link-->
    <style>

        html {
            min-width: auto;
        }


        body {
            margin: 0;
            font-family: 'Oswald', sans-serif;       /* google font */
            padding: 0;
        }

        h1 {
            font-size: 48px;
        }

        h2 {
            font-size: 44px;
        }

        h3 {
            font-size: 40px;
        }

        h4{
            font-size: 36px;
        }

        p {
            font-size: 23px;
        }

        .blog p{
            color: gray;
        }
        .blog  h5{
            padding-top: 32px;
            padding-bottom: 32px;
        }

        /* Header Navigation Menu */
        body {
            margin: 0;                               /* Header Navigation google font */
            font-family: 'Oswald', sans-serif;
        }

        .navigator {
            background-color: #29668B;         /* Header Navigation Main Button */
            overflow: hidden;
        }


        .navigator a {
            float: right;
            display: block;
            color: #FFFFFF;               /* Header Navigation Settings text color, font size, alignment */
            text-align: center;
            padding: 30px 50px;
            text-decoration: none;
            font-size: 23px;
        }

        .logo {
            float: left;
            display: block;       /* Header Navigation Settings text color, font size, alignment */
            padding: 10px 40px;
            height: 90px;
        }

        .navigator a:hover {
            background-color: #FFFFFF;     /* Header Navigation Other Buttons hover effect */
            color: black;
        }

        .navigator a.mainB {
            background-color: #f2f2f2;     /* Header Navigation Main Button */
            color: #29668B;
            padding: 30px 130px;
        }

        h2 {
            margin-top: 0;
        }

        .form {
            width: 66%;
            margin: 0 auto;
            padding: 150px ;
            border: 0px solid gray;
            /*border-radius: 10px;*/
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-size: 20px;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        select,
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
            border: 1px solid gray;
            font-size: 18px;
        }

        input[type="submit"] {
            background-color: black;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            border: none;
            font-size: 18px;
            cursor: pointer;
        }

        footer {
            background-color: #29668B;
            color: #fff;
            padding: 20px 0;
        }

        .footer-columns {
            max-width: 1200px;
            margin: 0 0 0 250px;
            display: flex;
            flex-wrap: wrap;
        }

        .footer-columns > div {
            flex: 1;
            text-align: left;
        }

        .footer-col-1 img {
            max-width: 150px;
            height: auto;
            margin: 30px 50px;
        }

        .social-icons li {
            display: inline-block;
            margin: 0 10px;
            height: 40px;
            width: 40px;
        }

        .social-icons a {
            color: black;
        }

        .footer-links li {
            display: block;
            margin-bottom: 10px;
            margin-right: 50px;
        }

        .footer-links a {
            color: black;
            text-decoration:none;
        }

        .footer-slogan {
            font-size: 15px;
            max-width: 300px;
        }

        table {
            border-collapse: collapse;
            border-spacing: 0;
            width: 90%;
            border: 1px solid #ddd;
            margin-bottom: 25px;
        }

        th, td {
            border: 1px solid black;
            text-align: left;
            padding: 8px;
        }

        .center {
            margin-left: auto;
            margin-right: auto;
        }
        caption {
            font-size: 2em;
            font-weight: bold;
            padding-bottom: 15px;
        }

    </style>
</head>
<body>

<!-- Navbar -->
<div class="navigator">
    <a href="/">Home</a>
    <a href="/admin/adminPortal">Users Management</a>
    <a href="/admin/blogManagement"  class="mainB">Blog Management</a>
    <a href="/admin/eventManagement">Events Management</a>
    <a href="/logout">Logout</a>
    <img class="logo" src="https://eap4socialjustice.files.wordpress.com/2022/01/refugeap-banner-pencil.png" />
</div>



<table class="center">
    <caption>Pending Contacts</caption>
    <thead>
    <tr>
        <th>ID</th>
        <th>Author</th>
        <th>Email</th>
        <th>message</th>
        <th>Action</th>
        <th>Action</th>

    </tr>
    </thead>
    <tbody>
    <c:forEach items="${contacts}" var="contact">
        <tr>
            <td>${contact.contact_id}</td>
            <td>${contact.name}</td>
            <td>${contact.email}</td>
            <td>${contact.message}</td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/admin/acceptContact">
                    <input type="hidden" name="contact_id" value="${contact.contact_id}">
                    <input type="submit" value="Accept">
                </form>
            </td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/admin/discardContact">
                    <input type="hidden" name="contact_id" value="${contact.contact_id}">
                    <input type="submit" value="Discard">
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<br>

<table class="center">
    <caption>Current Contacts</caption>
    <thead>
    <tr>
        <th>ID</th>
        <th>Author</th>
        <th>Email</th>
        <th>message</th>
        <th>Action</th>

    </tr>
    </thead>
    <tbody>
    <c:forEach items="${acceptedContacts}" var="contact">
        <tr>
            <td>${contact.contact_id}</td>
            <td>${contact.name}</td>
            <td>${contact.email}</td>
            <td>${contact.message}</td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/admin/discardContact">
                    <input type="hidden" name="contact_id" value="${contact.contact_id}">
                    <input type="submit" value="Discard">
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<br>

<table class="center">
    <caption>Discarded Contacts</caption>
    <thead>
    <tr>
        <th>ID</th>
        <th>Author</th>
        <th>Email</th>
        <th>message</th>
        <th>Action</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${discardedContacts}" var="contact">
        <tr>
            <td>${contact.contact_id}</td>
            <td>${contact.name}</td>
            <td>${contact.email}</td>
            <td>${contact.message}</td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/admin/deleteContact">
                    <input type="hidden" name="contact_id" value="${contact.contact_id}">
                    <input type="submit" value="Delete">
                </form>
            </td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/admin/recoverContact">
                    <input type="hidden" name="contact_id" value="${contact.contact_id}">
                    <input type="submit" value="Recover">
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<footer>
    <div class="footer-columns">
        <div class="footer-col-1">
            <img src="https://eap4socialjustice.files.wordpress.com/2022/01/refugeap-banner-pencil.png" alt="RefugEAP Logo">
            <p class="footer-slogan">The RefugEAP Network overarching objective is to facilitate the development of widening participation initiatives enabling refugee-background students to access HE via English language pathways, with a particular focus on English for Academic Purposes. </p>
        </div>
    </div>
</footer>
</body>
</html>