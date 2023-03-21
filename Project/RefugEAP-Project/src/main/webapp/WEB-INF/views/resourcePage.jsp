<!DOCTYPE html>
<html lang="en">
<head>
    <title>Refugee eap</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet"> <!--Google font link-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
            color: black;
            text-decoration:none;
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
            font-family: "Times New Roman";
        }

        .sec2 {
            background-color: white; /* add a blue background color to the team section */
            padding: 10px;
            max-width: 1200px; /* limit the maximum width of the section to 800 pixels */
            margin: 0 auto; /* center the section horizontally within its parent container */
            color: black; /* set the text color to white */
            line-height: 2.0; /* add some spacing between lines */
            font-family: "Times New Roman";
        }
        .sec3 {
            background-color: white; /* add a blue background color to the team section */
            padding: 10px;
            max-width: 1600px; /* limit the maximum width of the section to 800 pixels */
            max-height: 1000px;
            margin: 0 auto; /* center the section horizontally within its parent container */
            margin-bottom: 60px;
            color: black; /* set the text color to white */
            line-height: 2.0; /* add some spacing between lines */
        }

        #evidence_base_title {
            background-color: white; /* add a blue background color to the team section */
            padding: 10px;
            max-width: 1600px; /* limit the maximum width of the section to 800 pixels */
            max-height: 1000px;
            margin: 0 auto; /* center the section horizontally within its parent container */
            margin-bottom: 20px;
            color: black; /* set the text color to white */
            line-height: 2.0; /* add some spacing between lines */

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

        .staffImg {
            max-width: 20%;
            max-height: 20%;
        }


    </style>
</head>
<body>

<!-- Navbar -->
<div class="navigator">
    <a href="/">Home</a>
    <a href="/blogPage">Blog</a>
    <a href="/aboutUs"  class="mainB">About Us</a>
    <a href="/eventPage">Events</a>
    <a href="/contactUs">Contacts</a>
    <img class="logo" src="https://eap4socialjustice.files.wordpress.com/2022/01/refugeap-banner-pencil.png" />
</div>

<!-- Header -->

<header>
    <div class="container">
        <div class="background-image"></div>
        <div class="overlays" style="padding-top: 70px">
            <h1>Resources</h1>
        </div>
    </div>

</header>


<section class="sec2">

    <p>We have compiled a collection of practical resources to support any practitioners / organisations looking to develop 'pathway to Higher Education' English language provision for refugee-background students (RBS), with a particular focus on English for Academic Purposes (EAP). We have done this in the form of a Refugee Network Resource Bank Padlet, as we would like to encourage practitioners from around the sector to contribute links / resources to this on an ongoing basis. </p>
</section>

<section class="sec1">
    <p>Please feel free to add to this Padlet if you have resources / links on this topic which might help others who are working in this area. Contributions are set to 'anonymous', but you are free to add your name to any posts/comments if you wish to. </p>
</section>

<section class="sec2">
    <p>The categories included in this Padlet include (among others): examples of relevant initiatives; resources related to trauma-informed practice; training resources for those working with refugee background students; useful partner organisations which can support your initiatives; job / role descriptions for practitioners across the sector focusing on supporting RBS. </p>
</section>

<section class="sec3">
    <div class="padlet-embed" style="border:1px solid rgba(0,0,0,0.1);border-radius:2px;box-sizing:border-box;overflow:hidden;position:relative;width:100%;background:#F4F4F4"><p style="padding:0;margin:0"><iframe src="https://padlet.com/embed/94dn9e90rewkm1p3" frameborder="0" allow="camera;microphone;geolocation" style="width:100%;height:608px;display:block;padding:0;margin:0"></iframe></p><div style="display:flex;align-items:center;justify-content:end;margin:0;height:28px"><a href="https://padlet.com?ref=embed" style="display:block;flex-grow:0;margin:0;border:none;padding:0;text-decoration:none" target="_blank"><div style="display:flex;align-items:center;"><img src="https://padlet.net/embeds/made_with_padlet_2022.png" width="114" height="28" style="padding:0;margin:0;background:0 0;border:none;box-shadow:none" alt="Made with Padlet"></div></a></div></div>
</section>

<h1 id="evidence_base_title">Evidence Base</h1>

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
                <li><a href="/homePage">Home</a></li>
                <li><a href="/blogPage">Blog</a></li>
                <li><a href="/aboutUs">About Us</a></li>
                <li><a href="/eventPage">Events</a></li>
                <li><a href="contactUs.jsp">Contact Us</a></li>
            </ul>
        </div>
    </div>
</footer>
</body>
</html>