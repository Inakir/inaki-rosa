<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="default_cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<!-- Favicon Ico -->
<![if !IE]>
<link rel="icon" href="/images/favicon.png" type="image/x-icon" />
<link rel="shortcut icon" href="/images/favicon.png" type="image/x-icon" />
<![endif]>
<!-- This is needed for IE -->
<link rel="shortcut icon" href="/images/favicon.png" type="image/x-icon" />
<link rel="icon" href="/images/favicon.png" type="image/x-icon" />

<head>
    <meta charset="UTF-8" />
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
	<meta name="p:domain_verify" content="2672511aebca4c458808a023cab48e08"/>
    <!-- Title -->

    <title>Iñaki Rosa</title>

    <!-- =============================
                stylesheets
    ================================== -->
    
    <!-- Normalize And Bootstrap -->
    <link rel="stylesheet" href="css/normalize.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    
    <!-- Google Font  -->
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Raleway:600,700,400,300' rel='stylesheet' type='text/css' />
    
    <!-- Font Icons -->
    <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css" />
    
    <!-- Plugin Default Stylesheets -->
    <link rel="stylesheet" href="css/magnific-popup.css" />
    <link rel="stylesheet" href="css/slider-pro.css" />
    <link rel="stylesheet" href="css/owl.carousel.css" />
    <link rel="stylesheet" href="css/owl.theme.css" />
    <link rel="stylesheet" href="css/owl.transitions.css" />
    <link rel="stylesheet" href="css/animate.css" />

    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/responsive.css" />
    <link rel="stylesheet" href="css/color.css" id="colors" />

    <!--[if lt IE 9]>
        <script src="js/html5shiv.min.js"></script>
        <script src="js/respond.min.js"></script>
        <script type="text/javascript" src="js/selectivizr.js"></script>
    <![endif]-->
</head>
<body>
    <!-- Preloader -->
    <div class="preloader">
        <div class="status"></div>
    </div>
    <!-- =============================
                    Header
    ================================== -->
    <header>
        <!-- Navigation Menu start-->
        <nav class="navbar blete-main-menu" role="navigation">
            <div class="container nav-bar-container ">
                <!-- Navbar Toggle -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <!-- Navbar Toggle End -->
                <!-- navbar-collapse start-->
                <div id="nav-menu" class="navbar-collapse collapse" role="navigation">
                    <ul class="nav navbar-nav blete-menu-wrapper">
                        <li class="active">
                            <a href="#top">Home</a>
                        </li>
                        <li>
                            <a href="#about">About</a>
                        </li>
                        <li>
                            <a href="#projects">Projects</a>
                        </li>
                        <li>
                            <a href="#work">Work</a>
                        </li>
                        <li>
                            <a href="/inaki-rosa-resume.pdf" download>Resume</a>
                        </li>
                        <li>
                            <a href="https://www.linkedin.com/in/inaki-rosa/"><i class="fa fa-linkedin"></i></a>
                        </li>
                        <li>
                            <a href="https://github.com/Inakir"><i class="fa fa-github"></i></a>
                        </li>
                    </ul>
                </div>
                <!-- navbar-collapse end-->
            </div>
        </nav>
        <!-- Navigation Menu end-->
    </header>
    <!-- Header End -->
    <!-- =============================
                Main Slider
    ================================== -->
    <div id="top" class="anchor"></div>
    <section class="slider-pro blete-slider" id="blete-slider">
        <div class="sp-slides">
            <!-- Slides -->
            <div class="sp-slide blete-main-slides">
                <div class="blete-img-overlay"></div>
                <img class="sp-image" src="/images/img-header/mountain.jpg" alt="Slider 1" />
                <h1 class="sp-layer blete-slider-text-big"
                    data-position="center" data-show-transition="left" data-hide-transition="right" data-show-delay="1500" data-hide-delay="200">
                    Continental Divide
                </h1>
                <p class="sp-layer"
                    data-position="center" data-vertical="15%" data-show-delay="2000" data-hide-delay="200" data-show-transition="left" data-hide-transition="right">
                    <span class="blete-highlight-header-text">Keystone</span>, Colorado
                </p>
            </div>
            <!----------------------------------------------------------------------End Slide------------------------------------------------------------------------------------->

            <div class="sp-slide blete-main-slides">
                <div class="blete-img-overlay"></div>
                <img class="sp-image" src="/images/img-header/p66.jpeg" alt="Slider 2" />
                <h1 class="sp-layer blete-slider-text-big"
                    data-position="center" data-vertical="-40%" data-show-transition="left" data-hide-transition="right" data-show-delay="1500" data-hide-delay="200">
                    Phillips 66
                </h1>
                <p class="sp-layer"
                    data-position="center" data-vertical="-25%" data-show-delay="2000" data-hide-delay="200" data-show-transition="left" data-hide-transition="right">
                    <span class="blete-highlight-header-text">Bartlesville</span>, Oklahoma
                </p>
            </div>

            <!----------------------------------------------------------------------End Slide------------------------------------------------------------------------------------->

            <div class="sp-slide blete-main-slides">
                <div class="blete-img-overlay"></div>
                <img class="sp-image" src="/images/img-header/ti.jpg" alt="Slider 3" />
                <h1 class="sp-layer blete-slider-text-big"
                    data-position="center" data-show-transition="left" data-hide-transition="right" data-show-delay="1500" data-hide-delay="200">
                    Texas Instruments
                </h1>
                <p class="sp-layer"
                    data-position="center" data-vertical="15%" data-show-delay="2000" data-hide-delay="200" data-show-transition="left" data-hide-transition="right">
                    <span class="blete-highlight-header-text">Dallas</span>, Texas
                </p>
            </div>

            <!----------------------------------------------------------------------End Slide------------------------------------------------------------------------------------->
        </div>
    </section>
    <!-- Main Slider End -->

    <!-- ===========   About Section   =========== -->
    <div id="about" class="anchor"></div>
    <section id="about" class="section-wrapper blete-first-wrapper first-section" data-stellar-background-ratio="0.5">
        <div class="container">
            <div class="row">
                <!-- Section Header -->
                <div class="col-md-12 col-sm-12 col-xs-12 blete-section-header wow fadeInDown">
                    <h2>ABOUT <span class="highlight-text">IÑAKI</span></h2>
                    <div class="blete-section-divider"></div>
                </div>
                <!-- Section Header End -->
                <div class="col-md-4 col-sm-6 col-xs-12 blete-custom-sec-img wow bounceInLeft">
                    <img src="/images/headshot.jpg" alt="Inaki Rosa">
                </div>

                <div class="col-md-8 col-sm-6 col-xs-12 blete-custom-sec-text wow bounceInRight">
                    <p>Hello, my name Iñaki. Welcome to my website!</p>
                    <p>Here are some quick facts about me:</p>
                    <br />
                    <ul>    
                        <li><i class="fa fa-microchip"></i>I am the proud father of a black lab named Oreo.</li>
                        <li><i class="fa fa-microchip"></i>My carrer inspiration came from "Stu" from the Rugrats.</li>
                        <li><i class="fa fa-microchip"></i>I got to manage the Career Fair Website for the Engineering Career Fair at Texas A&M.</li>
                        <li><i class="fa fa-microchip"></i>I am currently working as a software developer for Texas Instruments.</li>
                        <li><i class="fa fa-microchip"></i>My favorite hobbies include climbing and playing ultimate frisbee.</li>
                        <!--<li><i class="fa fa-microchip"></i>I currently work for Texas Instruments as a developer (hence the microchips).</li>-->
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- About Section End -->
    
    <!-- =============================       Features Section       ================================== -->
    <div id="projects" class="anchor"></div>
    <section id="features" class="section-wrapper blete-second-wrapper second-section">
        <div class="container">
            <div class="row">
                <!-- Section Header -->
                <div class="col-md-12 col-sm-12 col-xs-12 blete-second-header blete-section-header-parallax wow slideInDown">
                    <h2>MY <span class="highlight-text">PORTFOLIO</span></h2>
                    <div class="blete-section-divider"></div>
                </div>
            </div>
            <!-- Section Header End -->

            <!-- Filter Button Start  -->
            <div class="blete-portfolio-works wow fadeIn" data-wow-duration="2s">
                <!-- Filter Button Start -->
                <div id="blete-portfolio-filter" class="blete-portfolio-filter-btn-group">
                    <ul>
                        <li>
                            <a href="#" class="selected" data-filter="*">ALL</a> 
                            <a href="#" data-filter=".site">Websites</a>
                            <a href="#" data-filter=".mobile">Mobile</a>
                            <a href="#" data-filter=".ruby">Ruby on Rails</a>
                            <a href="#" data-filter=".d3">D3.js</a> 
                            <a href="#" data-filter=".three">Three.js</a>
                            <a href="#" data-filter=".cannon">Cannon.js</a>
                            <a href="#" data-filter=".presentations">Presentations</a>
                            <a href="#" data-filter=".engineering">Engineering</a>
                        </li>
                    </ul>
                </div>
            <!-- Filter Button End -->
                
                <!-- Features -->
                <div class="blete-portfolio-items">
                    <div class ="col-md-4 col-sm-12 col-xs-12 item blete-portfolio-item site">
                        <a href="/jc-juice" class="page_link">
                            <div class="blete-blurb-icon-left-square jcjuice">
                                <div class="blete-blurb-text">
                                    <h3>JC Juice</h3>
                                    <p>I designed and implemented the website of JC Juice, a hip-hop artist based out of College Station, TX.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                        
                    <div class ="col-md-4 col-sm-12 col-xs-12 item blete-portfolio-item presentations">
                        <a href="/blockchain" class="page_link">
                            <div class="blete-blurb-icon-left-square blockchain">
                                <div class="blete-blurb-text">
                                    <h3>Blockchain</h3>
                                    <p>
                                        I did research over the Blockchain, the technology behind the phenomenon of bitcoin. I had the privilege to present to a group of developers located in Bartlesville, Oklahoma about my research.
                                    </p>
                                </div>
                            </div>
                        </a>
                    </div>

                    <div class ="col-md-4 col-sm-12 col-xs-12 item blete-portfolio-item mobile">
                        <a href="/career-fair-app" class="page_link">
                            <div class="blete-blurb-icon-left-square cf">
                                <div class="blete-blurb-text">
                                    <h3>Engineering Career Fair App</h3>
                                    <p>
                                        Texas A&M has one of the largest Career Fairs in the nation. Yearly we help more than 10,000 engineers get hired through the fair. I created a mobile application that allows students to have all the company recruiting information they need at the palm of their hands.
                                    </p>
                                </div>
                            </div>
                        </a>
                    </div>

                    <div class ="col-md-4 col-sm-12 col-xs-12  item blete-portfolio-item site three cannon">
                        <a href="/space-simulation/index.html" class="page_link">
                            <div class="blete-blurb-icon-left-square space">
                                <div class="blete-blurb-text">
                                    <h3>Space Simulation</h3>
                                    <p>
                                        This project involves making a space simulation of the moon exploding using JavaScript libraries. The simulation features the moon exploding and fragmenting across the galaxy as well as a space station with survival pods.
                                    </p>
                                </div>
                            </div>
                        </a>
                    </div>

                    <div class ="col-md-4 col-sm-12 col-xs-12  item blete-portfolio-item site ruby">
                        <a href="https://registration.sec.tamu.edu/" class="page_link">
                            <div class="blete-blurb-icon-left-square reghub">
                                <div class="blete-blurb-text">
                                    <h3>Registration Hub</h3>
                                    <p>
                                        The Student Engineers' Council needed a way to register participants for their events. I created a website using Ruby on Rails to satisfy this need, as well as providing functionality to keep track of the registrants. 
                                    </p>
                                </div>
                            </div>
                        </a>
                    </div>

                    <div class ="col-md-4 col-sm-12 col-xs-12  item blete-portfolio-item site">
                        <a href="http://sec.tamu.edu/" " class="page_link">
                            <div class="blete-blurb-icon-left-square sec">
                                <div class="blete-blurb-text">
                                    <h3>Student Engineers' Council</h3>
                                    <p>
                                        I got to redesign and implement a brand new website for the Student Engineers' Council.
                                    </p>
                                </div>
                            </div>
                        </a>
                    </div>

                    <div class ="col-md-4 col-sm-12 col-xs-12  item blete-portfolio-item site engineering">
                        <a href="https://sites.google.com/a/tamu.edu/team-03---csce-483-f-16/home" class="page_link">
                            <div class="blete-blurb-icon-left-square vibes">
                                <div class="blete-blurb-text">
                                    <h3>Good Vibes</h3>
                                    <p>
                                        This was my senior design project. My team and I designed a hat to assist hearing impaired individuals detect the direction of sounds.
                                    </p>
                                </div>
                            </div>
                        </a>
                    </div>

                    <div class ="col-md-4 col-sm-12 col-xs-12  item blete-portfolio-item d3">
                        <a href="/data-visualization" class="page_link">
                            <div class="blete-blurb-icon-left-square d3">
                                <div class="blete-blurb-text">
                                    <h3>D3 Project</h3>
                                    <p>
                                        Currently in progress. Feel free to click and check out my progress though!
                                    </p>
                                </div>
                            </div>
                        </a>
                    </div>

                </div>
                <!-- Features End -->
            </div>
        </div>
    </section>
    <!-- Features Section End -->

    <!-- ===========   About Section   =========== -->
    <div id="work" class="anchor"></div>
    <section id="work" class="section-wrapper blete-third-wrapper third-section">
        <div class="container">
            <div class="row">
            <!-- Section Header -->
                <div class="col-md-12 col-sm-12 col-xs-12 blete-third-header wow fadeInDown">
                    <h2><span class="highlight-text">WORK</span></h2>
                    <div class="blete-section-divider"></div>
                    <p style="text-align: left">
                    <br />I currently work as a software developer for Texas Instruments. I previously interned with them in 2016 before starting work full time in 2016. I have done 4 different roles at the company. I worked developing tools for the electrical engineers. Then, I got to work in the fabs writing automation and helping our semiconductors chips get created. My next role was working as an Ecommerce engineer, working directly with TI.com. I got to work with a team configuring new languages and currencies into the website. My current role is in business applications, where I mostly help maintain web applications to help the TI sales team. 
                    <!--<br />My most recent internship was at Phillips 66 in Bartlesville Oklahoma. Phillips 66 is a midstream energy company with pipelines and midstream facilities all across the United States. During my internship I was able to gain an in depth knowledge over the energy value chain, something that I never thought I would do as a Computer Engineer. I was able to do several projects while I interned here. The most exciting part of the internship was getting the ability to research Blockchain technology and how it can impact not just Phillips 66, but the energy industry as a whole. My official title was Operational Development under Application Services. The role saw me developing and maintain the applications used by the company internally. My first project was to rewrite the batch job that notifies users when an account they manage is about to expire. I was able to significantly improve the time that it took to run from ~20 minutes to 3 minutes. I was also able to reduce the total lines of code from ~800 to ~300 lines. This was an exciting project and I got to see the impact it had almost immediately. Lastly, I created an application that allowed the Lubrication R&D team to submit data they received from research into a database. This data needed to be formatted specifically and fit numerous amounts of tests so that it could be formatted correctly by the analyzing software. -->
                    </p>

                    <!--<p style="text-align: left">
                    <br />My first internship was with Texas Instruments in Dallas, Texas. Texas Instruments is a company that designs and manufactures semiconductors. I was able to get to learn the semiconductor manufacturing process and got to visit the fabs fairly regularly to understand the way the company made profit. I was able to work on several projects during my tenure there. I created an application that allowed the manufacturing team to reserve tools in a fab in advance. This application was useful when very high priority products were going through the line and needed to have a tool ready to greet them. I also worked on several other smaller applications, most notably an application that allowed users to move useful files between tools in different fabs. This is useful as many of the instruments need specialized software to accomplish these tasks. 
                    </p>-->
                </div>
            </div> 
        </div>
    </section>
    <!-- About Section End -->

    <!-- =========   Footer Section   ========= -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <h3>About</h3>
                    <ul>
                        <li><span>
                        contact@inakirosa.com 
                         </span></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h3>Related Post</h3>
                    <ul>
                        <li><a href="/">Main Page</a></li>
                        <li><a href="/career-fair-app">Career Fair Mobile App</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer End -->

    <div class="thn">
        <div class="container thn">
            <div class="row">
                <div class="blete-footer-content">
                    <h6 class="blete-copyright-info">©2015</h6>
                </div>
            </div>
        </div>
    </div>

    <!-- =============================
                SCRIPTS
    ================================== -->
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/modernizr.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/jquery.easypiechart.js"></script>
    <script src="js/jquery.countTo.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <!--<script src="js/jflickrfeed.min.js"></script>-->
    <script src="js/jquery.fitvids.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/jquery.nav.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/smooth-scroll.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.sliderPro.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/custom.js"></script>
</body>
</html>