<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html lang="en">
<head>
    <title>RefugEAP - Blogs</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>

        html {
            min-width: auto;
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
            font-size: 18px;
        }



        .blog p{
            color: gray;
        }
        .blog  h5{
            padding-top: 32px;
            padding-bottom: 32px;
        }

        .toplogo{
            float: left;
            padding-top: 5px;
            padding-left: 20px;
            padding-bottom: 10px;
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

        .overlays {
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            background-color: rgba(0,0,0,0.5);
            color: white;
            text-align: center;
            z-index: 1;
        }


        /* Header Navigation Menu */
        body {
            margin: 0;                               /* Header Navigation google font */
            font-family: 'Calibri', sans-serif;
        }

        .navigator {
            background-color: #29668B;
            /*position: relative;*/
            overflow: hidden;
        }

        .navigator a {
            float: right;
            /*display: block;*/
            color: #FFFFFF;
            text-align: center;
            padding: 30px 20px;
            text-decoration: none;
            font-size: 18px;
        }

        .logo {
            float: left;
            display: block;
            padding: 10px 40px;
            height: 80px;
        }

        .navigator a:hover {
            background-color: #FFFFFF;
            color: black;
        }

        .navigator a.mainB {
            background-color: #f2f2f2;
            color: #29668B;
            padding: 30px 30px;
        }

        /* Dropdown menu styles */
        .dropdown {
            float: right;
            overflow: hidden;
        }

        .dropdown .dropbtn {
            cursor: pointer;
            font-size: 19px;
            border: none;
            outline: none;
            color: #FFFFFF;
            padding: 30px 30px;
            background-color: inherit;
            font-family: inherit;
            margin: 0;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 9999;
        }

        .dropdown-content a {
            float: none;
            color: #29668B;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
        }

        .dropdown-content a:hover {
            background-color: #ddd;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .dropdown:hover .dropbtn {
            background-color: #FFFFFF;
            color: #29668B;
        }

        h2 {
            margin-top: 0;
        }

        a.link {
            display: block;
            margin-top: 20px;
            text-align: right;
            color: blue;
            text-decoration: none;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-size: 20px;
        }

        input[type="text"],
        input[type="email"],
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

        input[type="submit"]:hover {
            background-color: #092747;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            border: 0;
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

        .social-icons {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .social-icons li {
            display: inline-block;
            margin: 0 10px;
            height: 40px;
            width: 40px;
        }

        .social-icons a {
            color: white;
        }

        .footer-links {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .footer-links li {
            display: block;
            margin-bottom: 10px;
            margin-right: 50px;
        }

        .footer-links a {
            text-decoration:none;
            font-size:18px;
        }

        .footer-slogan {
            font-size: 15px;
            max-width: 300px;
        }

        body {
            font-family: Calibri, sans-serif;
            margin: 0;
        }


        header h1 {
            margin: 0;
        }

        nav ul {
            margin: 0;
            padding: 0;
            list-style: none;
        }

        nav ul li {
            display: inline-block;
            margin-right: 20px;
        }

        nav ul li a {
            color: #fff;
            text-decoration: none;
        }

        main {
            margin: 20px;
        }

        article {
            border: 1px solid #ccc;
            padding: 20px;
            flex: 0 0 calc(33.33% - 20px);
            box-sizing: border-box;
        }

        article header {
            margin: 0 0 20px 0;
        }

        article h2 {
            margin: 0;
        }

        article p.meta {
            margin: 0 0 10px 0;
            font-style: italic;
            font-size: 0.8em;
        }

        article footer {
            margin: 20px 0 0 0;
        }

        article p.tags {
            font-style: italic;
            font-size: 0.8em;
        }

        article p.tags a {
            text-decoration: none;
            color: #333;
            border: 1px solid;
        }

        .blog-post h2 {
            font-size: 26px;
            margin-top: 0;
        }

        .blog-post h3 {
            font-size: 12px;
            margin-top: 0;
        }
        .blog-post p {
            font-size: 16px;
        }

        .contribution-popup li {
            text-align: left;
            font-family: Calibri, sans-serif;
        }

        .contribution-popup h2 {
            text-align: left;
            font-family: Calibri, sans-serif;
            font-size: 24px;
        }


        .contribution-popup button {
            position: relative;
            bottom: 20px;
            right: 20px;
            top : -5px;
        }

        .button-container button {
            margin: 0 10px;
            padding: 10px 20px;
            background-color: #e6e6e6;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            /*#f2f2f2*/
        }

        .button-container button.active {
            background-color: #b3b6ba;
            /*#e6e6e6*/
        }

        .iconHover:hover {
            background-color: #12b7e0;
            width: 35px;
            height: 35px;
            border-radius: 50%;
            text-align: center;
            vertical-align: middle;
            transform: translate(0,-5px);
        }

        .sec1 {
            background-color: white; /* add a blue background color to the team section */
            padding: 10px;
            max-width: 1200px; /* limit the maximum width of the section to 800 pixels */
            margin: 0 auto; /* center the section horizontally within its parent container */
            color: black; /* set the text color to white */
            line-height: 2.0; /* add some spacing between lines */
            font-family: "Calibri", sans-serif;
        }

        /* CSS style for tablet device responsiveness */
        @media screen and (max-width: 1200px) {

            h1 {
                font-size: 24px;
            }

            h2 {
                font-family: 'Calibri', sans-serif;
                font-size: 35px;
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
            .container {
                position: relative;
            }

            .background-image {
                background-image: url(https://hbr.org/resources/images/article_assets/2020/06/Jun20_12_1202344480.jpg);
                background-size: cover;
                height: 200px;
                width: 100%;
            }

            .overlays {
                position: absolute;
                top: 0;
                bottom: 0;
                left: 0;
                right: 0;
                background-color: rgba(0,0,0,0.5);
                color: white;
                text-align: center;
                z-index: 1;
            }


            .navigator {
                background-color: #29668B;         /* Header Navigation Main Button */
                overflow: hidden;
                display: flex;
                flex-wrap: wrap;
                justify-content: right;
                padding: 10px 0 10px 0;
                flex-direction: row-reverse;

            }


            .navigator a {
                float: right;
                color: #FFFFFF;               /* Header Navigation Settings text color, font size, alignment */
                text-align: center;
                padding: 7px 10px;
                text-decoration: none;
                font-size: 12px;
            }

            .logo {
                position: absolute;
                top: 0;
                left: 0;
                transform: none;
                padding: 10px;
                height: 50px;
                margin: 0;
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

            .dropdown {
                float: right;
                overflow: hidden;

            }

            .dropdown .dropbtn {
                cursor: pointer;
                font-size: 12px;
                border: none;
                outline: none;
                color: #FFFFFF;
                padding: 7px 10px;
                background-color: inherit;
                font-family: inherit;
                margin: 0;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                box-shadow: 0px 4px 8px 0px rgba(0, 0, 0, 0.2);
                z-index: 9999;
            }

            .dropdown-content a {
                float: none;
                color: black;
                padding: 6px 8px;
                text-decoration: none;
                display: block;
                text-align: left;
            }

            .dropdown-content a:hover {
                background-color: #ddd;
            }

            .dropdown:hover .dropdown-content {
                display: block;
            }

            .dropdown:hover .dropbtn {
                background-color: #FFFFFF;
                color: #29668B;
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
                padding: 10px 0;
            }

            .footer-columns {
                max-width: 600px;
                margin: 0 0 0 250px;
                display: flex;
                flex-wrap: wrap;
            }

            .footer-columns > div {
                flex: 1;
                text-align: left;
            }

            .footer-col-1 img {
                max-width: 75px;
                height: auto;
                margin: 7px 12px;
            }

            .social-icons {
                list-style: none;
                padding: 0;
                margin: 0;
            }

            .social-icons li {
                display: inline-block;
                margin: 0 5px;
                height: 20px;
                width: 20px;
            }

            .social-icons a {
                color: black;
            }

            .footer-links {
                list-style: none;
                padding: 0;
                margin: 0;
            }

            .footer-links li {
                display: block;
                margin-bottom: 5px;
                margin-right: 5px;
            }

            .footer-links a {
                text-decoration:none;
                font-size:10px;
            }

            .footer-slogan {
                font-size: 7px;
                max-width: 100px;
            }

            .sec1 {
                background-color: white; /* add a blue background color to the team section */
                padding: 10px;
                max-width: 85%; /* limit the maximum width of the section to 800 pixels */
                margin: 0 auto; /* center the section horizontally within its parent container */
                color: black; /* set the text color to white */
                line-height: 2.0; /* add some spacing between lines */
                font-family: "Calibri", sans-serif;

            }

        }



        /* CSS style for mobile responsiveness */
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

            .blog p{
                color: gray;
            }
            .blog  h5{
                padding-top: 12px;
                padding-bottom: 12px;
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

            .overlays {
                position: absolute;
                top: 0;
                bottom: 0;
                left: 0;
                right: 0;
                background-color: rgba(0,0,0,0.5);
                color: white;
                text-align: center;
                z-index: 1;
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

            .dropdown .dropbtn {
                cursor: pointer;
                font-size: 9px;
                border: none;
                outline: none;
                color: #FFFFFF;
                padding: 5px 10px;
                background-color: inherit;
                font-family: inherit;
                margin: 0;
                z-index: 2;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 90%;
                box-shadow: 0px 4px 8px 0px rgba(0, 0, 0, 0.2);
                z-index: 2;
            }

            .dropdown-content a {
                float: none;
                color: black;
                padding: 6px 8px;
                text-decoration: none;
                display: block;
                text-align: left;
                z-index: 2;
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
                padding: 10px 0;
            }

            .footer-columns {
                max-width: 600px;
                margin: 0 0 0 30px;
                display: flex;
                flex-wrap: wrap;
            }

            .footer-columns > div {
                flex: 1;
                text-align: left;
            }

            .footer-col-1 img {
                max-width: 75px;
                height: auto;
                margin: 7px 12px;
            }

            .social-icons {
                list-style: none;
                padding: 0;
                margin: 0;
            }

            .social-icons li {
                display: inline-block;
                margin: 0 5px;
                height: 20px;
                width: 20px;
            }

            .social-icons a {
                color: black;
            }

            .footer-links {
                list-style: none;
                padding: 0;
                margin: 0;
            }

            .footer-links li {
                display: block;
                margin-bottom: 5px;
                margin-right: 5px;
            }

            .footer-links a {
                text-decoration:none;
                font-size:10px;
            }

            .footer-slogan {
                font-size: 7px;
                max-width: 100px;
            }

            li {
                font-size: 10px; /* set the font size to 20 pixels */
            }

            article {
                width: 95%;
                margin-bottom: 20px;
            }
            article,
            article section {
                margin: 0;
                padding:0 15px;
                display: flex;
                flex-direction: column;
            }
            article header,
            article footer {
                height: auto;
            }

            .sec1 {
                background-color: white; /* add a blue background color to the team section */
                padding: 10px 10px 2px;
                max-width: 85%; /* limit the maximum width of the section to 400 pixels */
                margin: 0 auto; /* center the section horizontally within its parent container */
                color: black; /* set the text color to white */
                line-height: 2.0; /* add some spacing between lines */
                font-family: 'Calibri', sans-serif; /* set the font to Calibri */
            }

        }

    </style>

</head>
<body>

<!-- Navbar -->
<div class="navigator">
    <a href="/" class="mainB">Home</a>
    <a href="/aboutUs">About</a>

    <!-- Existing provision dropdown menu -->
    <div class="dropdown">
        <button class="dropbtn">Existing Provision
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="/englishLP">English Language Provision</a>
            <a href="/refugEAP">RefugEAP Programme</a>
        </div>
    </div>

    <!-- Practitioner resources dropdown menu -->
    <div class="dropdown">
        <button class="dropbtn">Practitioner Resources
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="/developingProvisionPage">Developing provision</a>
            <a href="/evidenceBasePage">Evidence Base</a>
            <a href="/resourcesPage">Practical Resources</a>
        </div>
    </div>

    <!-- Blog dropdown menu -->
    <div class="dropdown">
        <button class="dropbtn" href="/blogPage">Blog
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="/blogPage">Case Studies</a>
            <a href="/blogPage">Testimonials</a>
            <a href="/blogPage">Other Blog Contributions</a>
        </div>
    </div>

    <a href="/eventPage">Events</a>

    <!-- Contact Us dropdown menu -->
    <div class="dropdown">
        <button class="dropbtn">Connect
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="/contactUs">Contact Us</a>
            <a href="/joinUs">Join Us</a>
            <a href="/directoryPage">Directory</a>
        </div>
    </div>

    <img class="logo" src="https://eap4socialjustice.files.wordpress.com/2022/01/refugeap-banner-pencil.png" />
</div>

<!-- Header -->

<header>
    <div class="container">
        <div class="background-image"></div>
        <div class="overlays" style="padding-top: 70px">
            <h1>${blog.title}</h1>
        </div>
    </div>

</header>

<section class="sec1">
    <h1>${blog.title}</h1>
    <p class="meta">Posted on <fmt:formatDate value="${blog.date}" pattern="dd MMMM, yyyy" />, by ${blog.name}</p>
    <p>${blog.content}</p>
</section>
<footer>
    <div class="footer-columns">
        <div class="footer-col-1">
            <img src="https://eap4socialjustice.files.wordpress.com/2022/01/refugeap-banner-pencil.png" alt="RefugEAP Logo">
            <p class="footer-slogan">The RefugEAP Network's overarching objective is to facilitate the development of widening participation initiatives enabling refugee-background students to access HE via English language pathways, with a particular focus on English for Academic Purposes. </p>
        </div>
        <div class="footer-col-2">
            <p>Follow us on</p>
            <ul class="social-icons">

                <li class="iconHover"><a href="https://twitter.com/EapForSJ" target="_blank"><i class="fa fa-twitter fa-2x"></i></a></li>

            </ul>
        </div>
        <div class="footer-col-3">
            <p>Useful Links</p>
            <ul class="footer-links">
                <li><a href="/homePage">Home</a></li>
                <li><a href="/blogPage" style="text-decoration: underline">Blog</a></li>
                <li><a href="/aboutUs">About Us</a></li>
                <li><a href="/eventPage">Events</a></li>
                <li><a href="/contactUs">Contact Us</a></li>
            </ul>
        </div>
    </div>
</footer>
</body>
</html>