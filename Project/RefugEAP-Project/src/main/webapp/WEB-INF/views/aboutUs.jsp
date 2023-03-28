<!DOCTYPE html>
<html lang="en">
<head>
    <title>RefugEAP - About Us</title>
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
        }

        h2 {
            font-family: 'Calibri', sans-serif;
            font-size: 35px;
            text-align: center;
        }

        h3 {
            font-size: 40px;
        }

        h4{
            font-size: 36px;
        }

        p {
            font-size: 20px;
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
            padding: 20px 20px 5px;
            max-width: 1200px; /* limit the maximum width of the section to 800 pixels */
            margin: 0 auto; /* center the section horizontally within its parent container */
            color: black; /* set the text color to white */
            line-height: 2.0; /* add some spacing between lines */
            font-family: 'Calibri', sans-serif; /* set the font to Calibri */
            display: flex; /* make the section a flex container */
            flex-wrap: wrap; /* allow the items to wrap to the next line if needed */
            justify-content: center; /* center the items horizontally */
        }

        .sec2 {
            background-color: white; /* add a blue background color to the team section */
            padding: 40px 40px 10px;
            max-width: 1200px; /* limit the maximum width of the section to 800 pixels */
            margin: 0 auto; /* center the section horizontally within its parent container */
            color: black; /* set the text color to white */
            line-height: 2.0; /* add some spacing between lines */
            font-family: 'Calibri', sans-serif; /* set the font to Calibri */
        }

        li {
            font-size: 20px; /* set the font size to 20 pixels */
        }

        figure {
            display: flex; /* display the image and caption as a flex container */
            flex-direction: row; /* stack the image and caption side by side */
            align-items: center; /* center the contents horizontally */
            text-align: center; /* center the caption text */
            margin: auto; /* add some margin around each figure */
            padding-bottom: 40px;
        }

        figure:nth-child(even) {
            flex-direction: row-reverse; /* alternate the direction of the flex container between rows */
        }

        figcaption {
            text-align: left;
            margin-top: 10px; /* add some space between the image and caption */
            font-weight: bold; /* make the caption text bold */
            text-align: left; /* align the caption text to the left */

        }

        .staffImg {
            max-width: 20%;
            max-height: 20%;
            margin: 0 20px 0 20px;
            border: 2px solid #29668B;
        }

        .staffText {
            text-align: left !important;
            font-size: 18px;
            font-family: Calibri, sans-serif;
            padding-left: 20px;
            padding-right: 20px;
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

            .staffText {
                text-align: left !important;
                font-size: 10px;
                font-family: Calibri, sans-serif;
                padding-left: 10px;
                padding-right: 10px;
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
                height: 160px;
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
                height: 20px;
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

            input[type="text"],
            input[type="email"],
            textarea {
                width: 100%;
                padding: 5px;
                margin-bottom: 10px;
                border-radius: 2px;
                border: 1px solid gray;
                font-size: 10px;
            }

            input[type="submit"] {
                background-color: black;
                color: white;
                padding: 5px 10px;
                border-radius: 2px;
                border: none;
                font-size: 10px;
                cursor: pointer;
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
                max-width: 500px; /* limit the maximum width of the section to 800 pixels */
                margin: 0 auto; /* center the section horizontally within its parent container */
                color: black; /* set the text color to white */
                line-height: 2.0; /* add some spacing between lines */
                font-family: 'Calibri', sans-serif; /* set the font to Calibri */
                display: flex; /* make the section a flex container */
                flex-wrap: wrap; /* allow the items to wrap to the next line if needed */
                justify-content: center; /* center the items horizontally */
            }

            .sec2 {
                background-color: white; /* add a blue background color to the team section */
                padding: 20px 20px 5px;
                max-width: 500px; /* limit the maximum width of the section to 800 pixels */
                margin: 0 auto; /* center the section horizontally within its parent container */
                color: black; /* set the text color to white */
                line-height: 2.0; /* add some spacing between lines */
                font-family: 'Calibri', sans-serif; /* set the font to Calibri */
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

            .staffImg {
                max-width: 20%;
                max-height: 20%;
                margin: 0 10px 0 10px;
                border: 1px solid #29668B;
            }

            .staffText {
                text-align: left !important;
                font-size: 10px;
                font-family: Calibri, sans-serif;
                padding-left: 10px;
                padding-right: 10px;
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
            <h1>ABOUT US</h1>
        </div>
    </div>

</header>

<section class="sec2">
    <h2>Purpose</h2>
    <p>The RefugEAP Network's overarching objective is to facilitate the development and implementation of 'pathway to Higher Education' English language provision for refugee-background students (RBS), with a particular focus on English for Academic Purposes (EAP).</p>
</section>

<section class="sec2">
    <h2>Why is this Work Needed?</h2>
    <p>In marked contrast to the ESOL classroom, the EAP classroom has not traditionally been a space which is open and accessible to refugee-background students (RBSs). This is due to the presence of a variety of systemic barriers, reflecting those associated with difficulties that refugees face in accessing HE in general, which includes that of the prohibitive cost of programmes of study. While ESOL provision is widely and freely available for these students, EAP provision is typically not, and the importance of EAP has been outlined by Jacqueline Stevenson and Sally Baker in their book Refugees in Higher Education: Debates, Discourse and Practice as follows:

        "What those seeking access to HE need is English for Academic Purposes which enables learners to develop those sorts of English language skills needed for higher level academic and vocational courses"

        Although free places on the latter have gradually been growing across the sector, the need still by far outstrips demand, and there is still much work to be done to increase the numbers of EAP opportunities open to refugee background students wishing to access HE.
    </p>
</section>

<section class="sec2">
    <h2>RefugEAP Network Working Group</h2>
    <p>The RefugEAP Network Working Group is working to redress this situation. It consists of a small group of EAP practitioners, researchers and managers from across the UK HE sector working together to develop and run the RefugEAP Network. This working group, which is a branch of the BALEAP EAP for Social Justice Special Interest Group, was established in April 2022.</p>
</section>

<section class="sec2">
    <h2>Aims of the RefugEAP Network</h2>
    <p>The RefugEAP Network has been set up:

    <ol>
        <li>To connect and support individuals and institutions from across the UK HE sector who are 	      keen to take this work forward

        <li> To gather and share examples of good practice and impact in order to:
            <ul>
                <li>a.  Provide evidence of successful sanctuary initiatives related to facilitating access to EAP to allow individuals/organisations to build strong cases for the development of similar initiatives within their institutions;</li>
                <li>b.  Provide ideas, strategies and resources to those developing and engaging in sanctuary initiatives </li>
            </ul>

        <li>To advocate for increased opportunities across the HE sector for RBSs to access pre-sessional 	           EAP provision (or similar) and successfully move onto degree programmes</li>

        <li>To create new sector-wide systems, where necessary, to optimise communication flow 		between all stakeholders (including universities, RBSs, potential partner organisations) in order 		to match  opportunities to needs </li>
    </ol>

    </p>
</section>

<section class="sec1">
    <h2>Working Group</h2>

    <p>The RefugEAP Network Working Group consists of a small group of EAP practitioners, researchers and managers from across the UK HE sector working together to develop and run the RefugEAP Network. Meet the members below:</p>

    <br>
    <br>

    <figure>
        <img class="staffImg" src="${pageContext.request.contextPath}/images/Aleks_Palanac.jpg" alt="Aleks Palanac">
        <figcaption>Aleks Palanac</figcaption>
        <p class="staffText">Aleks Palanac is Convenor of the RefugEAP Network and Head of Sanctuary at the University of Leicester. She has been heavily involved in developing its University of Sanctuary initiatives, particularly by widening participation to HE for asylum seekers and refugees through trauma-informed English language provision (ESOL and EAP). More information about her sanctuary and social justice work in EAP and ESOL is available <a href="https://www.researchgate.net/profile/Aleks-Palanac" target=”_blank” >here</a>. Contact: <a href="mailto:ap417@le.ac.uk">ap417@le.ac.uk</a> Twitter: <a href="https://twitter.com/AleksPalanac">@AleksPalanac</a></p>
    </figure>

    <figure>
        <img class="staffImg" src="${pageContext.request.contextPath}/images/Tomasz.jpg" alt="Dr Tomasz John">
        <figcaption>Dr Tomasz John</figcaption>
        <p class="staffText">Dr Tomasz John (he/him) is a Teaching Fellow in TESOL and Intercultural Communication at University of Strathclyde (Glasgow). Tomasz worked as an EAP practitioner and Head of EAP for over 10 years. He's a Co-convener and Comms Officer of the BALEAP EAP4SJ SIG. Tomasz is passionate about ethical and comprehensive internationalisation of HE, decolonisation of curriculum and representation in ELT . Find out more about his work <a href="https://eur03.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpureportal.strath.ac.uk%2Fen%2Fpersons%2Ftomasz-john&data=05%7C01%7Cap417%40leicester.ac.uk%7C25ec2e7d32dd43ba440f08db1e32f801%7Caebecd6a31d44b0195ce8274afe853d9%7C0%7C0%7C638136976503013971%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=ShW0do9OL7YjOYfWr4wq6ATMwmK76JB6DGtYFPzcOus%3D&reserved=0" target=”_blank” >here</a>. Contact: <a href="mailto:tomasz.john@strath.ac.uk">tomasz.john@strath.ac.uk</a> Twitter: <a href="https://twitter.com/tomaszjohn84">@tomaszjohn84</a></p>
    </figure>

    <figure>
        <img class="staffImg" src="${pageContext.request.contextPath}/images/Iwona.jpg" alt="Iwona Winiarska-Pringle">
        <figcaption>Iwona Winiarska-Pringle</figcaption>
        <p class="staffText">Iwona Winiarska-Pringle is an English for Academic Purposes Lecturer at the University of Glasgow with an additional role of overseeing refugee-background students support provision within English for Academic Study. Iwona volunteers with RefugEAP and BALEAP EAP for Social Justice SIG. Her professional interests are educational dialogue, ethical internationalisation, teacher development and relational pedagogies. Contact: <a href="mailto:iwona.winiarska-pringle@glasgow.ac.uk">iwona.winiarska-pringle@glasgow.ac.uk</a>  Twitter: <a href="https://twitter.com/IwonaPringle">@IwonaPringle</a></p>
    </figure>

    <figure>
        <img class="staffImg" src="${pageContext.request.contextPath}/images/Paul_Breen.png" alt="Paul Breen">
        <figcaption>Paul Breen</figcaption>
        <p class="staffText">Paul Breen is a Senior Digital Learning Developer and Senior Lecturer in EAP with UCL's Academic Communication Centre. He gained his Masters and PhD qualifications at The University of Manchester in the field of Education, with a particular focus on English Language Teaching, English for Academic Purposes and Educational Technology. He has worked in academic and media contexts in Britain, Ireland and overseas. His publications include both academic and non-academic output, ranging from textbooks to the 2018 book version of his PhD, entitled Developing Educators for the Digital Age.
            Contact <a href="mailto:paul.breen@ucl.ac.uk">paul.breen@ucl.ac.uk</a> Twitter: <a href="https://twitter.com/charltonmen">@charltonmen</a>
        </p>
    </figure>

    <figure>
        <img class="staffImg" src="${pageContext.request.contextPath}/images/Sadie-Jade.jpg" alt="Sadie-Jade Fouracre-Reynolds">
        <figcaption>Sadie-Jade Fouracre-Reynolds</figcaption>
        <p class="staffText">Sadie-Jade Fouracre-Reynolds is a language teacher of two decades with a background in science. She has worked in a wide range of contexts including EAP, ESOL, EAL and CLIL. A combination of teaching experience, course development, material creation and outreach project management has fed into her work with vulnerable communities and development of teacher support and mentoring programmes. Contact: <a href="mailto:s.fouracre-reynolds@swansea.ac.uk">s.fouracre-reynolds@swansea.ac.uk</a>
        </p>
    </figure>

    <figure>
        <img class="staffImg" src="${pageContext.request.contextPath}/images/Amelia_Harker.png" alt="Amelia Harker">
        <figcaption>Amelia Harker</figcaption>
        <p class="staffText">Amelia Harker is the English Language for Widening Participation Coordinator at the University of Edinburgh and an English Language Education Teaching Fellow. She has taught English for Academic Purposes for 15 years but still identifies as a Sociologist whose research interests include: Widening Participation, Internationalisation, Student Voice, Criticality in Higher Education, Critical Pedagogy, and EAP for Social Justice. Her emerging expertise is in Refugee and Asylum Seeker support and Trauma Informed Practice.  Contact: <a href="mailto:Amelia.Harker@ed.ac.uk">Amelia.Harker@ed.ac.uk</a>
        </p>
    </figure>

    <figure>
        <img class="staffImg" src="${pageContext.request.contextPath}/images/Jennifer.png" alt="Jennifer Cowell">
        <figcaption>Jennifer Cowell</figcaption>
        <p class="staffText">Jennifer Cowell works at the University of Stirling and leads on a variety of university-wide in-sessional provisions, including the new Academic and Business English ESAPs in the Business School. She is also: a member of the QAA advisory group for the updated Linguistics benchmark statement (2022); practitioner advisor for TESOLgraphics; an executive committee member of SATEFL; and a tutor at the Stirling School of English. Jen is passionate about: designing accessible and inclusive learning materials which motivate students' learning; promoting decolonisation of the curriculum; and widening participation. Contact: <a href="mailto:jennifer.cowell@stir.ac.uk">jennifer.cowell@stir.ac.uk</a> Twitter: <a href="https://twitter.com/JenMCowell">@JenMCowell</a>
        </p>
    </figure>

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
                <li><a href="/aboutUs" style="text-decoration: underline">About Us</a></li>
                <li><a href="/eventPage">Events</a></li>
                <li><a href="/contactUs">Contact Us</a></li>
            </ul>
        </div>
    </div>
</footer>
</body>
</html>