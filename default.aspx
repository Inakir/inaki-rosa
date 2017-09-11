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
            <div class="container">
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
                    Phillips 66 Internship
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
                    Texas Instruments Internship
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
    <section id="about" class="blete-custom-sec blete-odd-wrapper blete-description">
        <div class="container">
            <div class="row">
            <!-- Section Header -->
                <div class="col-md-12 col-sm-12 col-xs-12 blete-odd-header wow fadeInDown">
                    <h2>ABOUT <span class="blete-odd-highlight-text">IÑAKI</span></h2>
                    <div class="blete-section-divider"></div>
                    <h4 class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">Hello, my name Iñaki Rosa de la Fuente. Welcome to my website!</h4>
                    <br><br><br>

                    <p style="text-align: left">
                    I am currently studying Computer Engineering at Texas A&M University. During my time at A&M I have been heavily involved in Campus organizations, with my two biggest organizations being the Student Engineers’ Council and Fish Camp. I served as the Systems Administration Committee Chair and an Executive Council member for the SEC and I was a counselor for two years in a row in Fish Camp. 
                    </p>

                    <p style="text-align: left">
                    I am the proud Father of a dog named Oreo. When I’m not on campus studying or with friends I’m likely hanging out with him. I love Outdoor activities and some of my hobbies including the game “Geocaching”, in which you set out to find hidden treasures in your immediate surroundings. 
                    </p>

                    <p style="text-align: left">
                    Since I was young, I have wanted to be an inventor. My inspiration was "Stu" from the Rugrats, who was always inventing wonderful and new machines. When I grew up I realized that what I wanted to do was engineering. Computers and machines always fascinated me so I started taking Computer Science courses as a freshman in High School. At that moment I knew I had found what I wanted to do for the rest of my life. Being a Computer Engineer is a dream come true, and I hope that my work can inspire someone to try out the discipline for themselves. 
                    </p>

                    <p style="text-align: left">
                    I encourage you to read the background section in which I go more into detail on what my responsibilities and impact has been in my community! 
                    </p>


                    <!-- Section Header End 
                    <div class="col-md-1 col-sm-6 col-xs-12 blete-custom-sec-img wow bounceInLeft">
                        <img src="images/logo.png" alt="Custom Image" />
                    </div>
                    <div class="row">
                    <div class="col-md-4 col-sm-12 col-xs-12 blete-custom-sec-text wow bounceInRight" style="text-align: left"><h2>Developer</h2></div>
                    <div class="col-md-4 col-sm-12 col-xs-12 blete-custom-sec-text wow bounceInDown"  style="text-align: center"><h2>Computer Engineer</h2></div>
                    <div class="col-md-4 col-sm-12 col-xs-12 blete-custom-sec-text wow bounceInLeft"  style="text-align: right"><h2>Aggie</h2></div>
                    </div>
                    <br /><br /> 
                    <div class="row">
                    <div class="col-md-6 col-sm-12 col-xs-12 blete-custom-sec-text wow bounceInLeft"><h2>Geocacher</h2></div>
                    <div class="col-md-6 col-sm-12 col-xs-12 blete-custom-sec-text wow bounceInRight"><h2>Father to a Dog</h2>  </div>
                    </div>
                    <br /> <br />
                    <div class="row">
                    <div class="col-md-4 col-sm-12 col-xs-12 blete-custom-sec-text wow bounceInRight" style="text-align: left"><h2>Software Engineer</h2></div>
                    <div class="col-md-4 col-sm-12 col-xs-12 blete-custom-sec-text wow bounceInDown"  style="text-align: center"><h2>Counselor</h2></div>
                    <div class="col-md-4 col-sm-12 col-xs-12 blete-custom-sec-text wow bounceInLeft"  style="text-align: right"><h2>Artist</h2></div>
                    </div>
                    <br /><br /> 
                    <div class="row">
                    <div class="col-md-6 col-sm-12 col-xs-12 blete-custom-sec-text wow bounceInLeft"><h2>Runner</h2></div>
                    <div class="col-md-6 col-sm-12 col-xs-12 blete-custom-sec-text wow bounceInRight"><h2>Bilingual</h2>  </div>
                    </div>
                    <br /> <br />
                        <!--<ul>
                            <li><i class="fa fa-check"></i>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>
                            <li><i class="fa fa-check"></i>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>
                            <li><i class="fa fa-check"></i>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>
                            <li><i class="fa fa-check"></i>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>
                            <li><i class="fa fa-check"></i>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>
                        </ul> 
                        -->
                    </div>
                </div> 
            </div>
    </section>
    <!-- About Section End -->
    
    <!-- =============================
                    Features Section
    ================================== -->
    <div id="projects" class="anchor"></div>
    <section id="features" class="blete-even-wrapper blete-features-section" data-stellar-background-ratio="0.5">
        <div id="projects" class="blete-parallax-overlay"></div>
        <div class="container">
            <div class="row">
                <!-- Section Header -->
                <div class="col-md-12 col-sm-12 col-xs-12 blete-odd-header blete-section-header-parallax wow slideInDown">
                    <h2>MY <span class="blete-highlight-text">PROJECTS</span></h2>
                    <div class="blete-section-divider"></div>
                    <h4 class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">These the projects that I am passionate about</h4>
                    <br /><br />
                    <p style="text-align: center; color: red"> Currently in the process of documenting and adding all my projects, keep checking up to see the details of all the projects I'm passionate about! In the meantime, feel free to look at all these projects I do have ready. </p>

                </div>
                <!-- Section Header End -->
                
                <!-- Features -->
                <div class="blete-features">
                    
                    <!-------------------------------Left Group----------------------------------------------------->
                    
                    <div class="col-md-4 col-sm-4 col-xs-12 wow rotateInDownLeft">
                        <a href="/career-fair-app" class="page_link">
                            <div class="blete-blurb-icon-left-square">
                                <div class="blete-icon">
                                    <i class="fa fa-mobile"></i>        
                                </div>
                                <div class="blete-blurb-text">
                                    <h3>Engineering Career Fair App</h3>
                                    <p>
                                        Texas A&M has one of the largest Career Fairs in the nation. Yearly we help more than 10,000 engineers get hired through the fair. I created a mobile application that allows students to have all the company recruiting information they need at the palm of their hands. Click on the icon for more info!
                                    </p>
                                </div>
                            </div>
                        </a>
                    </div>

                    <!---------------------------------- Middle Group ---------------------------------------->

                    <div class="col-md-4 col-sm-4 col-xs-12 wow slideInUp" data-wow-duration="1s">
                        
                        <a href="/blockchain" class="page_link">
                            <div class="blete-blurb-icon-left-square">
                                <div class="blete-icon">
                                    <i class="fa fa-link"></i>
                                </div>
                                <div class="blete-blurb-text">
                                    <h3>Blockchain</h3>
                                    <p>
                                        I did research over the Blockchain, the technology behind the phenomenon of bitcoin. I had the privilege to present to a group of developers located in Bartlesville, Oklahoma about my research. Click for more information!
                                    </p>
                                </div>
                            </div>
                        </a>

                    </div>

                    <!---------------------------------- Right Group ---------------------------------------->

                    <div class="col-md-4 col-sm-4 col-xs-12 wow rotateInDownRight">

                        <a href="/space-simulation/index.html" class="page_link">
                            <div class="blete-blurb-icon-left-square">
                                <div class="blete-icon">
                                    <i class="fa fa-space-shuttle"></i>
                                </div>
                                <div class="blete-blurb-text">
                                    <h3>Space Simulation</h3>
                                    <p>
                                        This project involves making a space simulation of the moon exploding using JavaScript libraries. The simulation features the moon exploding and fragmenting across the galaxy as well as a space station with survival pods. Click for more info!
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
    <section id="work" class="blete-custom-sec blete-odd-wrapper blete-description">
        <div class="container">
            <div class="row">
            <!-- Section Header -->
                <div class="col-md-12 col-sm-12 col-xs-12 blete-odd-header wow fadeInDown">
                    <h2>PREVIOUS <span class="blete-odd-highlight-text">WORK</span></h2>
                    <div class="blete-section-divider"></div>
                    <h4 class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">In this section I’m going to go over what my past work has been. I’ve had the opportunity to intern for two great companies as a Software Developer. </h4>
                    <br><br><br>

                    <p style="text-align: left">
                    My most recent internship was at Phillips 66 in Bartlesville Oklahoma. Phillips 66 is a midstream energy company with pipelines and midstream facilities all across the United States. During my internship I was able to gain an in depth knowledge over the energy value chain, something that I never thought I would do as a Computer Engineer. I was able to do several projects while I interned here. The most exciting part of the internship was getting the ability to research Blockchain technology and how it can impact not just Phillips 66, but the energy industry as a whole. My official title was Operational Development under Application Services. The role saw me developing and maintain the applications used by the company internally. My first project was to rewrite the batch job that notifies users when an account they manage is about to expire. I was able to significantly improve the time that it took to run from ~20 minutes to 3 minutes. I was also able to reduce the total lines of code from ~800 to ~300 lines. This was an exciting project and I got to see the impact it had almost immediately. Lastly, I created an application that allowed the Lubrication R&D team to submit data they received from research into a database. This data needed to be formatted specifically and fit numerous amounts of tests so that it could be formatted correctly by the analyzing software. 
                    </p>

                    <p style="text-align: left">
                    My first internship ever was Texas Instruments in Dallas, Texas. Texas Instruments is a company that designs and manufactures semiconductors. I was able to get to learn the semiconductor manufacturing process and got to visit the fabs fairly regularly to understand the way the company made profit. I was able to work on several projects during my tenure here. I was able to create an application that allowed the manufacturing team to reserve tools in a fab in advance. This application was useful when very high priority products were going through the line and needed to have a tool ready to greet them. I also worked on several other smaller applications, most notably an application that allowed users to move useful files between tools in different fabs. This is useful as many of the instruments are older and need specialized software to accomplish this. 
                    </p>
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
                            This website was created to document all my hobbies and passions. I hope that you can get something out of being in my website. Please feel free to contact me if you have any questions or ideas. 
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