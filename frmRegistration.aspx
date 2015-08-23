<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmRegistration.aspx.cs" Inherits="frmRegistration" %>

<!DOCTYPE html>
<html>
<head>
    <title>Registration @ TechGeek Software Solution</title>
    <meta charset="utf-8">

    <link rel="stylesheet" type="text/css" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="TechGeek Offering comprehensive IT solution to the global market place.Techgeek through its wide array of online services,print media services and facilitate with the mobile application software.our company is an ideal form of businesses and companies across the globe that help the buyer's and selleers to conduct their business smoothly and effectively.">
    <meta name="keywords" content="Website,Mobile Friendly website,customized website,Mobile Application,Play Store Application,Search Engine Optimizaiton(SEO), Social Media Optimization(SMO),Invoice Software,Billing Software,Domain Booking,Email Domain Booking,School DataBase Management System,ERP,Dynamic websites,Static websites,Google Mapping,Websites under 10000 Rs,Inventory System for Hotels,Websites Developer in Vadodara,Websites Developer in Dahod,TechGeek Software Solution,Mohammad Rajpurwala,Husain Jhabuawala,Husen Jambugohdawala,Burhan Vakharia">
    <meta name="author" content="TechGeek.org.in">

    <!-- Favicons
        ================================================== -->
    <link href="img/titleICO.png" rel="shortcut icon" type="image/x-icon" />

    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.css">

    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--webfonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,300,600,700' rel='stylesheet' type='text/css'>
    <link href="css/registration.css" rel='stylesheet' type='text/css' />
    <!--//webfonts-->
    <link href="css/sweetalert.css" rel="stylesheet" />
    <link href="css/frmRegistration.css" rel="stylesheet" />
    <!-- JQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script type="text/javascript" src="js/jqury.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.11.2.js"></script>
    <script type="text/javascript" src="js/jquery.flagstrap.js"></script>
    <script type="text/javascript" src="js/frmRegistration.js"></script>
    <link href="css/flags.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/common.css">
</head>
<body>

    <!-- Navigation
    ==========================================-->
    <nav id="tf-menu" class="navbar navbar-default">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <a class="navbar-brand" href="http://techgeek.org.in">TechGeek Solution</a>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-2">
                <p class="stat-count">500</p>
                <p class="stat-detail">Register User</p>
            </div>
            <div class="col-md-2">
                <p class="stat-count">200</p>
                <p class="stat-detail">EID Special Offer</p>
            </div>
            <div class="col-md-4"></div>
        </div>
    </div>
    <!-----start-form---->
    <div class="login-form">



        <div class="head">

            <a href="http://techgeek.org.in">
                <img src="img/Login/mem2.png" alt="" /></a>
        </div>
        <form>
            <div class="registraitonDiv">

                <p class="fa fa-asterisk">Username</p>
                <li>
                    <input type="text" id="txtUsername" class="text" value="User Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'User Name';}">
                    <span class="fa fa-user icon"></span>
                    <span id="txtValidationName" class="validationColor"><span class="fa fa-thumbs-o-down"></span></span>
                </li>

            </div>
            <div class="registraitonDiv">
                <p class="fa fa-asterisk">Email</p>
                <li>
                    <input type="text" id="txtemail" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}">
                    <span class="fa fa-envelope icon "></span>
                    <span id="txtValidationmail" class="validationColor"><span class="fa fa-thumbs-o-down"></span></span>
                </li>

            </div>
            <div class="registraitonDiv">
                <p>Gender</p>
                <li>
                    <select id="txtGender">
                        <option value="male">Male</option>
                        <option value="Female">Female</option>
                    </select><span class="fa fa-male icon"></span>
                </li>
            </div>
            <div class="registraitonDiv">
                <p>Profession</p>
                <li>
                    <select id="txtProfession">
                        <option value="own Business">Own Business</option>
                        <option value="student">Student</option>
                        <option value="other">Other</option>
                    </select><span class="fa fa-tasks icon"></span>
                </li>
            </div>
            <div class="registraitonDiv">
                <p class="fa fa-asterisk">Contact Number</p>
                <li>
                    <input id="txtNumber" type="text" value="phone number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Phone number';}">
                    <span class="fa fa-mobile-phone icon"></span>
                    <span id="txtValidationNumber" class="validationColor"><span class="fa fa-thumbs-o-down"></span></span>
                </li>
            </div>
            <div class="registraitonDiv">
                <p class="fa fa-asterisk">City</p>
                <li>
                    <input type="text" id="txtCity" value="City" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'City';}">
                    <span class="fa fa-street-view icon"></span>
                    <span id="txtValidationCity" class="validationColor"><span class="fa fa-thumbs-o-down"></span></span>
                </li>
            </div>
            <div class="registraitonDiv">
                <p class="fa fa-asterisk">Country</p>
                <li>
                    <input type="text" id="txtCountry" value="Country" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Country';}">
                    <span class="fa fa-cloud icon"></span>
                    <span id="txtValidationCountry" class="validationColor"><span class="fa fa-thumbs-o-down"></span></span>
                </li>
            </div>
            <div class="p-container">
                <%--<label class="checkbox"><input type="checkbox" name="checkbox" checked><i></i>Remember Me</label>--%>
                <button type="button" class="btn tf-btn btn-default button" onclick="javascript: btnRegistration();">REGISTRATION</button>
                <div class="clear"></div>
                <div class="registraitonDiv">
                    <span class="fa fa-asterisk">Complusory</span><br />
                    <span class="fa fa-thumbs-o-down">Error Message</span>
                </div>

            </div>
        </form>


    </div>
    <nav id="footer">
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
    <!--//End-login-form-->


    <!-- Footer -->
    <!-- End -->
</body>
</html>

