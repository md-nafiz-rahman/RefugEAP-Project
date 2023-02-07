<!DOCTYPE html>
<html lang="en">
<head>
    <title>Refugee eap</title>
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

        /*.top{*/
        /*    position: fixed;*/
        /*    width: 100%;*/
        /*}*/
        /* .topnav {*/
        /*  overflow: hidden;*/
        /*  background-color: #29668B;*/

        /*}*/

        /*.topnav a {*/
        /*  float: left;*/
        /*  color: white;*/
        /*  text-align: center;*/
        /*  padding: 24px 20px;*/
        /*  text-decoration: none;*/
        /*  font-size: 20px;*/
        /*}*/

        /*.topnav a:hover {*/
        /*  background-color: #FFFFFF;*/
        /*  color: black;*/
        /*}*/

        /*!*.topnav a.active {*!*/
        /*!*  background-color: #FFFFFF;*!*/
        /*!*  color: white;*!*/
        /*!*}*!*/

        /*.topnav-text{*/
        /*    float: right;*/
        /*}*/
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

        /*.link1{*/
        /*    background-color: black;*/
        /*    color: lightblue;*/
        /*    margin: 0;*/
        /*    padding: 10px;*/
        /*}*/
        /*.link2{*/
        /*    background-color: black;*/
        /*    color: lightblue;*/
        /*    position: absolute;*/
        /*    bottom: 0;*/
        /*    right: 0;*/
        /*}*/
        .split{
            display: grid;
            height: auto;
        }
        /*.blog{*/
        /*    float: left;*/
        /*    width:50%;*/
        /*    background-color: lightblue;*/
        /*    border: 2px solid black;*/

        /*}*/

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

        /*.Events{*/
        /*    float: right;*/
        /*    width:50%;*/
        /*    border: 2px solid black*/
        /*}*/
        #calendar {
            width: 50%;
            float: right;
            text-align: center;
            font-size: 30px;
            padding: 30px;
            background-image: url("https://img.freepik.com/free-photo/beautiful-shot-sea-with-mountain-distance-clear-sky_181624-2248.jpg?w=1380&t=st=1675791595~exp=1675792195~hmac=09f14f18d9690e28766cf15d70f85ed094a0291a9b5db5079f8f2077a59903ec");
            background-size: cover;
        }
        #events {
            width: 45%;
            float: right;
            padding: 20px;
            background-color: aquamarine;
        }
        #events li {
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
        /*.blogp{*/
        /*    float: right;*/
        /*    width: 20%;*/
        /*}*/
        footer {
            background-color: #29668B;
            color: #fff;
            padding: 2rem;
        }

        footer div:first-child {
            display: flex;
            justify-content: space-between;
        }

        footer div:first-child div {
            display: flex;
            align-items: center;
        }

        footer div:first-child div img {
            height: 2rem;
            margin-right: 1rem;
        }

        footer nav ul {
            display: flex;
        }

        footer nav a {
            color: #fff;
            margin-right: 1.5rem;
        }

        footer div:last-child {
            background-color: #29668B;
            padding: 1rem;
        }

        footer div:last-child p {
            margin: 0;
            font-size: 0.8rem;
            text-align: right;
        }

        #social-links {
            display: flex;
            align-items: center;
        }

        #footer-follow a {
            margin-right: 40px;
        }
        #footer-follow img {
            height: 50px;
            width: 50px;
        }


    </style>
</head>
<body>

<!-- Navbar -->
<div class="navigator">
    <a href="homePage.jsp" class="mainB">Home</a>
    <a href="#blog">Blog</a>
    <a href="#aboutUs">About Us</a>
    <a href="#events">Events</a>
    <a href="contactUs.jsp">Contacts</a>
    <img class="logo" src="https://eap4socialjustice.files.wordpress.com/2022/01/refugeap-banner-pencil.png" />
</div>

<!-- Header -->

<header>
    <div class="container">
        <div class="background-image"></div>
        <div class="overlay" style="padding-top: 125px">
            <h1>RefugeeEAP Purpose</h1>
            <p>RefugEAP is a free online pre-university academic English skills programme for refugee-background students across the UK. It is for students who <br>
                need to improve their academic English skills to help them access a degree programme at university, but perhaps have not been able to access a <br>
                formal pre-sessional English for Academic Purposes (EAP) programme yet. RefugEAP has been developed to meet this need, providing students with<br>
                an opportunity to continue to develop their academic English skills in a supportive way while they are waiting for more formal opportunities to
                become available.</p>
        </div>
    </div>

</header>


<!-- First Grid -->
<div class="split">
    <div class="second">
        <div class="blog">
            <h1>Recent Blog Posts</h1>

            <div class="post">
                <h2>Blog Post 1</h2>
                <p>Description</p>
                <a class="link" href="#">Read More</a>
            </div>

            <div class="post">
                <h2>Blog Post 2</h2>
                <p>description</p>
                <a class="link" href="#">Read More</a>
            </div>

            <div class="post">
                <h2>Blog Post 3</h2>
                <p>description</p>
                <a class="link" href="#">Read More</a>
            </div>

            <div class="post">
                <h2>Blog Post 4</h2>
                <p>description</p>
                <a class="link" href="#">Read More</a>
            </div>
        </div>
        <!--    <div class="Upcoming Events">-->
        <!--       <h2>Events </h2>-->
        <!--       <button class="link2">View All Events</button>-->
        <!--    </div>-->
        <!--      -->
        <div id="calendar"></div>
        <h3 id="event-title">Upcoming Events</h3>
        <ul id="events">
            <li>Event 1</li>
            <li>Event 2</li>
            <li>Event 3</li>
        </ul>
        <button id="view-event-btn">View All Events</button>
    </div>
</div>

<footer>
    <div>
        <div>
            <img src="https://eap4socialjustice.files.wordpress.com/2022/01/refugeap-banner-pencil.png" alt="RefugEAP Logo">
        </div>
        <nav>
            <ul>
                <li><a href="homePage.jsp">Home</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Events</a></li>
                <li><a href="contactUs.jsp">Contact Us</a></li>
            </ul>
        </nav>
    </div>
    <div id="footer-follow">
        <h3>Follow Us</h3>
        <p id="social-links">
            <a href="https://www.facebook.com/LeicesterUniversityOfSanctuary/" target="_blank">
                <img src="https://cdn1.iconfinder.com/data/icons/social-media-rounded-corners/512/Rounded_Facebook_svg-512.png" alt="Facebook logo"></a>
            <a href="https://twitter.com/EapForSJ" target="_blank">
                <img src="https://cdn1.iconfinder.com/data/icons/social-media-rounded-corners/512/Rounded_Twitter5_svg-512.png" alt="Twitter logo"></a>
            <a href="https://www.instagram.com/">
                <img src="https://cdn1.iconfinder.com/data/icons/social-media-rounded-corners/512/Rounded_Instagram_svg-512.png" alt="Instagram logo">
            </a>
        </p>
    </div>
    <div>
        <p>Copyright &copy; 2023 RefugEAP</p>
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
