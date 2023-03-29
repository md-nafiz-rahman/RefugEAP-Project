<!DOCTYPE html>
<html lang="en">
<head>
    <title>RefugEAP - Resources</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>

        html {
            min-width: auto;
        }

        h1 {
            font-size: 48px;
            text-align: center;
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

        #events li {
            font-size: 20px;
            padding: 10px 0;
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

        .sec1 {
            background-color: white; /* add a blue background color to the team section */
            padding: 10px;
            max-width: 1200px; /* limit the maximum width of the section to 800 pixels */
            margin: 0 auto; /* center the section horizontally within its parent container */
            color: black; /* set the text color to white */
            line-height: 2.0; /* add some spacing between lines */
            font-family: "Calibri", sans-serif;
        }


        li {
            font-size: 20px; /* set the font size to 20 pixels */
        }

        figure {
            display: flex; /* display the image and caption as a flex container */
            flex-direction: column; /* stack the image on top of the caption */
            align-items: center; /* center the contents horizontally */
            text-align: center; /* center the caption text */
        }

        figcaption {
            margin-top: 10px; /* add some space between the image and caption */
            font-weight: bold; /* make the caption text bold */
        }


        table, th, td { /*Style for directory table */
            /*border: 1px solid black;*/
            border-collapse: collapse;
            border-bottom: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        th{ /*Style for directory table header */
            background-color: #023047;
            color: white;
            font-size: 1.25em;
            font-weight: bold;
        }

        .fixtable{ /*Align table in center */
            height:30%;
            width:80%;
            margin-left: auto;
            margin-right: auto;
            font-size: 20px;
        }

        tr:nth-child(even) {background-color: #f2f2f2;}

        /* CSS style for tablet device responsiveness */
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
                color: #29668B;
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

            .sec1 {
                background-color: white; /* add a blue background color to the team section */
                padding: 10px;
                max-width: 85%; /* limit the maximum width of the section to 800 pixels */
                margin: 0 auto; /* center the section horizontally within its parent container */
                color: black; /* set the text color to white */
                line-height: 2.0; /* add some spacing between lines */
                font-family: "Calibri", sans-serif;

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

            table, th, td { /*Style for directory table */
                /*border: 1px solid black;*/
                border-collapse: collapse;
                border-bottom: 1px solid #ddd;
                padding: 10px;
                text-align: left;
            }

            th{ /*Style for directory table header */
                background-color: #023047;
                color: white;
                font-size: 12px;
                font-weight: bold;
            }

            .fixtable{ /*Align table in center */
                height:30%;
                width:80%;
                margin-left: auto;
                margin-right: auto;
                font-size: 12px;
            }

            tr:nth-child(even) {background-color: #f2f2f2;}


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
                color: #29668B;
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
                color: white;
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
                padding: 10px 10px 2px;
                max-width: 85%; /* limit the maximum width of the section to 400 pixels */
                margin: 0 auto; /* center the section horizontally within its parent container */
                color: black; /* set the text color to white */
                line-height: 2.0; /* add some spacing between lines */
                font-family: 'Calibri', sans-serif; /* set the font to Calibri */
                display: flex; /* make the section a flex container */
                flex-wrap: wrap; /* allow the items to wrap to the next line if needed */

            }


            li {
                font-size: 10px; /* set the font size to 20 pixels */
            }

            figure {
                display: flex; /* display the image and caption as a flex container */
                flex-direction: row; /* stack the image and caption side by side */
                align-items: center; /* center the contents horizontally */
                text-align: center; /* center the caption text */
                margin: auto; /* add some margin around each figure */
                padding-bottom: 20px;
            }

            figure:nth-child(even) {
                flex-direction: row-reverse; /* alternate the direction of the flex container between rows */
            }

            figcaption {
                text-align: left;
                margin-top: 5px; /* add some space between the image and caption */
                font-weight: bold; /* make the caption text bold */
                text-align: left; /* align the caption text to the left */

            }

            table, th, td { /*Style for directory table */
                /*border: 1px solid black;*/
                border-collapse: collapse;
                border-bottom: 1px solid #ddd;
                padding: 10px;
                text-align: left;
            }

            th{ /*Style for directory table header */
                background-color: #023047;
                color: white;
                font-size: 10px;
                font-weight: bold;
            }

            .fixtable{ /*Align table in center */
                height:30%;
                width:90%;
                margin-left: auto;
                margin-right: auto;
                font-size: 10px;
            }

            tr:nth-child(even) {background-color: #f2f2f2;}

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
            <a href="/resourcePage">Practical Resources</a>
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
            <h1>English Language Provisions</h1>
        </div>
    </div>

</header>

<br>

<section class="sec1">
    <p>This section outlines examples of different types of "pathway to Higher Education" English language provision for refugee-background students (RBS) ,
        with a particular focus on English for Academic Purposes (EAP). It also links to current opportunities in the UK context.</p>
</section>

<div class="fixtable">

    <table>
        <tr>
            <th>Example of 'pathway to HE' English language provision for RBS</th>
            <th>Examples</th>
        </tr>

        <tr>
            <td>Free places on pre-sessional (pre-university) academic English programmes.
                These are generally full-time, formal programmes with in-house assessments at the end</td>
            <td><a href="https://www.displacedstudent.org.uk/opportunities/sanctuary-fee-waiver-for-pre-sessional-english-programme/" target="_blank">University of Leicester's pre-sessional fee waivers for RBS</a></td>
        </tr>

        <tr>
            <td>Free informal English classes (usually general English) based on a variety of possible models, including:
                <ul>
                    <li>Put on directly by the university (e.g. perhaps by staff in the English language teaching centre or via a staff/student volunteering scheme)</li>
                    <li>Put on in partnership with a charity (e.g. local City of Sanctuary branch)</li>
                    <li>Put on as part of a TESOL teacher training course such as CELTA or MA TESOL and classes taught by student trainees</li>
                </ul>
            </td>
            <td>Free informal English classes (usually general English) based on a variety of possible models, including:
                <ul>
                    <li><a href="https://www.swansea.ac.uk/english-language-training-services/community-classes/" target="_blank">Community Classes - Swansea University</a></li>
                    <li><a href="https://leicester.cityofsanctuary.org/lcos-uol" target="_blank">University of Leicester + Leicester City of Sanctuary ESOL classes</a></li>
                </ul>
            </td>
        </tr>

        <tr>
            <td>Free places on formal exam preparation courses such as IELTS, Cambridge ESOL, Occupational English Test (for requalifying
                medics) - with external exams potentially funded by <a href="https://refuaid.org/" target="_blank">RefuAid.</a></td>
            <td>
                <ul>
                    <li><a href="https://le.ac.uk/cite/eltu/exam-preparation-courses/oet" target="_blank">University of Leicester's OET online intensive</a></li>
                    <li><a href="https://www.sheffield.ac.uk/eltc/part-time/sanctuary-scholarships" target="_blank">University of Sheffield's IELTS classes</a></li>
                </ul>
            </td>
        </tr>

        <tr>
            <td>RefugEAP Programme of free online EAP classes for refugee background students in the UK. This is a part-time, formal
                programme with a mixture of in-house assessments and the option of taking an IELTS exam at the end (funded by <a href="https://refuaid.org/" target="_blank">RefuAid.</a></td>
            <td>
                <ul>
                    <li><a href="https://le.ac.uk/cite/sanctuary-seekers-unit/initiatives/refugeap">https://le.ac.uk/cite/sanctuary-seekers-unit/initiatives/refugeap</a></li>
                </ul>
            </td>
        </tr>
    </table>

    <section class="sec1">
        <h3>Current opportunities in the UK HE context</h3>
        <p>A great resource to explore what opportunities are currently being offered in the UK context is the <a href="https://www.displacedstudent.org.uk/" target="_blank">Displaced Students Opportunities UK website</a>,
            which is a portal for sharing and searching for study opportunities to support people with backgrounds of forced displacement in the UK to access HE.<br>
            The most effective way to search for 'pathway to Higher Education' English language provision on this portal is, in the search filters, for 'level of
            study' select 'pre-university', and for 'type of opportunity' select 'English language course' and 'preparation for university'. This should bring up
            all opportunities with an English language learning element (whether fully or partly).<br>
            If you are a student, the Displaced Opportunities UK website is an accessible way to find out what opportunities are available to you in the UK.
            If you work for a provider that offers these sorts of opportunities to refugee-background students, you can set up an account and share your opportunities
            via this portal. Equally, if your organisation has not yet developed any opportunities of this sort for refugee-background students, the portal provides a
            useful insight into what other providers are doing in this respect (very useful for providing evidence to managers when advocating for provision to be developed).<br>
            As the Displaced Students Opportunities UK website is still in its infancy, it does not have the full range of opportunities uploaded to it yet, so
            another useful website to refer to in the meantime is its predecessor, the <a href="https://star-network.org.uk/access-to-university/courses/" target="_blank">Student Action for Refugees</a> scholarships list (click on the English Language Programmes tab).</p>
    </section>

</div>

<br>

<footer>
    <div class="footer-columns">
        <div class="footer-col-1">
            <img src="https://eap4socialjustice.files.wordpress.com/2022/01/refugeap-banner-pencil.png" alt="RefugEAP Logo">
            <p class="footer-slogan">The RefugEAP Network's overarching objective is to facilitate the development of widening participation initiatives enabling refugee-background students to access HE via English language pathways, with a particular focus on English for Academic Purposes. </p>
        </div>
        <div class="footer-col-2">
            <p>Follow us on</p>
            <ul class="social-icons">

                <li><a href="https://twitter.com/EapForSJ" target="_blank"><i class="fa fa-twitter fa-2x"></i></a></li>

            </ul>
        </div>
        <div class="footer-col-3">
            <p>Useful Links</p>
            <ul class="footer-links">
                <li><a href="/">Home</a></li>
                <li><a href="/blogPage">Blog</a></li>
                <li><a href="/aboutUs">About Us</a></li>
                <li><a href="/eventPage">Events</a></li>
                <li><a href="/contactUs">Contact Us</a></li>
            </ul>
        </div>
    </div>
</footer>
</body>
</html>