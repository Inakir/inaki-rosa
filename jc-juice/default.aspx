<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="default_cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<!-- Favicon Ico -->
<![if !IE]>
<link rel="icon" href="http://inaki-rosa.azurewebsites.net/jc-juice/images/favicon.png" type="image/x-icon" />
<link rel="shortcut icon" href="http://inaki-rosa.azurewebsites.net/jc-juice/images/favicon.png" type="image/x-icon" />
<![endif]>
<!-- This is needed for IE -->
<link rel="shortcut icon" href="http://inaki-rosa.azurewebsites.net/jc-juice/images/favicon.png" type="image/x-icon" />
<link rel="icon" href="http://inaki-rosa.azurewebsites.net/jc-juice/favicon.png" type="image/x-icon" />

<head>
    <meta charset="UTF-8" />
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
	<meta name="p:domain_verify" content="2672511aebca4c458808a023cab48e08"/>
    
    <!--<meta property="og:image" content="http://inaki-rosa.azurewebsites.net/jc-juice/images/favicon.png" />-->
    <meta property="og:description" content="JC Juice is an alternative rap artist based out of college station." />
    <!--<meta property="og:url"content="http://jcjuice.com" />-->
    <meta property="og:title" content="JC Juice" />

    <!-- Title -->

    <title>JC Juice</title>

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
                        <ul class="nav navbar-nav blete-menu-wrapper" style="float: left;">
                    <!--
                        <li><iframe src="https://open.spotify.com/follow/1/?uri=spotify:artist:6KLXNXjgZUa0ZMyo0KQZOr&size=detail&theme=light" width="300" height="56" scrolling="no" frameborder="0" style="border:none; overflow:hidden;" allowtransparency="true"></iframe></li>
                        
                        <!--<li><a href="https://twitter.com/JC_lamusique?ref_src=twsrc%5Etfw" class="twitter-follow-button" data-show-count="false">Follow @JC_lamusique</a><script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script></li>
                        <li><div class="fb-like" data-colorscheme="dark" data-href="https://www.facebook.com/jc.la.musique" data-layout="button" data-action="like" data-size="small" data-show-faces="false" data-share="false"></div></li>
                        -->
                        <li><a href="https://open.spotify.com/artist/6KLXNXjgZUa0ZMyo0KQZOr"><i class="fa fa-spotify fa-2x"></i></a></li>
                        <li><a href="https://www.instagram.com/jcjuice/"><i class="fa fa-instagram fa-2x"></i></a></li>
                        <li><a href="https://www.facebook.com/jc.la.musique/"><i class="fa fa-facebook fa-2x"></i></a></li>
                        <li><a href="https://soundcloud.com/jcjuicer"><i class="fa fa-soundcloud fa-2x"></i></a></li>
                    </ul>
                    <ul class="nav navbar-nav blete-menu-wrapper">

                        <li class="active">
                            <a href="#top">Top</a>
                        </li>
                        <!--<li>
                            <a href="#announcments">Announcements</a>
                        </li>-->
                        <li>
                            <a href="#about">About</a>
                        </li>
                        <li>
                            <a href="#music">Music</a>
                        </li>
                        <li>
                            <a href="#team">Team</a>
                        </li>
                        <li>
                            <a href="#photos">Gallery</a>
                        </li>
                        <li>
                            <a href="#contact">Contact</a>
                        </li>
                        <!--
                            <li><a href="https://www.facebook.com/jc.la.musique/"><i class="fa fa-facebook" ></i></a></li>
                            <li><a href="https://www.instagram.com/jcjuice/"><i class="fa fa-instagram"></i></a></li>
                        -->

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
                <img class="sp-image" src="/jc-juice/images/img-header/JC1.jpg" alt="Slider 1" />
            </div>
            <!----------------------------------------------------------------------End Slide------------------------------------------------------------------------------------->

            <div class="sp-slide blete-main-slides">
                <div class="blete-img-overlay"></div>
                <img class="sp-image" src="/jc-juice/images/img-header/JC2.jpg" alt="Slider 2" />
            </div>

            <!----------------------------------------------------------------------End Slide------------------------------------------------------------------------------------->

            <div class="sp-slide blete-main-slides">
                <div class="blete-img-overlay"></div>
                <img class="sp-image" src="/jc-juice/images/img-header/JC 5.jpg" alt="Slider 3" />
            </div>

            <!----------------------------------------------------------------------End Slide------------------------------------------------------------------------------------->
            
            <div class="sp-slide blete-main-slides">
                <div class="blete-img-overlay"></div>
                <img class="sp-image" src="images/img-header/JC 8.jpg" alt="Slider 3" />
            </div>

            <!----------------------------------------------------------------------End Slide------------------------------------------------------------------------------------->
        </div>
    </section>

    <!-- ===========   Announcments Section   =========== 
    <div id="announcments" class="anchor"></div>
    <!-- =========   Summary Section   ========= 
    <section class="blete-custom-sec blete-section-wrapper blete-description">
        <div class="container">
            <div class="row">
                <!-- Section Header 
                <div class="col-md-12 col-sm-12 col-xs-12 blete-section-header wow fadeInDown">
                    <h2>Announcements<span class="blete-highlight-text"></span></h2>
                    <div class="blete-section-divider"></div>
                </div>
                <!-- Section Header End 
                
                <div class="col-md-6 col-sm-12 col-xs-12 blete-custom-sec-img wow bounceInLeft" style="text-align: center;">
                    <img src="/jc-juice/images/shiner.jpg" alt="JC Juice" style="max-height: 475px;">
                </div>

                <div class="col-md-6 col-sm-6 col-xs-12 blete-custom-sec-text wow bounceInRight" style="text-align: center;">
                    <div class="fb-post" data-href="https://www.facebook.com/colin.saunders.180/posts/1924849897557755?pnref=story" data-width="500" data-show-text="true"><blockquote cite="https://www.facebook.com/colin.saunders.180/posts/1924849897557755" class="fb-xfbml-parse-ignore"><p>BIG things are happening in College Station.  &#x1f50a; Get your tickets NOW! &#x1f3a4;</p>Posted by <a href="https://www.facebook.com/colin.saunders.180">Colin Saunders</a> on&nbsp;<a href="https://www.facebook.com/colin.saunders.180/posts/1924849897557755">Monday, December 11, 2017</a></blockquote></div>
                </div>
            </div>
        </div>
    </section>
    <!-- About Section End -->



    <!-- Main Slider End -->
    <!-- ===========   About Section   =========== -->
    <div id="about" class="anchor"></div>
    <!-- =========   Summary Section   ========= -->
    <section class="blete-custom-sec blete-section-wrapper blete-description">
        <div class="container">
            <div class="row">
                <!-- Section Header -->
                <div class="col-md-12 col-sm-12 col-xs-12 blete-section-header wow fadeInDown">
                    <h2>ABOUT <span class="blete-highlight-text">JC JUICE</span></h2>
                    <div class="blete-section-divider"></div>
                    <!--    <br />
                    <h4 class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">Engineer by day, rapper by night.</h4>-->
                </div>
                <!-- Section Header End -->

                <div class="col-md-4 col-sm-6 col-xs-12 blete-custom-sec-img wow bounceInLeft">
                    <img src="/jc-juice/images/B&W15.jpg" alt="JC Juice">
                    <div class="fb-like" data-colorscheme="dark" data-href="https://www.facebook.com/jc.la.musique" data-layout="button" data-action="like" data-size="large" data-show-faces="false" data-share="false"></div>
                    <iframe src="https://open.spotify.com/follow/1/?uri=spotify:artist:6KLXNXjgZUa0ZMyo0KQZOr&size=basic&theme=light&show-count=0" width="200" height="26" scrolling="no" frameborder="0" style="border:none; overflow:hidden;" allowtransparency="true"></iframe>
                </div>

                <div class="col-md-8 col-sm-6 col-xs-12 blete-custom-sec-text wow bounceInRight">
                    <p>JC Juice is a self funded independant hip-hop artist based out of College Station, TX.</p>
                    <p>JC was born in Manhattan, Kansas on February 22, 1996. His primary language is French, as he is a first-generation American whose family originates in Cameroon. JC moved to Texas in 2000, where he has spent the majority of his life. He attends college at Texas A&M University where he is in his final year of a Mechanical Engineering Program.</p>
                    <p>JC started making music in his senior year of high school, along with a few neighborhood friends in his hometown of Frisco, TX. There they formed a hip-hop collective dubbed "Dark Generation". JC split from the group in 2013 when he moved to College Station. He has since continued to pursue music, collaborating with several individuals in the music community of Texas A&M.</p>
                    <p>JC labels his music as alternative rap, as it draws influence from jazz, funk and soul. He seeks to tackle tough topics and convey deep messages through his intricate lyricism, accompanied by smooth/jazzy instrumentals. JC's music is inspired by rappers such as J Cole, Kendrick Lamar, Mac Miller, Anderson Paa, Chance the Rapper and Logic, who also place a special accent on deep lyrics. As JC says, "What I'm hoping to do is make music that people can listen to and relate to. I'm trying to say something in my rap that's true in my life and that's true in other people's lives as well.</p>
                </div>
            </div>
        </div>
    </section>
    <!-- About Section End -->

<!-- =========   Track Section   ========= -->
    <div id="music" class="anchor"></div>
    <section id="featured-tracks" class="blete-section-wrapper blete-section">
        <!-- Container -->
        <div class="container">
            <div class="row">
                <!-- Section Header -->
                <div class="col-md-12 col-sm-12 col-xs-12 blete-section-header wow fadeInDown">
                    <h2>THE <span class="blete-highlight-text">MUSIC</span></h2>
                    <div class="blete-section-divider"></div>
                    <p class="col-md-12 col-sm-12 col-xs-12 col-md-offset-0 col-sm-offset-1">
                        <iframe src="https://open.spotify.com/follow/1/?uri=spotify:artist:6KLXNXjgZUa0ZMyo0KQZOr&size=detail&theme=dark&show-count=0" width="168" height="56" scrolling="no" frameborder="0" style="border:none; overflow:hidden;" allowtransparency="true"></iframe>
                    </p>
                </div>
                <!-- Section Header End -->
            </div>
        </div>
        <!-- Container End -->
        <!-- Featured Works Slider -->
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="blete-portfolio-work-slider-section wow fadeIn" data-wow-duration="2s">
                    <div id="featured-work-slider" class="owl-carousel blete-portfolio-works-slider">
                        <!-- Work 4 -->
                        <div class="blete-portfolio-work-item">
                            <iframe class="JC-Spotify" src="https://open.spotify.com/embed/artist/6KLXNXjgZUa0ZMyo0KQZOr" frameborder="0" allowtransparency="true"></iframe>
                        </div>
                        <!-- Work 4 End -->
                        <!-- Work 1 -->
                        <div class="blete-portfolio-work-item">
                            <iframe class="JC-Spotify" src="https://open.spotify.com/embed/track/25oGftDbXX3M3t63QYcZBl" frameborder="0" allowtransparency="true"></iframe>
                        </div>
                        <!-- Work 1 End -->
                        <!-- Work 2 -->
                        <div class="blete-portfolio-work-item">
                            <iframe class="JC-Spotify" src="https://open.spotify.com/embed/track/1aqzfKnNenAl4xJjIkRtCQ" frameborder="0" allowtransparency="true"></iframe>
                        </div>
                        <!-- Work 2 End -->
                        <!-- Work 3 -->
                        <div class="blete-portfolio-work-item">
                            <iframe class="JC-Spotify" src="https://open.spotify.com/embed/track/2EU0XdZWbmkbWGw0FHxlTd" frameborder="0" allowtransparency="true"></iframe>
                        </div>
                        <!-- Work 3 End -->
                        <!-- Work 4 -->
                        <div class="blete-portfolio-work-item">
                            <iframe class="JC-Spotify" src="https://open.spotify.com/embed/track/3CwjsbxVAj6Ie0nXPal2P1" frameborder="0" allowtransparency="true"></iframe>
                        </div>
                        <!-- Work 4 End -->
                        <!-- Work 5 -->
                        <div class="blete-portfolio-work-item">
                            <iframe class="JC-Spotify" src="https://open.spotify.com/embed/track/6DwGpt0MfJP7Lbhd4ZCnvm" frameborder="0" allowtransparency="true"></iframe>
                        </div>
                        <!-- Work 5 End -->
                        <!-- Work 6 -->
                        <div class="blete-portfolio-work-item">
                            <iframe class="JC-Spotify" src="https://open.spotify.com/embed/track/0cZQWCRcJkoZwBY0UQ03Xg" frameborder="0" allowtransparency="true"></iframe>
                        </div>
                        <!-- Work 6 End -->
                        <!-- Work 7 -->
                        <div class="blete-portfolio-work-item">
                            <iframe class="JC-Spotify" src="https://open.spotify.com/embed/track/5qV8jFXWD0g03nQj37qdUd" frameborder="0" allowtransparency="true"></iframe>
                        </div>
                        <!-- Work 7 End -->
                    </div>
                </div>
            </div>
        </div>
        <!-- Featured Works Slider -->
    </section>
    <!-- Featured Work End -->

    <!-- =========  Contributor Section   ========= -->
    <div id="team" class="anchor"></div>
    <section id="theteam" class="blete-section-wrapper blete-section">
        <div class="container">
            <div class="row">
                <!-- Section Header -->
                <div class="col-md-12 col-sm-12 col-xs-12 blete-section-header wow fadeInDown">
                    <h2>THE <span class="blete-highlight-text">TEAM</span></h2>
                    <div class="blete-section-divider"></div>
                    <!--<b class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">This project could not have been completed without the help of the Student Engineers' Council and the Systems Administration team. Below is a description of the roles of the team members that worked on this project.</b>-->
                </div>
                <!-- Section Header End -->
                <!-- Team Slider -->
                <div id="team-slider" class="owl-carousel blete-team-carousal col-md-12 col-sm-12 col-xs-12 wow fadeIn" data-wow-duration="2s">
                    <!-- Slides -->
                    <div class="blete-team-slides col-md-12 col-sm-12 col-xs-12">
                        <div class="blete-member-img-wrapper">
                            <img src="/jc-juice/images/team/David Alvarez.jpg" alt="David" />
                        </div>
                        <div class="blete-member-details">
                            <h3>David Alvarez</h3>
                            <span class="blete-member-desg">Drummer in the band YeeHa, Guitarist and vocalist in the band HYAH, Producer</span>
                            <!--<p>Drummer in the band YeeHa, Guitarist and vocalist in the band HYAH. Drummer in the band YeeHa, Guitarist and vocalist in the band HYAH. Drummer in the band YeeHa, Guitarist and vocalist in the band HYAH. </p>-->
                            <ul class="blete-team-social-icon">
                                <li class="social-globe">
                                    <li class="social-music"><a href="http://hyah.bandcamp.com/"><i class="fa fa-bandcamp fa-2x"></i></a></li>
                                    <li class="social-music"><a href="http://yeeha.bandcamp.com/"><i class="fa fa-globe fa-2x"></i></a></li>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- Slides End -->
                    <!-- Slides -->
                    <div class="blete-team-slides col-md-12 col-sm-12 col-xs-12">
                        <div class="blete-member-img-wrapper">
                            <img src="/jc-juice/images/team/Poncho Galvan.jpg" alt="Poncho" />
                        </div>
                        <div class="blete-member-details">
                            <h3>Poncho Galvan</h3>
                            <span class="blete-member-desg">Bassist in the bands YeeHa and HYAH</span>
                            <!--<p>Bassist in the bands YeeHa and HYAH. Bassist in the bands YeeHa and HYAH. Bassist in the bands YeeHa and HYAH. Bassist in the bands YeeHa and HYAH. </p>-->
                            <ul class="blete-team-social-icon">
                                <li class="social-music"><a href="http://hyah.bandcamp.com/"><i class="fa fa-bandcamp fa-2x"></i></a></li>
                                <li class="social-music"><a href="http://yeeha.bandcamp.com/"><i class="fa fa-bandcamp fa-2x"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- Slides End -->
                    <!-- Slides -->
                    <div class="blete-team-slides col-md-12 col-sm-12 col-xs-12">
                        <div class="blete-member-img-wrapper">
                            <img src="/jc-juice/images/team/Colin Saunders.jpg" alt="Team Member 1" />
                        </div>
                        <div class="blete-member-details">
                            <h3>Colin Saunders</h3>
                            <span class="blete-member-desg">Photographer, Cover Artists, Graphic Designer</span>
                            <!--<p>This is what Colin is. This is what Colin is. This is what Colin is. </p>-->
                            <ul class="blete-team-social-icon">
                                <li class="social-globe">
                                    <a href="http://www.csphotography-media.com/"><i class="fa fa-camera fa-2x"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- Slides End -->
                    <!-- Slides -->
                    <div class="blete-team-slides col-md-12 col-sm-12 col-xs-12">
                        <div class="blete-member-img-wrapper">
                            <img src="/jc-juice/images/team/Inaki Rosa.jpg" alt="Team Member 2" />
                        </div>
                        <div class="blete-member-details">
                            <h3>Iñaki Rosa</h3>
                            <span class="blete-member-desg">Electronic Platform Developer</span>
                            <!--<p>This is what I am. This is what I am. This is what I am. This is what I am. This is what I am. This is what I am. </p>-->
                            <ul class="blete-team-social-icon">
                                <li class="social-linkedin">
                                    <a href="https://www.linkedin.com/in/inaki-rosa/"><i class="fa fa-linkedin fa-2x"></i></a>
                                </li>
                                <li class="social-github">
                                    <a href="https://github.com/Inakir"><i class="fa fa-github fa-2x"></i></a>
                                </li>
                                <li class="social-globe">
                                    <a href="http://inakirosa.com"><i class="fa fa-globe fa-2x"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- Slides End -->
                    <!-- Slides -->
                    <div class="blete-team-slides col-md-12 col-sm-12 col-xs-12">
                        <div class="blete-member-img-wrapper">
                            <img src="/jc-juice/images/team/Eliot Guerin.jpg" alt="Team Member 4" />
                        </div>
                        <div class="blete-member-details">
                            <h3>Eliot Guerin</h3>
                            <span class="blete-member-desg">Keyboardist in the band HYAH, Electronic musician under the name Taper/Fader</span>
                            <!--<p>Bassist in the bands YeeHa and HYAH. Bassist in the bands YeeHa and HYAH. Bassist in the bands YeeHa and HYAH. Bassist in the bands YeeHa and HYAH. </p>-->
                            <ul class="blete-team-social-icon">
                                <li class="social-music"><a href="http://hyah.bandcamp.com/"><i class="fa fa-bandcamp fa-2x"></i></a></li>
                                <li class="social-music"><a href="http://soundcloud.com/taperfader/"><i class="fa fa-soundcloud fa-2x"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- Slides End -->
                    <!-- Slides -->
                    <div class="blete-team-slides col-md-12 col-sm-12 col-xs-12">
                        <div class="blete-member-img-wrapper">
                            <img src="/jc-juice/images/team/Will Roberts.jpg" alt="Team Member 3" />
                        </div>
                        <div class="blete-member-details">
                            <h3>Will Roberts</h3>
                            <span class="blete-member-desg">Drummer in the band HYAH</span>
                            <!--<p>Bassist in the bands YeeHa and HYAH. Bassist in the bands YeeHa and HYAH. Bassist in the bands YeeHa and HYAH. Bassist in the bands YeeHa and HYAH. </p>-->
                            <ul class="blete-team-social-icon">
                                <li class="social-music"><a href="http://hyah.bandcamp.com/"><i class="fa fa-bandcamp fa-2x"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- Slides End -->
                    <!-- Slides 
                    <div class="blete-team-slides col-md-12 col-sm-12 col-xs-12">
                        <div class="blete-member-img-wrapper">
                            <img src="/jc-juice/images/team/Chris Bohanon.jpg" alt="Boheezy" />
                        </div>
                        <div class="blete-member-details">
                            <h3>Chris Bohanon</h3>
                            <span class="blete-member-desg">Producer Musician</span>
                            <!--<p>Bassist in the bands YeeHa and HYAH. Bassist in the bands YeeHa and HYAH. Bassist in the bands YeeHa and HYAH. Bassist in the bands YeeHa and HYAH. </p>
                            <ul class="blete-team-social-icon"></ul>
                        </div>
                    </div>
                    <!-- Slides End -->

                </div>
                <!-- Team Slider End -->
            </div>
        </div>
    </section>
    <!-- Team Section End -->

    <!-- ======= GALLERY Section ======= -->
    <section id="photos" class="blete-section-wrapper blete-portfolio-section">
        <div class="container">
            <div class="row">

                <!-- Section Header -->
                <div class="col-md-12 col-sm-12 col-xs-12 blete-section-header wow fadeInDown">
                    <h2>PHOTO <span class="blete-highlight-text">GALLERY</span></h2>
                    <div class="blete-section-divider"></div>
                    <!--<p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, tempora totam qui.</p>-->
                </div>
                <!-- Section Header End -->

            </div>
        </div>

        <!-- Works -->
        <div class="blete-portfolio-works wow fadeIn" data-wow-duration="2s">
            <!-- Filter Button Start -->
            <div id="blete-portfolio-filter" class="blete-portfolio-filter-btn-group">
                <ul>
                    <li>
                        <a href="#" class="selected" data-filter="*">ALL</a> 
                        <a href="#" data-filter=".alive">Cover Art</a>
                        <a href="#" data-filter=".revolutions">Revolutions Shows</a> 
                        <a href="#" data-filter=".aggies">Aggies United</a>
                        <a href="#" data-filter=".colin">Colin Saunders Photography</a>
                    </li>
                </ul>
            </div>
            <!-- Filter Button End -->

            <div class="blete-portfolio-items">

                <!-----------------------------------------Row-------------------------------------------------->
                <!-- Portfolio Items -->
                <div class="item blete-portfolio-item colin alive">
                    <div class="blete-portfolio-details-wrapper"><div class="blete-portfolio-details"><div class="blete-portfolio-meta-btn">
                        <img src="/jc-juice/images/img-portfolio/alive 1.jpg" alt="hi" />
                        <ul><li class="blete-lighbox">
                            <a href="/jc-juice/images/img-portfolio/alive 1.jpg" class="blete-featured-work-img"><i class="fa fa-search"></i></a>
                        </li></ul>
                    </div></div></div>
                </div>
                <!-- Portfolio Items End -->
                <!-- Portfolio Items -->
                <div class="item blete-portfolio-item colin alive">
                    <img src="/jc-juice/images/img-portfolio/alive 2.jpg" alt="hi" />
                    <div class="blete-portfolio-details-wrapper"><div class="blete-portfolio-details"><div class="blete-portfolio-meta-btn">
                        <ul><li class="blete-lighbox">
                            <a href="/jc-juice/images/img-portfolio/alive 2.jpg" class="blete-featured-work-img"><i class="fa fa-search"></i></a>
                        </li></ul>
                    </div></div></div>
                </div>
                <!-- Portfolio Items End -->
                <!-- Portfolio Items -->
                <div class="item blete-portfolio-item colin alive">
                    <img src="/jc-juice/images/img-portfolio/alive 3.jpg" alt="hi" />
                    <div class="blete-portfolio-details-wrapper"><div class="blete-portfolio-details"><div class="blete-portfolio-meta-btn">
                        <ul><li class="blete-lighbox">
                            <a href="/jc-juice/images/img-portfolio/alive 3.jpg" class="blete-featured-work-img"><i class="fa fa-search"></i></a>
                        </li></ul>
                    </div></div></div>
                </div>
                <!-- Portfolio Items End -->
                <!-- Portfolio Items -->
                <div class="item blete-portfolio-item colin alive">
                    <img src="/jc-juice/images/img-portfolio/alive 4.jpg" alt="hi" />
                    <div class="blete-portfolio-details-wrapper"><div class="blete-portfolio-details"><div class="blete-portfolio-meta-btn">
                        <ul><li class="blete-lighbox">
                            <a href="/jc-juice/images/img-portfolio/alive 4.jpg" class="blete-featured-work-img"><i class="fa fa-search"></i></a>
                        </li></ul>
                    </div></div></div>
                </div>
                <!-- Portfolio Items End -->
                <!-- Portfolio Items -->
                <div class="item blete-portfolio-item colin alive">
                    <img src="/jc-juice/images/img-portfolio/alive 6.jpg" alt="hi" />
                    <div class="blete-portfolio-details-wrapper"><div class="blete-portfolio-details"><div class="blete-portfolio-meta-btn">
                        <ul><li class="blete-lighbox">
                            <a href="/jc-juice/images/img-portfolio/alive 6.jpg" class="blete-featured-work-img"><i class="fa fa-search"></i></a>
                        </li></ul>
                    </div></div></div>
                </div>
                <!-- Portfolio Items End -->
                <!-----------------------------------------End Row-------------------------------------------------->
                <!-----------------------------------------Row-------------------------------------------------->
                <!-- Portfolio Items -->
                <div class="item blete-portfolio-item colin aggies">
                    <img src="/jc-juice/images/img-portfolio/au1.jpg" alt="hi" />
                    <div class="blete-portfolio-details-wrapper"><div class="blete-portfolio-details"><div class="blete-portfolio-meta-btn">
                        <ul><li class="blete-lighbox">
                            <a href="/jc-juice/images/img-portfolio/au1.jpg" class="blete-featured-work-img"><i class="fa fa-search"></i></a>
                        </li></ul>
                    </div></div></div>
                </div>
                <!-- Portfolio Items End -->
                <!-- Portfolio Items -->
                <div class="item blete-portfolio-item colin aggies">
                    <img src="/jc-juice/images/img-portfolio/au2.jpg" alt="hi" />
                    <div class="blete-portfolio-details-wrapper"><div class="blete-portfolio-details"><div class="blete-portfolio-meta-btn">
                        <ul><li class="blete-lighbox">
                            <a href="/jc-juice/images/img-portfolio/au2.jpg" class="blete-featured-work-img"><i class="fa fa-search"></i></a>
                        </li></ul>
                    </div></div></div>
                </div>
                <!-- Portfolio Items End -->
                <!-- Portfolio Items -->
                <div class="item blete-portfolio-item colin revolutions">
                    <img src="/jc-juice/images/img-portfolio/r1.jpg" alt="hi" />
                    <div class="blete-portfolio-details-wrapper"><div class="blete-portfolio-details"><div class="blete-portfolio-meta-btn">
                        <ul><li class="blete-lighbox">
                            <a href="/jc-juice/images/img-portfolio/r1.jpg" class="blete-featured-work-img"><i class="fa fa-search"></i></a>
                        </li></ul>
                    </div></div></div>
                </div>
                <!-- Portfolio Items End -->
                <!-- Portfolio Items -->
                <div class="item blete-portfolio-item colin revolutions">
                    <img src="/jc-juice/images/img-portfolio/r2.jpg" alt="hi" />
                    <div class="blete-portfolio-details-wrapper"><div class="blete-portfolio-details"><div class="blete-portfolio-meta-btn">
                        <ul><li class="blete-lighbox">
                            <a href="/jc-juice/images/img-portfolio/r2.jpg" class="blete-featured-work-img"><i class="fa fa-search"></i></a>
                        </li></ul>
                    </div></div></div>
                </div>
                <!-- Portfolio Items End -->
                <!-----------------------------------------End Row-------------------------------------------------->

                <!-----------------------------------------Row-------------------------------------------------->
                <!-- Portfolio Items -->
                <div class="item blete-portfolio-item colin">
                    <img src="/jc-juice/images/img-portfolio/msc2.jpg" alt="hi" />
                    <div class="blete-portfolio-details-wrapper"><div class="blete-portfolio-details"><div class="blete-portfolio-meta-btn">
                        <ul><li class="blete-lighbox">
                            <a href="/jc-juice/images/img-portfolio/msc2.jpg" class="blete-featured-work-img"><i class="fa fa-search"></i></a>
                        </li></ul>
                    </div></div></div>
                </div>
                <!-- Portfolio Items End -->
                <!-- Portfolio Items -->
                <div class="item blete-portfolio-item colin">
                    <img src="/jc-juice/images/img-portfolio/c6.jpg" alt="hi" />
                    <div class="blete-portfolio-details-wrapper"><div class="blete-portfolio-details"><div class="blete-portfolio-meta-btn">
                        <ul><li class="blete-lighbox">
                            <a href="/jc-juice/images/img-portfolio/c6.jpg" class="blete-featured-work-img"><i class="fa fa-search"></i></a>
                        </li></ul>
                    </div></div></div>
                </div>
                <!-- Portfolio Items End -->
                <!-- Portfolio Items -->
                <div class="item blete-portfolio-item colin">
                    <img src="/jc-juice/images/img-portfolio/c7.jpg" alt="hi" />
                    <div class="blete-portfolio-details-wrapper"><div class="blete-portfolio-details"><div class="blete-portfolio-meta-btn">
                        <ul><li class="blete-lighbox">
                            <a href="/jc-juice/images/img-portfolio/c7.jpg" class="blete-featured-work-img"><i class="fa fa-search"></i></a>
                        </li></ul>
                    </div></div></div>
                </div>
                <!-- Portfolio Items End -->
                <!-- Portfolio Items -->
                <div class="item blete-portfolio-item colin">
                    <img src="/jc-juice/images/img-portfolio/c8.jpg" alt="hi" />
                    <div class="blete-portfolio-details-wrapper"><div class="blete-portfolio-details"><div class="blete-portfolio-meta-btn">
                        <ul><li class="blete-lighbox">
                            <a href="/jc-juice/images/img-portfolio/c8.jpg" class="blete-featured-work-img"><i class="fa fa-search"></i></a>
                        </li></ul>
                    </div></div></div>
                </div>
                <!-- Portfolio Items End -->
                <!-- Portfolio Items -->
                <div class="item blete-portfolio-item colin">
                    <img src="/jc-juice/images/img-portfolio/c9.jpg" alt="hi" />
                    <div class="blete-portfolio-details-wrapper"><div class="blete-portfolio-details"><div class="blete-portfolio-meta-btn">
                        <ul><li class="blete-lighbox">
                            <a href="/jc-juice/images/img-portfolio/c9.jpg" class="blete-featured-work-img"><i class="fa fa-search"></i></a>
                        </li></ul>
                    </div></div></div>
                </div>
                <!-- Portfolio Items End -->
                <!-----------------------------------------End Row-------------------------------------------------->

                <!-----------------------------------------Row-------------------------------------------------->
                <!-- Portfolio Items -->
                <div class="item blete-portfolio-item colin">
                    <img src="/jc-juice/images/img-portfolio/c2.jpg" alt="hi" />
                    <div class="blete-portfolio-details-wrapper"><div class="blete-portfolio-details"><div class="blete-portfolio-meta-btn">
                        <ul><li class="blete-lighbox">
                            <a href="/jc-juice/images/img-portfolio/c2.jpg" class="blete-featured-work-img"><i class="fa fa-search"></i></a>
                        </li></ul>
                    </div></div></div>
                </div>
                <!-- Portfolio Items End -->
                <!-- Portfolio Items -->
                <div class="item blete-portfolio-item colin">
                    <img src="/jc-juice/images/img-portfolio/c3.jpg" alt="hi" />
                    <div class="blete-portfolio-details-wrapper"><div class="blete-portfolio-details"><div class="blete-portfolio-meta-btn">
                        <ul><li class="blete-lighbox">
                            <a href="/jc-juice/images/img-portfolio/c3.jpg" class="blete-featured-work-img"><i class="fa fa-search"></i></a>
                        </li></ul>
                    </div></div></div>
                </div>
                <!-- Portfolio Items End -->
                <!-- Portfolio Items -->
                <div class="item blete-portfolio-item colin">
                    <img src="/jc-juice/images/img-portfolio/c4.jpg" alt="hi" />
                    <div class="blete-portfolio-details-wrapper"><div class="blete-portfolio-details"><div class="blete-portfolio-meta-btn">
                        <ul><li class="blete-lighbox">
                            <a href="/jc-juice/images/img-portfolio/c4.jpg" class="blete-featured-work-img"><i class="fa fa-search"></i></a>
                        </li></ul>
                    </div></div></div>
                </div>
                <!-- Portfolio Items End -->
                <!-----------------------------------------End Row-------------------------------------------------->

                <!-----------------------------------------Row-------------------------------------------------->
                <!-- Portfolio Items -->
                <div class="item blete-portfolio-item colin">
                    <img src="/jc-juice/images/img-portfolio/msc1.jpg" alt="hi" />
                    <div class="blete-portfolio-details-wrapper"><div class="blete-portfolio-details"><div class="blete-portfolio-meta-btn">
                        <ul><li class="blete-lighbox">
                            <a href="/jc-juice/images/img-portfolio/msc1.jpg" class="blete-featured-work-img"><i class="fa fa-search"></i></a>
                        </li></ul>
                    </div></div></div>
                </div>
                <!-- Portfolio Items End -->
               
                <!-- Portfolio Items -->
                <div class="item blete-portfolio-item colin">
                    <img src="/jc-juice/images/img-portfolio/c1.jpg" alt="hi" />
                    <div class="blete-portfolio-details-wrapper"><div class="blete-portfolio-details"><div class="blete-portfolio-meta-btn">
                        <ul><li class="blete-lighbox">
                            <a href="/jc-juice/images/img-portfolio/c1.jpg" class="blete-featured-work-img"><i class="fa fa-search"></i></a>
                        </li></ul>
                    </div></div></div>
                </div>
                <!-- Portfolio Items End -->

                <!-- Portfolio Items -->
                <div class="item blete-portfolio-item colin">
                    <img src="/jc-juice/images/img-portfolio/msc3.jpg" alt="hi" />
                    <div class="blete-portfolio-details-wrapper"><div class="blete-portfolio-details"><div class="blete-portfolio-meta-btn">
                        <ul><li class="blete-lighbox">
                            <a href="/jc-juice/images/img-portfolio/msc3.jpg" class="blete-featured-work-img"><i class="fa fa-search"></i></a>
                        </li></ul>
                    </div></div></div>
                </div>
                <!-- Portfolio Items End -->

                <!-----------------------------------------Row-------------------------------------------------->

                <!-- Portfolio Items -->
                <div class="item blete-portfolio-item colin">
                    <img src="/jc-juice/images/img-portfolio/c5.jpg" alt="hi" />
                    <div class="blete-portfolio-details-wrapper"><div class="blete-portfolio-details"><div class="blete-portfolio-meta-btn">
                        <ul><li class="blete-lighbox">
                            <a href="/jc-juice/images/img-portfolio/c5.jpg" class="blete-featured-work-img"><i class="fa fa-search"></i></a>
                        </li></ul>
                    </div></div></div>
                </div>
                <!-- Portfolio Items End -->
                
            </div>
        </div>
        <!-- Works End -->
    </section>
    <!-- Gallery Section End -->

    <!-- ========= Contact Section ========= -->
    <section id="contact" class="blete-section-wrapper blete-contact-section" data-stellar-background-ratio="0.5">
    <div class="blete-parallax-overlay"></div>
        <div class="container">
            <div class="row">

                <!-- Section Header -->
                <div class="col-md-12 col-sm-12 col-xs-12 blete-section-header wow fadeInDown blete-section-header-parallax">
                    <h2>CONTACT <span class="blete-highlight-text">JC JUICE</span></h2>
                    <div class="blete-section-divider"></div>
                    <p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">For inquirires, please contact me through any of the mediums below.</p>
                </div>
                <!-- Section Header End -->

                <div class="blete-contact-details">
                    <!-- Address Area -->
                    <div class="col-md-8 col-sm-12 col-xs-12 blete-contact-address wow bounceInLeft">
                        <ul class="blete-team-social-icon">
                            <li class="contact"><i class="fa fa-phone"></i>214-449-2080</li>
                            <li class="contact"><a href="mailto:contact@jcjuiceofficial.com"><i class="fa fa-envelope-o fa-2x"></i>contact@jcjuiceofficial.com</a></li>
                            <li class="contact"><a href="https://www.instagram.com/jcjuice/"><i class="fa fa-instagram fa-2x"></i>Follow me on Instragram</a></li>
                            <li class="contact"> <a href="https://www.facebook.com/jc.la.musique/"><i class="fa fa-facebook fa-2x"></i>Connect with me on Facebook</a></li>
                        </ul>
                    </div>
                    <!-- Address Area End -->
                    <!-- Insta -->
                    <div class="col-md-3 col-sm-8 col-xs-12 blete-contact-form wow bounceInRight"> <blockquote class="instagram-media" data-instgrm-permalink="https://www.instagram.com/p/Bc8kKcJliDm/" data-instgrm-version="8" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 20px; max-width:658px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:8px;"> <div style=" background:#F8F8F8; line-height:0; margin-top:40px; padding:50.0% 0; text-align:center; width:100%;"> <div style=" background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAMAAAApWqozAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAMUExURczMzPf399fX1+bm5mzY9AMAAADiSURBVDjLvZXbEsMgCES5/P8/t9FuRVCRmU73JWlzosgSIIZURCjo/ad+EQJJB4Hv8BFt+IDpQoCx1wjOSBFhh2XssxEIYn3ulI/6MNReE07UIWJEv8UEOWDS88LY97kqyTliJKKtuYBbruAyVh5wOHiXmpi5we58Ek028czwyuQdLKPG1Bkb4NnM+VeAnfHqn1k4+GPT6uGQcvu2h2OVuIf/gWUFyy8OWEpdyZSa3aVCqpVoVvzZZ2VTnn2wU8qzVjDDetO90GSy9mVLqtgYSy231MxrY6I2gGqjrTY0L8fxCxfCBbhWrsYYAAAAAElFTkSuQmCC); display:block; height:44px; margin:0 auto -44px; position:relative; top:-22px; width:44px;"></div></div><p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;"><a href="https://www.instagram.com/p/Bc8kKcJliDm/" style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none;" target="_blank">A post shared by JC Juice (@jcjuice)</a> on <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;" datetime="2017-12-21T01:45:43+00:00">Dec 20, 2017 at 5:45pm PST</time></p></div></blockquote> <script async defer src="//platform.instagram.com/en_US/embeds.js"></script></div>
                    <!-- Insta End -->


                </div>

            </div>
        </div>
    </section>
    <!-- Contact Section End -->

    <!-- ========= Social Section ========= -->
    <section id="social" class="blete-section-wrapper blete-contact-section" style="align-content: center;">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-12 col-xs-12 blete-section-header fb-page" data-href="https://www.facebook.com/jc.la.musique/" data-tabs="timeline" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/jc.la.musique/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/jc.la.musique/">JC Juice</a></blockquote></div>
                <div class="col-md-6 col-sm-12 col-xs-12 blete-section-header">
                    <a class="twitter-timeline" data-width="380" data-height="500" data-theme="dark" href="https://twitter.com/JC_lamusique?ref_src=twsrc%5Etfw">Tweets by JC_lamusique</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
                </div>
            </div>
        </div>
    </section>
    <!-- ========= Section End ========= -->

    <div class="thn">
        <div class="container thn">
            <div class="row">
                <div class="blete-footer-content">
                    <h6 class="blete-copyright-info">©2017</h6>
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
    <div id="fb-root"></div>
    <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.11';
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
</body>
</html>