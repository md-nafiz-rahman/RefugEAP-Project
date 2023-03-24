<!DOCTYPE html>
<html lang="en">
<head>
    <title>RefugEAP</title>
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
            font-family: "Calibri";
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
            font-family: Calibri, sans-serif;
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


    </style>
</head>
<body>

<!-- Navbar -->
<div class="navigator">
    <a href="/">Home</a>
    <a href="/blogPage">Blog</a>
    <a href="/aboutUs" >About Us</a>
    <a href="/eventPage">Events</a>
    <a href="/contactUs">Contact Us</a>
    <img class="logo" src="https://eap4socialjustice.files.wordpress.com/2022/01/refugeap-banner-pencil.png" />
</div>

<!-- Header -->

<header>
    <div class="container">
        <div class="background-image"></div>
        <div class="overlays" style="padding-top: 70px">
            <h1>Developing Provision</h1>
        </div>
    </div>

</header>


<section class="sec1">

    <p>Developing and offering sanctuary provision isn't something to rush into. While it would be very helpful if more EAP provision were to be made available to refugee-background students across the UK, it is important to give careful consideration to what this means in practice, and whether your organisation can dedicate the time and resources to this before taking the plunge. It is useful to frame this not only in terms of whether you are able to make provision accessible to students, but also whether you are able to offer appropriate support whilst they are with you (and it is often the latter that can be overlooked).
        Below, we have compiled a number of tips and considerations for anyone thinking of setting up sanctuary provision, starting with a list of general tips, and moving on to more EAP-specific considerations. If you would like to suggest any additional tips to add to these lists, please let us know via our <a href="/contactUs" target=”_blank” >Contact Us</a> form .
    </p>
</section>

<section class="sec1">
    <h3>General tips for developing successful sanctuary provision</h3>
    <p><ul>
    <li><strong>Connect with others who have developed similar provision</strong> - this is a very useful starting point, can provide useful models to base your own provision on and can help you avoid certain pitfalls along the way. Various ways in which you can do this are listed on our <a href="/joinUs" target=”_blank” >Join Us</a> page. </li>

    <li><strong>Tap into an inspiring vision</strong> - developing and sharing a clear vision of where you want your institution to be with regard to its sanctuary work will help to get people excited about it and more likely to support it. One place to start might be the vision of your university as a University of Sanctuary, embodying and promoting a culture of inclusivity and welcome. Committing to work towards a recognition scheme such as the <a href="https://universities.cityofsanctuary.org/" target=”_blank” >University of Sanctuary</a> Award Scheme can be a very powerful way to gain buy in from across the institution, and can also provide a useful framework through which to structure this work. It also offers three key principles to base provision around - Learn, Embed, Share. </li>

    <li><strong>Start small and demonstrate the impact that can be made before scaling up</strong> - one reason for this is that it gives you a chance to iron out any issues on a small scale (this is far more difficult to do once an initiative has been rolled out on a large scale). Another reason for this is that it can be helpful to demonstrate to managers what is possible on a small scale before they are willing to invest more resources in an initiative. </li>

    <li><strong>Find useful organisations to partner with</strong> - by their very nature, sanctuary initiatives benefit from partnership working. Students with refugee backgrounds often have multiple complex needs (e.g. immigration issues, mental health needs, housing issues) that it may not be possible for an educational institution to address alone. Various organisations exist which institutions can partner with to fill these gaps. Examples include:  <a href="https://refuaid.org/" target=”_blank” >RefuAid</a> (which can provide wrap around support and pay students' language exam fees); <a href="https://www.englishlanguagetesting.co.uk/" target=”_blank” >Password English Language Testing</a> (which can provide free high-quality entry tests for pre-sessionals and degree programmes); local <a href="https://cityofsanctuary.org/" target=”_blank” >City of Sanctuary</a> groups (which institutions can partner with to run ESOL provision). Further information about potential partner organisations can be found in the 'Useful (partner) organisations and movements (education specific)' column in the <a href="https://padlet.com/alekspalanac/refugeap-network-resource-bank-94dn9e90rewkm1p3" target=”_blank” >RefugEAP Network Resources Bank Padlet</a>. </li>

    <li><strong>Link to key university strategies/systems</strong> - you are more likely to achieve buy-in from university management if you are able to demonstrate how your proposed initiative links to a key university strategy. These strategies might include: vision, mission and values of the university; strategic objectives; Widening Participation initiatives; Corporate Social Responsibility policies; decolonisation initiatives; relevant steering/working groups/support teams, etc. </li>

    <li><strong>Show how your proposed initiative can feed in to reporting to national and international rankings and recognition</strong> - the Universities of Sanctuary award scheme; THE Impact Rankings; the TEF; the REF; the KEF; the UN's SDG Accord; and the UN Global Compact.</li>

    <li><strong>Mitigate concerns about loss of revenue</strong> - University management may raise this concern, assuming that offering a sanctuary student on a pre-sessional fee waiver may be taking the place of a fee-paying student, thereby resulting in loss of revenue. One argument to put forward is to argue that refugee-background students will not be taking the place of fee-paying students, but instead can be regarded as filling empty seats when classes are running at less than full capacity. Seen this way, there is no actual loss of revenue, although it is important to note that some extra staff time and training might need to be factored in to supporting RBS with their additional needs.</li>

    <li><strong>Base proposals on evidence wherever</strong> - there is a small but growing body of evidence regarding what initiatives / strategies have been tried and tested at different universities / EAP centres. When it comes to proposing new initiatives in this area, it can be very helpful to draw upon these.  The RefugEAP Network website aims to compile as much of this evidence as possible onto its <a href="/evidenceBase" target=”_blank” >Evidence Base</a> and <a href="/blogPage" target=”_blank” >Blog</a> page to make it easier for people to find it.</li>

    <li><strong>Gain the backing of one or more people who are able to advocate at a higher level within the institution</strong> - this is one key way in which you'll be likely to put sanctuary on the radar of the university administration, and to get new initiatives/policies approved.</li>

</ul>
    </p>
</section>

<section class="sec1">
    <h3>Tips for developing successful EAP sanctuary provision</h3>
    <p>
    <ul>
        <li><strong>Carefully consider entry requirements and expectations for pre-sessional sanctuary fee waivers</strong> - think carefully about the language level, academic level, and immigration statuses accepted for these fee waivers and outline expectations and level of commitment required to students clearly before they join. For an example of this, you may find it useful to watch <a href="https://www.youtube.com/watch?v=reDgYFOGwwg" target=”_blank” >this information video</a> for sanctuary scholarship applicants for the pre-sessional programme at the University of Leicester. You can also find out what other universities' entry requirements are on <a href="https://www.displacedstudent.org.uk/" target=”_blank” >Displaced Students Opportunities UK</a> website.</li>

        <li><strong>Take into account how to identify and meet any additional needs:</strong>
            <ul>
                <li><strong>Needs analysis</strong> - you may need to design a more detailed needs analysis for refugee-background students, to try to capture additional information about some of the areas in which we know RBS might need additional support. This might include questions about: access to digital devices and the internet; highest level of education (which they may not have been able to complete); whether they have evidence of their highest qualification, or whether they may be able to obtain this; whether they have any problems which they feel might impact their studies. This information might be captured in a form, and/or perhaps in a 1:1 discussion, which might yield more detail about any specific challenges faced .</li>

                <li><strong>Trauma informed practice</strong> - it is important that anyone working directly with refugee background students has an awareness of some of the types of challenges that they may be facing, which can have a knock-on effect on their learning. One such challenge is trauma. Teachers might find it beneficial to read around this subject (e.g. <a href="https://www.researchgate.net/publication/341452361_Towards_a_trauma-informed_ELT_pedagogy_for_refugees" target=”_blank” >this article on trauma-informed ELT pedagogy for refugees</a></li>) or undertake some training in this area (e.g. via <a href="https://le.ac.uk/cite/sanctuary-seekers-unit/events/trauma-workshop" target=”_blank” >this set of free, self-access online materials focusing on trauma-informed ESOL for refugees</a>).</li>

                <li><strong>Additional support</strong> - due to the multiple, complex challenges which they tend to face, refugee background students often have additional support needs. They might be struggling with living in inadequate housing (or even homelessness), with complications in their asylum application, and with worry about friends and family back home, to name but a few common scenarios. They may actively approach teachers and admin staff for support with some of these things, or staff may become aware of these issues indirectly, perhaps when a student misses a deadline and is asked to explain why. In light of this, you may want to consider: </li>
                <ul>
                    <li>
                        Offering <strong>additional pastoral support</strong> to refugee-background students. This might be in the form of optional 1:1 check-ins every few weeks with a member of staff who is familiar with some of the additional challenges that these students may be facing.
                    </li>

                    <li>
                        Whether there are any existing university procedures which can be used to help the students (e.g. <strong>mitigating circumstances</strong> for cases where circumstances outside their control affect submission of assessments), or, if not, then whether there can be any flexibility in procedures .
                    </li>

                    <li>
                        <strong>Making referrals to any relevant support services</strong> within your institution (e.g. Welfare, Student Wellbeing, pro-bono immigration clinics, accommodation office) or external organisations/services (e.g. local or national charities or voluntary groups such as the <a href="https://www.redcross.org.uk/" target=”_blank” >Red Cross</a>, <a href="https://refuaid.org/" target=”_blank” >RefuAid</a>, <a href="https://www.reuk.org/" target=”_blank” >Refugee Education UK</a> and <a href="https://www.screen-share.co.uk/" target=”_blank” >Screen Share</a>)
                    </li>

                    <li>
                        Supporting refugee background students may take up <strong>more staff time</strong> than might have been the case when working with other students. It is worth bearing this in mind and factoring this into any planning (in terms of hours allocation, referrals procedures, etc.)
                    </li>

                    <li>
                        It is also important to recognise that those working with refugee background students may have to bear a <strong>greater mental and emotional load</strong> than usual. For this reason, it is important to offer clear ways in which staff can reduce this (e.g. having a 'buddy' to talk to, managers having an open-door policy or offering drop-in sessions for staff to discuss any issues, staff counselling support being on offer and accessible, etc.)
                    </li>

                </ul>
            </ul>

        </li>

        <li><strong>Evidence of language level</strong> - this becomes relevant at both pre-sessional entry and exit points
            <ul>
                <li>
                    <strong>At point of entry</strong> - many refugee-background students who approach you for a place on a pre-sessional programme will not have evidence of their current language level (largely because tests such as IELTS are out of the price range of many refugee-background students). You might therefore need to offer them an in-house initial language assessment instead, or perhaps contact <a href="https://www.englishlanguagetesting.co.uk/" target=”_blank” >Password English Language Testing</a> requesting free test codes for your refugee-background students.
                </li>

                <li>
                    <strong>At point of exit</strong> - if a refugee background student has successfully completed your pre-sessional programme and has been able to secure a place on a degree programme at your university, their pre-sessional exit grade will be almost always accepted as evidence of their language level. However, if they are planning on accepting a place on a degree programme at another university, there is not an automatic means by which the pre-sessional exit grade awarded by your university would be recognised and accepted by another university. This is because different pre-sessional courses have not been aligned to each other and quality assured and monitored using an external framework. One way around this is to make direct contact with a staff member at the other university and come to an agreement on a case-by-case basis:

                    <ul>
                        <li>
                            If the student is accessing their degree programme via a sanctuary scholarship, you should be able to find the contact details of a staff member on the <a href="https://www.displacedstudent.org.uk/" target=”_blank” >Displaced Students Opportunities UK</a> website.
                        </li>

                        <li>
                            If there is no sanctuary scholarship involved, you may need to find out the details of someone in Admissions, or someone in the English language centre who may be able to help. One way that you might do this is by accessing our <a href="https://docs.google.com/document/d/1NjAE1-rZ_Rs_i4CpdvQsT7fFbbFSPx1MrFa1fBgV5h4/edit" target=”_blank” >RefugEAP Network Directory</a> of EAP/ELT contacts involved in sanctuary work at each institution.


                        </li>

                    </ul>
                    If it turns out that the pre-sessional exit grade cannot be accepted, another option is to have the students take a Password Test (which <a href="https://www.englishlanguagetesting.co.uk/" target=”_blank” >Password English Language Testing</a> are often happy to donate for free for these purposes) or perhaps an IELTS test (which <a href="https://refuaid.org/" target=”_blank” >RefuAid</a> may be able to fund).
                </li>
            </ul>

        </li>

        <li><strong>Joined up provision and pathway support</strong> - think about ways in which students can progress into, and out of, your programme, and how to mitigate any challenges along the way:
            <ul>
                <li>
                    <strong>Progressing into your programme</strong> - this might just be a case of making contact with local organisations which work with people with refugee backgrounds (e.g. charities / voluntary organisations, FE colleges, adult education providers) and ensuring that you advertise your programmes there. Alternatively, you might want to create your own progression route by putting on your own ESOL feeder classes, perhaps in conjunction with a local charity. When developing pathways onto your programmes, it is good practice to consider what barriers students might face along the way, and how these might be mitigated.
                </li>

                <li>
                    <strong>Progression out of your programme</strong> - it is important to create and/or find out about relevant progression opportunities for students who have completed pre-sessionals, and for students to be supported to understand their options (if they haven't already secured a place at university before starting on this pre-sessional). For example, you might:

                    <ul>
                        <li>
                            <strong>offer sanctuary scholarships on degree programmes (face-to-face or Distance Learning)</strong> - this is an important way in which you can ensure that there is a potential progression opportunity at your university for students who have completed a pre-sessional programme.
                        </li>

                        <li>
                            <strong>offer home student fees for students seeking asylum</strong> - most universities regard students seeking asylum as international students and charge them as such. Some universities are now starting to charge home fees instead. Though still out of the budget of most people seeking asylum, for those who are fortunate enough to be able to find a donor to pay their fees, this change in fee status can make all the difference.
                        </li>

                        <li>
                            <strong>direct students to sanctuary scholarship opportunities at other institutions too</strong> - this will maximise your students’ chances of gaining a scholarship to study at university (as your university may not have enough scholarships to cater for all of your pre-sessional sanctuary students). A useful place to direct them to is the <a href="https://www.displacedstudent.org.uk/" target=”_blank” >Displaced Students Opportunities UK</a> website.
                        </li>

                        <li>
                            <strong>direct them to clear guidance about how to apply to university</strong> - a good place to find this is on the <a href="https://star-network.org.uk/access-to-university/" target=”_blank” >Student Action for Refugees (STAR) 'access to university' web pages</a>, or via their <a href="https://star-network.org.uk/equal-access-network/" target=”_blank” >Equal Access Network</a>, through which students can connect with others applying (or who have applied) to HE. You might also be able to connect with your organisation's careers service to see if they can offer tailored advice and support, and perhaps workshops on how to write personal statements for UCAS applications, etc.
                        </li>

                        <li>
                            <strong>refer them to an organisation which can continue to support them on their journey</strong> - examples of useful organisations which provide casework/wrap-around progression support are <a href="https://refuaid.org/" target=”_blank” >RefuAid</a> and <a href="https://www.reuk.org/" target=”_blank” >Refugee Education UK</a>.
                        </li>

                    </ul>
                </li>
            </ul>

        </li>


    </ul>
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