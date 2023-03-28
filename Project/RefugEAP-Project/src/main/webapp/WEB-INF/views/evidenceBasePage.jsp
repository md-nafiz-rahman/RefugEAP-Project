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


        body {
            margin: 0;
            font-family: 'Calibri', sans-serif;       /* google font */
            padding: 0;
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

        .sec2 {
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

            .sec1 {
                background-color: white; /* add a blue background color to the team section */
                padding: 10px;
                max-width: 85%; /* limit the maximum width of the section to 800 pixels */
                margin: 0 auto; /* center the section horizontally within its parent container */
                color: black; /* set the text color to white */
                line-height: 2.0; /* add some spacing between lines */
                font-family: "Calibri", sans-serif;

            }

            .sec2 {
                background-color: white; /* add a blue background color to the team section */
                padding: 10px 10px 2px;
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
                font-size: 9px;
            }

            .logo {
                float: left;
                display: block;       /* Header Navigation Settings text color, font size, alignment */
                padding: 5px 10px;
                height: 25px;
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

            .sec2 {
                background-color: white; /* add a blue background color to the team section */
                padding: 10px 10px 2px;
                max-width: 85%; /* limit the maximum width of the section to 800 pixels */
                margin: 0 auto; /* center the section horizontally within its parent container */
                color: black; /* set the text color to white */
                line-height: 2.0; /* add some spacing between lines */
                font-family: "Calibri", sans-serif;
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
            <h1>Evidence Base</h1>
        </div>
    </div>

</header>


<section class="sec1">
    <p>We are keen to build a strong collection of case studies, research studies, testimonials and other forms of evidence that practitioners / organisations can use when developing (or advocating for the development of) robust 'pathway to Higher Education' English language provision for refugee-background students (RBS), with a particular focus on English for Academic Purposes (EAP).</p>
</section>

<section class="sec2">
    <h2>RefugEAP Network's collated evidence</h2>
    <h3>Case studies</h3>
    <p>Case studies compiled via this RefugEAP Network website can be accessed here . We invite practitioners / organisations to contribute a case study outlining one of their own initiatives. These can be submitted via our <a href="/blogPage" target=”_blank” >blog page</a> (via the contributions form) .
    </p>
</section>

<section class="sec1">
    <h3>Testimonials</h3>
    <p>We are also collecting testimonials, which can be accessed here . These can be submitted by anyone involved in these sorts of initiatives, including practitioners, researchers or students. You can contribute your own testimonial via our <a href="/blogPage" target=”_blank” >blog page</a> (via the contributions form) .
    </p>
</section>

<section class="sec2">
    <h3>Other forms of evidence</h3>
    <p>We are also inviting practitioners, researchers and students to contribute other relevant content to our blog page (to add to the evidence base), accessible here . This might be in the form of a written blog post, an audio or video file, or perhaps a combination of media. This category is deliberately broad, and might focus on a range of relevant topics. You can contribute via our <a href="/blogPage" target=”_blank” >blog page</a> (via the contributions form) .
    </p>
</section>

<section class="sec1">
    <h3>Repository of studies on HE access for forced migrants (compiled by Eva Hanna)</h3>
    <p>One of our RefugEAP Network working group members, Eva Hanna, has been curating a very useful repository of studies focusing on HE access for forced migrants, plus language-focused Widening Participation studies. It is accessible in this editable <a href="https://docs.google.com/document/d/1NjAE1-rZ_Rs_i4CpdvQsT7fFbbFSPx1MrFa1fBgV5h4/edit" target=”_blank” >Google Doc</a>, and you are invited to add to this document any relevant resources that you would like to share.
    </p>
</section>

<section class="sec2">
    <h3>Hub for European Refugees (HERE) database)</h3>
    <p>The <a href="https://hubhere.org/#database" target=”_blank” >HERE Database</a> is an extremely useful searchable database of studies / resources related to refugee education in Europe. It is not specifically focused on HE (it focuses on all levels of education) or language education (it focuses on all types of provision), but you can use the search filters to locate HE language provision (e.g. for 'education type' you can select 'language education', and for 'education level' you can select 'tertiary education'). There is also a facility on the HERE website to suggest studies / resources to be included in their database.
    </p>
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
                <li><a href="https://www.facebook.com/LeicesterUniversityOfSanctuary/" target="_blank"><i class="fa fa-facebook fa-2x"></i></a></li>
                <li><a href="https://twitter.com/EapForSJ" target="_blank"><i class="fa fa-twitter fa-2x"></i></a></li>
                <li><a href="https://www.instagram.com/" target="_blank"><i class="fa fa-instagram fa-2x"></i></a></li>
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