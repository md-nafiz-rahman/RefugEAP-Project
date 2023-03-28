<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">
<head>
    <title>RefugEAP - Home</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#calendar').fullCalendar({
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,agendaWeek,agendaDay'
                },
                defaultDate: new Date(),
                editable: false,
                eventLimit: true,
                events: function(start, end, timezone, callback) {
                    $.ajax({
                        url: '/api/events',
                        dataType: 'json',
                        data: {
                            start: start.unix(),
                            end: end.unix()
                        },
                        success: function(data) {
                            callback(data);
                            applyEventStyles(data);
                        }
                    });
                },
                dayClick: function(date, jsEvent, view) {
                    // Remove the existing 'selected-date' class
                    $('td.fc-day').removeClass('selected-date');
                    // Add the 'selected-date' class to the clicked date
                    $(jsEvent.target).closest('td.fc-day').addClass('selected-date');
                    fetchEvents(date.format());
                },
            });

            // Handle View All Events button click
            $('#view-event-btn').click(function() {
                $.ajax({
                    url: '/api/events',
                    dataType: 'json',
                    success: function(data) {
                        displayEvents(data);
                    }
                });
            });
        });

        function fetchEvents(date) {
            $.ajax({
                url: '/api/events?date=' + date,
                dataType: 'json',
                success: function(data) {
                    displayEvents(data);
                }
            });
        }

        function applyEventStyles(events) {
            events.forEach(function(event) {
                $('td[data-date="' + event.start.slice(0, 10) + '"]').addClass('has-event');
            });
        }

        function displayEvents(events) {
            var eventList = $('#event-list');
            eventList.empty();

            if (events.length > 0) {
                events.forEach(function(event) {
                    eventList.append('<li class="event-item"><strong>' + event.event_title + '</strong><br/>' +
                        event.event_more_info + '<br/>' +
                        'Date: ' + event.formattedDate + '<br/>' +
                        'Time: ' + event.formattedTime + '</li>');
                });
            } else {
                eventList.append('<li class="event-item"><strong>No events found on this date.</strong></li>');
            }
        }
    </script>
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
            height: 500px;
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
        }



        /* Header Navigation Menu */
        body {
            margin: 0;                               /* Header Navigation google font */
            font-family: 'Oswald', sans-serif;
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
            padding: 30px 50px;
            text-decoration: none;
            font-size: 23px;
        }

        .logo {
            float: left;
            display: block;
            padding: 10px 40px;
            height: 90px;
        }

        .navigator a:hover {
            background-color: #FFFFFF;
            color: black;
        }

        .navigator a.mainB {
            background-color: #f2f2f2;
            color: #29668B;
            padding: 30px 130px;
        }

        /* Dropdown menu styles */
        .dropdown {
            float: right;
            overflow: hidden;
        }

        .dropdown .dropbtn {
            cursor: pointer;
            font-size: 23px;
            border: none;
            outline: none;
            color: #FFFFFF;
            padding: 30px 50px;
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
            color: black;
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
            color: black;
        }

        .split{
            display: grid;
            height: auto;
        }

        .blog {
            float: left;
            width: 50%;
            margin: 0 auto;
            text-align: center;
            color: #dddddd;
            border: 2px solid black;
            background-color: #29668B;
        }

        .post {
            width: 80%;
            margin: 20px auto;
            text-align: left;
            color: black;
            padding: 20px;
            border: 1px solid lightgray;
            border-radius: 10px;
            background-color: #dddddd;
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

        #calendar {
            width: 50%;
            text-align: center;
            float: left;
            font-size: 20px;
            padding-left: 200px;
            padding-right: 200px;
            background-size: cover;

        }
        #events {
            width: 45%;
            float: right;
            padding: 20px;
            background-color: aquamarine;
        }
        #events li {
            width: 50%;
            font-size: 20px;
            padding: 10px 0;
        }
        #event-title {
            width: 45%;
            float: right;
            padding: 20px;
        }
        #view-event-btn {
            position: absolute;
            top: 1500px;
            right: 20px;
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
            color: black;
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

        .button-container {
            text-align: center;
            margin-top: 20px;
            margin-bottom: 20px;
        }

        .button {
            display: inline-block;
            background-color: #FFFFFF;
            color: black;
            padding: 14px 20px;
            text-align: center;
            text-decoration: none;
            font-size: 20px;
            border: 1px solid black;
            cursor: pointer;
            border-radius: 4px;
        }

        .button:hover {
            background-color: #45a049;
        }

        #calendar {
            margin-bottom: 20px;
            margin-top: 20px;
        }

        #event-title {
            font-size: 24px;
            font-weight: bold;
        }

        #event-list {
            list-style-type: none;
            margin: 0;
        }

        .event-item {
            margin-bottom: 10px;
            margin-left: 1000px;
            margin-right: 100px;
        }

        .has-event {
            background-color: #f1f1f1;
        }

        .selected-date {
            background-color: #f9d8c7;
        }

        .fc-today-button,
        .fc-month-button,
        .fc-agendaWeek-button,
        .fc-agendaDay-button {
            text-transform: capitalize;
        }

        .fc-button {
            background-color: white;
            color: black;
            border: none;
            padding: 6px 12px;
            font-size: 8px;
            line-height: 1.5;
            border-radius: 4px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            transition: background-color 0.3s ease;
        }

        .fc-button:hover {
            background-color: #0069d9;
        }

        .view-counter {
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #29668B;
            padding: 10px;
        }

        .view-counter h2 {
            margin: 0;
            font-size: 24px;
            font-weight: bold;
            color: white;
        }

    </style>
</head>
<body>

<!-- Navbar -->
<div class="navigator">
    <a href="/" class="mainB">Home</a>
    <a href="/blogPage">Blog</a>
    <a href="/eventPage">Events</a>

    <!-- About Us dropdown menu -->
    <div class="dropdown">
        <button class="dropbtn">About Us
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="/">Our Mission</a>
            <a href="#">Our Team</a>
            <a href="#">Our History</a>
        </div>
    </div>

    <!-- Contact Us dropdown menu -->
    <div class="dropdown">
        <button class="dropbtn">Contact Us
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
            <a href="#">Email</a>
            <a href="#">Phone</a>
            <a href="#">Address</a>
        </div>
    </div>

    <img class="logo" src="https://eap4socialjustice.files.wordpress.com/2022/01/refugeap-banner-pencil.png" />
</div>

<!-- Header -->

<header>
    <div class="container">
        <div class="background-image"></div>
        <div class="overlay" style="padding-top: 125px">
            <h1>RefugEAP Purpose</h1>
            <p>RefugEAP is a free online pre-university academic English skills programme for refugee-background students across the UK. <br>
                It is for students who need to improve their academic English skills to help them access a degree programme at university,<br>
                but perhaps have not been able to access a formal pre-sessional English for Academic Purposes (EAP) programme yet. RefugEAP <br>
                has been developed to meet this need, providing students with an opportunity to continue to develop their academic English skills <br>
                in a supportive way while they are waiting for more formal opportunities to become available.</p>
        </div>
    </div>

</header>

<div class="view-counter">
    <h2>This page has been viewed: ${total_views} times</h2>
</div>

<!-- First Grid -->
<div class="split">
    <div class="second">
        <div class="blog">
            <h1>Recent Blog Posts</h1>

            <c:forEach begin="0" end="1" step="1" varStatus="loop">
                <c:set var="reversedIndex" value="${acceptedBlogs.size() - 1 - loop.index}" />
                <c:set var="blog" value="${acceptedBlogs[reversedIndex]}" />
                <div class="post">
                    <h2>${blog.title}</h2>
                    <p>${blog.content}</p>
                    <div class="author">
                        <p>Author: ${blog.name}</p>
                        <p>Date Posted: <fmt:formatDate value="${blog.date}" pattern="dd-MM-yyyy" /></p>
                    </div>
                </div>
            </c:forEach>
            <div class="button-container">
                <a href="/blogPage" class="button">View More</a>
            </div>
        </div>

        <div id="calendar"></div>
        <ul id="event-list"></ul>
        <button id="view-event-btn">View All Events</button>
    </div>
</div>

<footer>
    <div class="footer-columns">
        <div class="footer-col-1">
            <img src="https://eap4socialjustice.files.wordpress.com/2022/01/refugeap-banner-pencil.png" alt="RefugEAP Logo">
            <p class="footer-slogan">The RefugEAP Network's overarching objective is to facilitate the development of widening participation initiatives enabling refugee-background students to access HE via English language pathways, with a particular focus on English for Academic Purposes. </p>
        </div>
        <div class="footer-col-2">
            <p>Follow us on</p>
            <ul class="social-icons">
                <li><a href="https://www.facebook.com/LeicesterUniversityOfSanctuary/" target="_blank"><i class="fa fa-facebook fa-2x"></i></a></li>
                <li><a href="https://twitter.com/EapForSJ" target="_blank"><i class="fa fa-twitter fa-2x"></i></a></li>
                <li><a href="https://www.instagram.com/" target="_blank"><i class="fa fa-instagram fa-2x"></i></a></li>
            </ul>
        </div>
        <div class="footer-col-3">
            <p>Useful Links</p>
            <ul class="footer-links">
                <li><a href="/" style="text-decoration: underline">Home</a></li>
                <li><a href="/blogPage">Blog</a></li>
                <li><a href="/aboutUs">About Us</a></li>
                <li><a href="/eventPage">Events</a></li>
                <li><a href="/contactUs">Contact Us</a></li>
            </ul>
        </div>
    </div>
</footer>

<script>
    const dateVar = document.getElementById("calendar");
    const presentDate = new Date();
    const months = [
        "January",
        "February",
        "March",
        "April",
        "May",
        "June",
        "July",
        "August",
        "September",
        "October",
        "November",
        "December"
    ];
    dateVar.innerHTML = `${months[presentDate.getMonth()]} ${presentDate.getFullYear()}`;
</script>
</body>
</html>
