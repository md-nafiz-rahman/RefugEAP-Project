<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <title>RefugEAP - Admin Portal</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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

        #events li {
            font-size: 20px;
            padding: 10px 0;
        }

        .form {
            width: 66%;
            margin: 0 auto;
            padding: 150px ;
            border: 0px solid gray;
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
            width: 90%;
            border: 1px solid #ddd;
            margin-bottom: 25px;
        }

        th, td {
            border: 1px solid black;
            text-align: left;
            padding: 8px;
        }

        th{
            background-color:  #023047;
            color: white;
            font-size: 1.25em;
            font-weight: bold;
        }

        .center {
            margin-left: auto;
            margin-right: auto;
        }

        @media screen and (max-width: 1200px) {
            h1 {
                font-size: 24px;
            }

            h2 {
                font-family: 'Calibri', sans-serif;
                font-size: 20px;
            }

            h3 {
                font-size: 18px;
            }

            h4{
                font-size: 16px;
            }

            p {
                font-size: 12px;
            }

            li {
                font-size: 12px; /* set the font size to 20 pixels */
            }


            .background-image {
                background-image: url(https://hbr.org/resources/images/article_assets/2020/06/Jun20_12_1202344480.jpg);
                background-size: cover;
                height: 200px;
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

            .navigator {
                background-color: #29668B;         /* Header Navigation Main Button */
                overflow: hidden;
            }


            .navigator a {
                float: right;
                display: block;
                color: #FFFFFF;               /* Header Navigation Settings text color, font size, alignment */
                text-align: center;
                padding: 5px 10px;
                text-decoration: none;
                font-size: 12px;
            }

            .logo {
                float: left;
                display: block;       /* Header Navigation Settings text color, font size, alignment */
                padding: 5px 10px;
                height: 30px;
            }


            .navigator a:hover {
                background-color: #FFFFFF;     /* Header Navigation Other Buttons hover effect */
                color: black;
            }

            .navigator a.mainB {
                background-color: #f2f2f2;     /* Header Navigation Main Button */
                color: #29668B;
                padding: 7px 30px;
            }

            h2 {
                margin-top: 0;
            }

            #events li {
                font-size: 10px;
                padding: 5px 0;
            }


            label {
                display: block;
                margin-bottom: 5px;
                font-size: 10px;
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
                font-size: 7px;
                max-width: 100px;
                margin-left: 20px;
            }

            .form {
                width: 80%;
                margin: 0 auto;
                padding: 65px ;
                border: 0px solid gray;
            }

            input[type="submit"] {
                background-color: black;
                color: white;
                padding: 10px 20px;
                border-radius: 5px;
                border: none;
                font-size: 16px;
                cursor: pointer;
            }



        }

        /* CSS style for mobile device responsiveness */
        @media screen and (max-width: 600px) {
            h1 {
                font-size: 24px;
            }

            h2 {
                font-family: 'Calibri', sans-serif;
                font-size: 20px;
            }

            h3 {
                font-size: 18px;
            }

            h4{
                font-size: 16px;
            }

            p {
                font-size: 10px;
            }


            .container {
                position: relative;
            }

            .background-image {
                background-image: url(https://hbr.org/resources/images/article_assets/2020/06/Jun20_12_1202344480.jpg);
                background-size: cover;
                height: 200px;
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


            .navigator {
                background-color: #29668B;         /* Header Navigation Main Button */
                overflow: hidden;
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
                /*position: relative;*/
                padding: 40px 0 0 0;
                flex-direction: row-reverse;
            }


            .navigator a {
                float: right;
                color: #FFFFFF;               /* Header Navigation Settings text color, font size, alignment */
                text-align: center;
                padding: 7px 10px;
                text-decoration: none;
                font-size: 9px;
                /*position: relative;*/
            }

            .logo {
                position: absolute;
                top: 0;
                left: 50%;
                transform: translateX(-50%);
                height: 40px;
                padding: 10px 0;
            }

            .navigator a:hover {
                background-color: #FFFFFF;     /* Header Navigation Other Buttons hover effect */
                color: black;
            }

            .navigator a.mainB {
                background-color: #f2f2f2;     /* Header Navigation Main Button */
                color: #29668B;
                padding: 7px 20px;
            }

            h2 {
                margin-top: 0;
            }

            #events li {
                font-size: 10px;
                padding: 5px 0;
            }


            label {
                display: block;
                margin-bottom: 5px;
                font-size: 10px;
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
                font-size: 7px;
                max-width: 100px;
                margin-left: 20px;
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


            th{
                background-color: #023047;
                color: white;
                font-size: 10px;
                font-weight: bold;
            }

            .form {
                width: 80%;
                margin: 0 auto;
                padding: 65px ;
                border: 0px solid gray;
            }

            input[type="submit"] {
                background-color: black;
                color: white;
                padding: 10px 20px;
                border-radius: 5px;
                border: none;
                font-size: 12px;
                cursor: pointer;
            }

        }


    </style>
</head>
<body>

<!-- Navbar -->
<div class="navigator">
    <a href="/">Home</a>
    <a href="/admin/adminPortal" class="mainB">Users Management</a>
    <a href="/admin/blogManagement">Blog Management</a>
    <a href="/admin/eventManagement">Events Management</a>
    <a href="/admin/contactManagement">Contact Management</a>
    <a href="/logout">Logout</a>
    <img class="logo" src="https://eap4socialjustice.files.wordpress.com/2022/01/refugeap-banner-pencil.png" />
</div>

<!-- Header -->

<header>
    <div class="container">
        <div class="background-image"></div>
        <div class="overlay">
            <h1>Admin Accounts Management</h1>
        </div>
    </div>

</header>

<div>
    <div class="form">
        <h4>Add New User</h4>
        <form method="post" action="/admin/user/add">
            <label for="username">Username:</label> <input type="text" id="username" name="username" required />
            <label for="password">Password:</label> <input type="password" id="password" name="password" required />
            <label for="role">Role:</label><select id="role" name="role">
            <c:forEach var="role" items="${roles}">
                <option>${role.getName()}</option>
            </c:forEach>
        </select>
            <input type="submit" value="Add New User" title="Add user" />
        </form>
    </div>
</div>

<table class="center">
    <tr><th>Username</th><th>Role</th><th>Status</th><th>DELETE</th><th>PASSWORD</th></tr>
    <c:forEach var="user" items="${users}">
        <tr><td>${user.getUsername()}</td><td>${user.GetRolesNames()}</td><td>${user.isEnabled()}</td><td><a href = '<c:url value = "/admin/user/deleteUser/${user.getId()}"/>'>DEL</a></td><td><a href = '<c:url value = "/admin/user/resetPassword/${user.getId()}"/>'>Reset</a></td></tr>
    </c:forEach>

</table>

<footer>
    <div>
        <img src="https://eap4socialjustice.files.wordpress.com/2022/01/refugeap-banner-pencil.png" alt="RefugEAP Logo">
        <p class="footer-slogan">The RefugEAP Network overarching objective is to facilitate the development of widening participation initiatives enabling refugee-background students to access HE via English language pathways, with a particular focus on English for Academic Purposes. </p>
    </div>
</footer>
</body>
</html>