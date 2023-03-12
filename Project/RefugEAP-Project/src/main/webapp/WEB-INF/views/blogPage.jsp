<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
            text-decoration: none;
        }

        .footer-slogan {
            font-size: 15px;
            max-width: 300px;
        }

        body {
            font-family: Arial, sans-serif;
            margin: 0;
        }

        .post-header {
            background-color: #333;
            color: #fff;
            padding: 20px;
        }

        .post-footer {
            background-color: #f5f5f5;
            color: #333;
            padding: 10px;
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
            width: 50%;
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

        .containerBlog {
            display: flex;
            height: auto;
        }


    </style>
</head>
<body>

<!-- Navbar -->
<div class="navigator">
    <a href="RefugeeEAP.html">Home</a>
    <a href="BlogPage.html" class="mainB">Blog</a>
    <a href="#aboutUs">About Us</a>
    <a href="#events">Events</a>
    <a href="ContactUs.html">Contacts</a>
    <img class="logo" src="https://eap4socialjustice.files.wordpress.com/2022/01/refugeap-banner-pencil.png" />
</div>

<!-- Header -->

<header>
    <div class="container">
        <div class="background-image"></div>
        <div class="overlay" style="padding-top: 70px">
            <h1>BLOG</h1>
        </div>
    </div>

</header>

<main class="containerBlog">
    <article>
        <header class="post-header">
            <h2>My Blog Post Title</h2>
            <p class="meta">Posted on January 1, 2023, by John Doe</p>
        </header>
        <section>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas molestie, orci ac consectetur bibendum, nisl sapien porta mauris, at tristique felis velit ut nibh. Sed eget ex nec nisl suscipit dictum.</p>
            <p>Nullam ut elit vel nisl tincidunt hendrerit. Ut viverra massa ac lectus molestie interdum. Curabitur vel est vitae orci semper bibendum. In eget tincidunt orci, sit amet lacinia ex. Morbi ornare nisl ac arcu aliquet, et gravida risus tincidunt.</p>
            <h3>Subheading</h3>
            <p>Aliquam varius turpis justo, id volutpat orci vestibulum non. Fusce non felis nulla. Sed mattis elementum nunc a aliquam. Fusce ut velit velit. Sed vel sapien neque. Suspendisse in ex ut dolor malesuada luctus. </p>
            <h3>Another Subheading</h3>
            <p>Pellentesque accumsan vestibulum tortor, eget auctor ex tincidunt vel. Nunc nec rhoncus magna, at pharetra sapien. Etiam ut mauris et tortor imperdiet posuere a ac nibh. Curabitur ac varius dolor, eget blandit mauris. </p>
        </section>
        <footer class="post-footer">
            <p class="tags">Tags: <a>tag1</a>, <a>tag2</a>, <a>tag3</a></p>
        </footer>
    </article>
    <article>
        <header class="post-header">
            <h2>My Blog Post Title</h2>
            <p class="meta">Posted on January 1, 2023, by John Doe</p>
        </header>
        <section>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas molestie, orci ac consectetur bibendum, nisl sapien porta mauris, at tristique felis velit ut nibh. Sed eget ex nec nisl suscipit dictum.</p>
            <p>Nullam ut elit vel nisl tincidunt hendrerit. Ut viverra massa ac lectus molestie interdum. Curabitur vel est vitae orci semper bibendum. In eget tincidunt orci, sit amet lacinia ex. Morbi ornare nisl ac arcu aliquet, et gravida risus tincidunt.</p>
            <h3>Subheading</h3>
            <p>Aliquam varius turpis justo, id volutpat orci vestibulum non. Fusce non felis nulla. Sed mattis elementum nunc a aliquam. Fusce ut velit velit. Sed vel sapien neque. Suspendisse in ex ut dolor malesuada luctus. </p>
            <h3>Another Subheading</h3>
            <p>Pellentesque accumsan vestibulum tortor, eget auctor ex tincidunt vel. Nunc nec rhoncus magna, at pharetra sapien. Etiam ut mauris et tortor imperdiet posuere a ac nibh. Curabitur ac varius dolor, eget blandit mauris. </p>
        </section>
        <footer class="post-footer">
            <p class="tags">Tags: <a>tag1</a>, <a>tag2</a>, <a>tag3</a></p>
        </footer>
    </article>
    <article>
        <header class="post-header">
            <h2>My Blog Post Title</h2>
            <p class="meta">Posted on January 1, 2023, by John Doe</p>
        </header>
        <section>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas molestie, orci ac consectetur bibendum, nisl sapien porta mauris, at tristique felis velit ut nibh. Sed eget ex nec nisl suscipit dictum.</p>
            <p>Nullam ut elit vel nisl tincidunt hendrerit. Ut viverra massa ac lectus molestie interdum. Curabitur vel est vitae orci semper bibendum. In eget tincidunt orci, sit amet lacinia ex. Morbi ornare nisl ac arcu aliquet, et gravida risus tincidunt.</p>
            <h3>Subheading</h3>
            <p>Aliquam varius turpis justo, id volutpat orci vestibulum non. Fusce non felis nulla. Sed mattis elementum nunc a aliquam. Fusce ut velit velit. Sed vel sapien neque. Suspendisse in ex ut dolor malesuada luctus. </p>
            <h3>Another Subheading</h3>
            <p>Pellentesque accumsan vestibulum tortor, eget auctor ex tincidunt vel. Nunc nec rhoncus magna, at pharetra sapien. Etiam ut mauris et tortor imperdiet posuere a ac nibh. Curabitur ac varius dolor, eget blandit mauris. </p>
        </section>
        <footer class="post-footer">
            <p class="tags">Tags: <a>tag1</a>, <a>tag2</a>, <a>tag3</a></p>
        </footer>
    </article>
</main>


<main class="containerBlog">
    <article>
        <header class="post-header">
            <h2>My Blog Post Title</h2>
            <p class="meta">Posted on January 1, 2023, by John Doe</p>
        </header>
        <section>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas molestie, orci ac consectetur bibendum, nisl sapien porta mauris, at tristique felis velit ut nibh. Sed eget ex nec nisl suscipit dictum.</p>
            <p>Nullam ut elit vel nisl tincidunt hendrerit. Ut viverra massa ac lectus molestie interdum. Curabitur vel est vitae orci semper bibendum. In eget tincidunt orci, sit amet lacinia ex. Morbi ornare nisl ac arcu aliquet, et gravida risus tincidunt.</p>
            <h3>Subheading</h3>
            <p>Aliquam varius turpis justo, id volutpat orci vestibulum non. Fusce non felis nulla. Sed mattis elementum nunc a aliquam. Fusce ut velit velit. Sed vel sapien neque. Suspendisse in ex ut dolor malesuada luctus. </p>
            <h3>Another Subheading</h3>
            <p>Pellentesque accumsan vestibulum tortor, eget auctor ex tincidunt vel. Nunc nec rhoncus magna, at pharetra sapien. Etiam ut mauris et tortor imperdiet posuere a ac nibh. Curabitur ac varius dolor, eget blandit mauris. </p>
        </section>
        <footer class="post-footer">
            <p class="tags">Tags: <a>tag1</a>, <a>tag2</a>, <a>tag3</a></p>
        </footer>
    </article>
    <article>
        <header class="post-header">
            <h2>My Blog Post Title</h2>
            <p class="meta">Posted on January 1, 2023, by John Doe</p>
        </header>
        <section>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas molestie, orci ac consectetur bibendum, nisl sapien porta mauris, at tristique felis velit ut nibh. Sed eget ex nec nisl suscipit dictum.</p>
            <p>Nullam ut elit vel nisl tincidunt hendrerit. Ut viverra massa ac lectus molestie interdum. Curabitur vel est vitae orci semper bibendum. In eget tincidunt orci, sit amet lacinia ex. Morbi ornare nisl ac arcu aliquet, et gravida risus tincidunt.</p>
            <h3>Subheading</h3>
            <p>Aliquam varius turpis justo, id volutpat orci vestibulum non. Fusce non felis nulla. Sed mattis elementum nunc a aliquam. Fusce ut velit velit. Sed vel sapien neque. Suspendisse in ex ut dolor malesuada luctus. </p>
            <h3>Another Subheading</h3>
            <p>Pellentesque accumsan vestibulum tortor, eget auctor ex tincidunt vel. Nunc nec rhoncus magna, at pharetra sapien. Etiam ut mauris et tortor imperdiet posuere a ac nibh. Curabitur ac varius dolor, eget blandit mauris. </p>
        </section>
        <footer class="post-footer">
            <p class="tags">Tags: <a>tag1</a>, <a>tag2</a>, <a>tag3</a></p>
        </footer>
    </article>

    <article>
        <header class="post-header">
            <h2>My Blog Post Title</h2>
            <p class="meta">Posted on January 1, 2023, by John Doe</p>
        </header>
        <section>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas molestie, orci ac consectetur bibendum, nisl sapien porta mauris, at tristique felis velit ut nibh. Sed eget ex nec nisl suscipit dictum.</p>
            <p>Nullam ut elit vel nisl tincidunt hendrerit. Ut viverra massa ac lectus molestie interdum. Curabitur vel est vitae orci semper bibendum. In eget tincidunt orci, sit amet lacinia ex. Morbi ornare nisl ac arcu aliquet, et gravida risus tincidunt.</p>
            <h3>Subheading</h3>
            <p>Aliquam varius turpis justo, id volutpat orci vestibulum non. Fusce non felis nulla. Sed mattis elementum nunc a aliquam. Fusce ut velit velit. Sed vel sapien neque. Suspendisse in ex ut dolor malesuada luctus. </p>
            <h3>Another Subheading</h3>
            <p>Pellentesque accumsan vestibulum tortor, eget auctor ex tincidunt vel. Nunc nec rhoncus magna, at pharetra sapien. Etiam ut mauris et tortor imperdiet posuere a ac nibh. Curabitur ac varius dolor, eget blandit mauris. </p>
        </section>
        <footer class="post-footer">
            <p class="tags">Tags: <a>tag1</a>, <a>tag2</a>, <a>tag3</a></p>
        </footer>
    </article>
</main>

<div class="containerForm">
    <div class="form">
        <h2>Contribute to the BLOG</h2><br>

<%--  Form to take in a blog  --%>
        <%--@elvariable id="blog" type="blog"--%>
        <form:form action="/addBlog" modelAttribute="blog">

            <form:label path="title">Title: </form:label><form:input path="title"/>

            <form:label path="content">Content: </form:label><form:input path="content"/>



            <input type="submit"/>

        </form:form>
    </div>
</div>


<footer>
    <div class="footer-columns">
        <div class="footer-col-1">
            <img src="https://eap4socialjustice.files.wordpress.com/2022/01/refugeap-banner-pencil.png" alt="RefugEAP Logo">
            <p class="footer-slogan">The RefugEAP Network’s overarching objective is to facilitate the development of widening participation initiatives enabling refugee-background students to access HE via English language pathways, with a particular focus on English for Academic Purposes. </p>
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
                <li><a href="homePage.jsp">Home</a></li>
                <li><a href="blogPage.jsp">Blog</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Events</a></li>
                <li><a href="contactUs.jsp">Contact Us</a></li>
            </ul>
        </div>
    </div>
</footer>
</body>
</html>