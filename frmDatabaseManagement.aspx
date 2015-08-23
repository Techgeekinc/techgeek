<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmDatabaseManagement.aspx.cs" Inherits="frmDatabaseManagement" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <!-- Basic Page Needs
    ================================================== -->
    <meta charset="utf-8">
    <!--[if IE]><meta http-equiv="x-ua-compatible" content="IE=9" /><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>TechGeek Software Solution</title>
    <meta name="description" content="TechGeek Offering comprehensive IT solution to the global market place.Techgeek through its wide array of online services,print media services and facilitate with the mobile application software.our company is an ideal form of businesses and companies across the globe that help the buyer's and selleers to conduct their business smoothly and effectively.">
    <meta name="keywords" content="Website,Mobile Friendly website,customized website,Mobile Application,Play Store Application,Search Engine Optimizaiton(SEO), Social Media Optimization(SMO),Invoice Software,Billing Software,Domain Booking,Email Domain Booking,School DataBase Management System,ERP,Dynamic websites,Static websites,Google Mapping,Websites under 10000 Rs,Inventory System for Hotels,Websites Developer in Vadodara,Websites Developer in Dahod,TechGeek Software Solution,Mohammad Rajpurwala,Husain Jhabuawala,Husen Jambugohdawala,Burhan Vakharia">
    <meta name="author" content="TechGeek.org.in">

    <!-- Favicons
    ================================================== -->
    <link href="img/titleICO.png" rel="shortcut icon" type="image/x-icon" />


    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.css">

    <!-- Slider
    ================================================== -->
    <link href="css/owl.carousel.css" rel="stylesheet" media="screen">
    <link href="css/owl.theme.css" rel="stylesheet" media="screen">

    <!-- Stylesheet
    ================================================== -->
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <link rel="stylesheet" type="text/css" href="css/responsive.css">

    <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,700,300,600,800,400' rel='stylesheet' type='text/css'>

    <script type="text/javascript" src="js/modernizr.custom.js"></script>


    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- JQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-66571012-1', 'auto');
  ga('send', 'pageview');

</script>

</head>
<body>
    <!-- Navigation
    ==========================================-->
    <nav id="tf-menu" class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="http://techgeek.org.in">TechGeek Solution</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Default.aspx" class="page-scroll">Home</a></li>
                    <li><a href="frmWebDesign.aspx" class="page-scroll">Web Design</a></li>
                    <li><a href="frmMobileApplication.aspx" class="page-scroll">Mobile Application</a></li>
                    <li><a href="#tf-about,frmDatabaseManagement.aspx" class="page-scroll">Database Management System</a></li>
                    <li><a href="frmInventoryManagement.aspx" class="page-scroll">Inventory Management System</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Home Page
    ==========================================-->


    <!-- About Us Page
    ==========================================-->
    <div id="tf-about">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <img src="img/database_management_c.jpg" class="img-responsive">
                </div>
                <div class="col-md-6">
                    <div class="about-text">
                        <div class="about-text">
                            <div class="section-title">
                                <h4>Database Management System</h4>
                                <hr>
                                <div class="clearfix"></div>
                            </div>
                            <p class="intro">With the growing age of Digital Platform.We have developed an database management system that helps company to manage their things easy & reliable. Currently, we have launched an School Database Management System    </p>

                        </div>
                    </div>
                </div>
            </div>



            <nav id="footer" class="navbar navbar-fixed-bottom">
                <div class="container">
                    <div class="pull-left fnav">
                        <p>ALL RIGHTS RESERVED. COPYRIGHT © 2015. Designed by <a href="http://techgeek.org.in">TechGeek</a></p>
                    </div>
                    <div class="pull-right fnav">
                        <ul class="footer-social">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        </ul>
                    </div>
                </div>
            </nav>


            <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
            <script type="text/javascript" src="js/jquery.1.11.1.js"></script>
            <!-- Include all compiled plugins (below), or include individual files as needed -->
            <script type="text/javascript" src="js/bootstrap.js"></script>
            <script type="text/javascript" src="js/SmoothScroll.js"></script>
            <script type="text/javascript" src="js/jquery.isotope.js"></script>

            <script src="js/owl.carousel.js"></script>

            <!-- Javascripts
    ================================================== -->
            <script type="text/javascript" src="js/main.js"></script>
</body>
</html>
