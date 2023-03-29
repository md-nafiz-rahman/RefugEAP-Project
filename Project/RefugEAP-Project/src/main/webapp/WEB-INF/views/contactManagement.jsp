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
            font-family: 'Calibri', sans-serif;       /* google font */
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

        .container {
            position: relative;
        }

        .background-image {
            background-image: url(https://hbr.org/resources/images/article_assets/2020/06/Jun20_12_1202344480.jpg);
            background-size: cover;
            height: 250px;
            width: 100%;
        }

        .overlay {
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            background-color: rgba(0,0,0,0.5);
            color: white;
            text-align: center;
            z-index: 1;
            padding-top: 70px;
        }

        /* Header Navigation Menu */
        body {
            margin: 0;                               /* Header Navigation google font */
            font-family: 'Calibri', sans-serif;
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
            padding: 30px 20px;
            text-decoration: none;
            font-size: 18px;
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
            background-color: #f2f2f2;
            color: #29668B;
            padding: 30px 30px;
        }


        h2 {
            margin-top: 0;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-size: 20px;
        }

        footer {
            background-color: #29668B;
            color: #fff;
            padding: 20px 0;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        footer img {
            max-height: 40px;
        }

        footer > * {
            margin: 0 10px;
        }

        footer > div {
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;
        }


        .footer-slogan {
            font-size: 15px;
            max-width: 500px;
            margin-left: 20px;
        }

        table {
            border-collapse: collapse;
            border-spacing: 0;
            width: 100%;
            border: 1px solid #ddd;
            margin-bottom: 25px;
        }

        th, td {
            border: 1px solid black;
            text-align: left;
            padding: 8px;
        }


        caption {
            font-size: 2em;
            font-weight: bold;
            padding-bottom: 15px;
        }

        th{
            background-color: #023047;
            color: white;
            font-size: 1.25em;
            font-weight: bold;
        }

        .tScroll{
            overflow-x:scroll;
            height:30%;
            width:90%;
            margin-left: auto;
            margin-right: auto;
        }

        .textheader{
            text-align: center;
            font-size: 1.75em;
            font-weight: bold;
            padding-bottom: 5px;

        }
        tr:nth-child(even) {background-color: #f2f2f2;}

        input[type="submit"] {
            background-color: black;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            border: none;
            font-size: 18px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #092747;
            color: white;
            border-radius: 5px;
            border: none;
            font-size: 18px;
            cursor: pointer;
        }

    </style>
</head>
<body>

<!-- Navbar -->
<div class="navigator">
    <a href="/" class="mainB">Home</a>
    <a href="/admin/adminPortal">Users Management</a>
    <a href="/admin/blogManagement" >Blog Management</a>
    <a href="/admin/eventManagement">Events Management</a>
    <a href="/admin/contactManagement" >Contact Management</a>
    <a href="/logout">Logout</a>
    <img class="logo" src="https://eap4socialjustice.files.wordpress.com/2022/01/refugeap-banner-pencil.png" />
</div>

<!-- Header -->

<header>
    <div class="container">
        <div class="background-image"></div>
        <div class="overlay">
            <h1>Admin Side Contact Management</h1>
        </div>
    </div>

</header>



<h3 class="textheader">Pending Contacts</h3>
<div class="tScroll">
    <table>


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
</div>

<br>

<h3 class="textheader">Current Contacts</h3>
<div class="tScroll">
    <table>

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
</div>

<br>

<h3 class="textheader">Discarded Contacts</h3>
<div class="tScroll">
    <table>


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
</div>

<footer>
    <div>
        <img src="https://eap4socialjustice.files.wordpress.com/2022/01/refugeap-banner-pencil.png" alt="RefugEAP Logo">
        <p class="footer-slogan">The RefugEAP Network overarching objective is to facilitate the development of widening participation initiatives enabling refugee-background students to access HE via English language pathways, with a particular focus on English for Academic Purposes. </p>
    </div>
</footer>
</body>
</html>