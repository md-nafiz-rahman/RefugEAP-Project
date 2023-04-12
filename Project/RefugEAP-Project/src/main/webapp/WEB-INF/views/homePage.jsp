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
                    eventList.append('<div class="event-item"><strong>' + event.event_title + '</strong><br/>' +
                        event.event_more_info + '<br/>' +
                        'Date: ' + event.formattedDate + '<br/>' +
                        'Time: ' + event.formattedTime + '</div><hr/>');
                });
            } else {
                eventList.append('<div class="event-item"><strong>No events found on this date.</strong></div><hr/>');
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
            padding-top: 125px;
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

        .split{
            display: grid;
            height: auto;
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
            float: top;
            size: 10px;
            padding-left: 20%;
            padding-right: 20%;
            background-size: cover;
        }
        .events {
            height: 800px;
            float: right;
            width: 50%;
        }

        #events li {
            font-size: 20px;
            padding: 10px 0;
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

        .event-item {
            background-color: #f8f8f8;
            /*max-width: 50%;*/
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center; /* Add this line to center the text */
        }

        .event-item strong {
            font-size: 20px;
        }

        .event-item p {
            font-size: 16px;
            margin-top: 0;

        }

        .has-event {
            background-color: rgba(255, 0, 0, 0.8); /* Change the background color */
            position: relative;
        }

        .has-event::before {
            content: '';
            width: 6px;
            height: 6px;
            background-color: black; /* Change the dot color */
            border-radius: 50%;
            position: absolute;
            bottom: 3px;
            right: 3px;
        }

        .selected-date {
            background-color: #3399ff;
            color: white;
        }

        .view-counter {
            border: 1px solid black;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #fafafa;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2);
        }

        .view-counter h2 {
            margin: 0;
            font-size: 24px;
            font-weight: bold;
            color: #29668B;
        }

        .blog-wrapper {
            width: 50%;
            float: left;
            align-items: center;
            justify-content: center;
            height: 1000px;
            background-color: #f6f6f6;
            padding: 30px;
        }

        .blog-wrapper h2 {
            font-size: 48px;
            font-weight: bold;
            color: #29668b;
            margin-bottom: 60px;
        }

        .post-wrapper {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            justify-content: center;
            width: 100%;
            max-width: 800px;
            /*margin-right: 5%;*/
            /*margin-left: 5%;*/
            padding: 30px;
            background-color: #ffffff;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .post-title {
            font-size: 36px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #333333;
        }

        .post-content {
            font-size: 18px;
            line-height: 1.5;
            margin-bottom: 30px;
            color: #555555;
        }

        .post-author {
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: flex-start;
            font-size: 16px;
            color: #888888;
        }

        .author-name {
            margin-right: 20px;
        }

        .view-more-btn-container {
            display: flex;
            align-items: center;
            justify-content: center;
            margin-top: 40px;
        }

        .view-more-btn {
            display: inline-block;
            padding: 16px 32px;
            font-size: 20px;
            font-weight: bold;
            text-align: center;
            text-decoration: none;
            color: #ffffff;
            background-color: #29668b;
            border: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .view-more-btn:hover {
            background-color: #1d4e6e;
        }

        /* Reset styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        /* Layout */
        .event-list {
            max-width: 1200px;
            margin: 0 auto;
            padding: 50px 20px;
            text-align: center;
        }
        .section-title {
            margin-bottom: 40px;
            font-size: 36px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 2px;
        }
        .card-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            grid-gap: 20px;
        }
        .card {
            display: flex;
            flex-direction: column;
            height: 100%;
            background-color: #fff;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
            cursor: pointer;
            overflow: hidden;
        }
        .card:hover {
            transform: translateY(-5px);
        }
        .card-body {
            flex-grow: 1;
            padding: 20px;
        }
        .card-title {
            margin-bottom: 10px;
            font-size: 24px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1px;
        }
        .card-text {
            margin-bottom: 10px;
            font-size: 18px;
            line-height: 1.5;
            color: #666;
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
                height: 350px;
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
                height: 300px;
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
                padding-top: 50px;
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
                min-width: 160px;
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

            .view-counter {
                border: 1px solid black;
                display: flex;
                justify-content: center;
                align-items: center;
                background-color: #fafafa;
                border-radius: 8px;
                padding: 20px;
                box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2);
            }

            .view-counter h2 {
                font-size: 16px;
            }

            .split{
                display: block;
                height: auto;
            }

            .blog-wrapper {
                width: 100%;
                float: left;
                align-items: center;
                justify-content: center;
                height: 500px;
                background-color: #f6f6f6;
                padding: 30px;
            }

            .blog-wrapper h2 {
                font-size: 20px;
                font-weight: bold;
                color: #29668b;
                margin-bottom: 20px;
                justify-content: center;
                padding-left: 25%;
            }

            .post-wrapper {
                display: flex;
                flex-direction: column;
                align-items: flex-start;
                justify-content: center;
                width: 100%;
                max-width: 800px;
                /*margin-right: 5%;*/
                /*margin-left: 5%;*/
                padding: 10px;
                background-color: #ffffff;
                box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
                border-radius: 10px;
            }

            .post-wrapper h3 {
                font-size: 18px;
            }

            .post-title {
                font-size: 36px;
                font-weight: bold;
                margin-bottom: 20px;
                color: #333333;
            }

            .post-content {
                font-size: 18px;
                line-height: 1.5;
                margin-bottom: 30px;
                color: #555555;
            }

            .post-author {
                display: flex;
                flex-direction: row;
                align-items: center;
                justify-content: flex-start;
                font-size: 16px;
                color: #888888;
            }

            .author-name {
                margin-right: 20px;
            }

            .view-more-btn-container {
                display: flex;
                align-items: center;
                justify-content: center;
                margin-top: 40px;
            }

            .view-more-btn {
                display: inline-block;
                padding: 16px 32px;
                font-size: 20px;
                font-weight: bold;
                text-align: center;
                text-decoration: none;
                color: #ffffff;
                background-color: #29668b;
                border: none;
                border-radius: 5px;
                transition: background-color 0.3s ease;
            }


            .events {
                height: 1000px;
                width: 100%;
                padding-right: 10%;
                padding-left: 10%;
                margin-bottom: 40px;
            }

            .event-list {
                width: 100%;
                margin: 0 auto;
                padding: 50px 20px;
                text-align: center;
            }

            .section-title {
                margin-bottom: 40px;
                font-size: 20px;
                text-transform: uppercase;
                letter-spacing: 2px;
            }

            .card-body {
                flex-grow: 1;
                padding: 20px;
            }
            .card-title {
                margin-bottom: 10px;
                font-size: 18px;
                font-weight: 700;
                text-transform: uppercase;
                letter-spacing: 1px;
            }
            .card-text {
                margin-bottom: 10px;
                font-size: 14px;
                line-height: 1.5;
                color: #666;
            }

            .view-more-btn {
                font-size: 16px;
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
        <div class="overlay">
            <h1>RefugEAP Network</h1>
            <p>RefugEAP is a free online pre-university academic English skills programme for refugee-background students across the UK. <br>
                It is for students who need to improve their academic English skills to help them access a degree programme at university,<br>
                but perhaps have not been able to access a formal pre-sessional English for Academic Purposes (EAP) programme yet. RefugEAP <br>
                has been developed to meet this need, providing students with an opportunity to continue to develop their academic English skills <br>
                in a supportive way while they are waiting for more formal opportunities to become available.</p>
        </div>
    </div>

</header>


<!-- ViewCounter -->

<div class="view-counter">
    <h2>This page has been viewed: ${total_views} times</h2>
</div>

<!-- Split Grid -->
<div class="split">
    <div class="second">
        <!-- Blog Post -->
        <div class="blog-wrapper">
            <h2>Recent Blog Posts</h2>
            <c:forEach begin="0" end="1" step="1" varStatus="loop">
                <c:set var="reversedIndex" value="${acceptedBlogs.size() - 1 - loop.index}" />
                <c:set var="blog" value="${acceptedBlogs[reversedIndex]}" />
                <div class="post-wrapper">
                    <h3 class="post-title">${blog.title}</h3>
                    <p class="post-content"><a href="/blogPage">Read More</a></p>
                    <div class="post-author">
                        <p class="author-name">Author: ${blog.name}</p>
                        <p>Date Posted: <fmt:formatDate value="${blog.date}" pattern="dd-MM-yyyy" /></p>
                    </div>
                </div>
            </c:forEach>
            <div class="view-more-btn-container">
                <a href="/blogPage" class="view-more-btn">View More</a>
            </div>
        </div>
        <!-- Twitter feed -->

        <div class="events">
            <a class="twitter-timeline" data-height="1000" href="https://twitter.com/EapForSJ?ref_src=twsrc%5Etfw">Tweets by EapForSJ</a>
            <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
        </div>
    </div>
</div>

<!-- Events list Upcoming -->
<div class="event-list">
    <h2 class="section-title">Upcoming Events</h2>
    <div class="card-grid">
        <c:forEach var="event" items="${acceptedEvents}" varStatus="loop">
            <c:if test="${loop.count <= 3}">
                <div class="card">
                    <div class="card-body">
                        <h3 class="card-title">${event.getEvent_title()}</h3>
                        <p class="card-text">${event.getFormattedDate()} at ${event.getFormattedTime()}</p>
                        <p class="card-text">${event.getEvent_more_info()}</p>
                    </div>
                </div>
            </c:if>
        </c:forEach>
    </div>
    <div class="view-more-btn-container">
        <a href="/eventPage" class="view-more-btn">View All Events</a>
    </div>
</div>

<!-- Footer -->
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