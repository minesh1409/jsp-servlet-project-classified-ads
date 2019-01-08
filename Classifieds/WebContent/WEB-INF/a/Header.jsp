<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from templatecycle.com/demo/bootclassified-v1.5/dist/sub-category-sub-location.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 28 Oct 2016 14:38:39 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
 
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="assets/ico/favicon.png">
<title>BOOTCLASIFIED - Responsive Classified Theme</title>
 
<link href="assets/bootstrap/css/bootstrap.css" rel="stylesheet">
 
<link href="assets/css/style.css" rel="stylesheet">
 
<link href="assets/css/owl.carousel.css" rel="stylesheet">
<link href="assets/css/owl.theme.css" rel="stylesheet">
 
 
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
 
<script>
        paceOptions = {
            elements: true
        };
    </script>
<script src="assets/js/pace.min.js"></script>
</head>
<body>
<div id="wrapper">
<div class="header">
<nav class="navbar   navbar-site navbar-default" role="navigation">
<div class="container">
<div class="navbar-header">
<button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></button>
<a href="index.html" class="navbar-brand logo logo-title">
 
<span class="logo-icon"><i class="icon icon-search-1 ln-shadow-logo shape-0"></i> </span>
BOOT<span>CLASSIFIED </span> </a></div>
<div class="navbar-collapse collapse">
<ul class="nav navbar-nav navbar-right">
<li><a href="login.html">Login</a></li>
<li><a href="signup.html">Signup</a></li>
<li class="postadd"><a class="btn btn-block   btn-border btn-post btn-danger" href="post-ads.html">Post Free Add</a></li>
</ul>
</div>
 
</div>
 
</nav>
</div>
 
<div class="search-row-wrapper">
<div class="container ">
<form action="#" method="GET">
<div class="col-sm-3">
<input class="form-control keyword" type="text" placeholder="e.g. Mobile Sale">
</div>
<div class="col-sm-3">
<select class="form-control selecter" name="category" id="search-category">
<option selected="selected" value="">All Categories</option>
<option value="Vehicles" style="background-color:#E9E9E9;font-weight:bold;" disabled="disabled">
- Vehicles -
</option>
<option value="Cars"> Cars</option>
<option value="Commercial vehicles"> Commercial vehicles</option>
<option value="Motorcycles"> Motorcycles</option>
<option value="Motorcycle Equipment"> Car &amp; Motorcycle Equipment</option>
<option value="Boats"> Boats</option>
<option value="Vehicles"> Other Vehicles</option>
<option value="House" style="background-color:#E9E9E9;font-weight:bold;" disabled="disabled"> -
House and Children -
</option>
<option value="Appliances"> Appliances</option>
<option value="Inside"> Inside</option>
<option value="Games"> Games and Clothing</option>
<option value="Garden"> Garden</option>
<option value="Multimedia" style="background-color:#E9E9E9;font-weight:bold;" disabled="disabled"> - Multimedia -
</option>
<option value="Telephony"> Telephony</option>
<option value="Image"> Image and sound</option>
<option value="Computers"> Computers and Accessories</option>
<option value="Video"> Video games and consoles</option>
<option value="Real" style="background-color:#E9E9E9;font-weight:bold;" disabled="disabled"> -
Real Estate -
</option>
<option value="Apartment"> Apartment</option>
<option value="Home"> Home</option>
<option value="Vacation"> Vacation Rentals</option>
<option value="Commercial"> Commercial offices and local</option>
<option value="Grounds"> Grounds</option>
<option value="Houseshares"> Houseshares</option>
<option value="Other real estate"> Other real estate</option>
<option value="Services" style="background-color:#E9E9E9;font-weight:bold;" disabled="disabled">
- Services -
</option>
<option value="Jobs"> Jobs</option>
<option value="Job application"> Job application</option>
<option value="Services"> Services</option>
<option value="Price"> Price</option>
<option value="Business"> Business and goodwill</option>
<option value="Professional"> Professional equipment</option>
<option value="dropoff" style="background-color:#E9E9E9;font-weight:bold;" disabled="disabled">
- Extra -
</option>
<option value="Other"> Other</option>
</select>
</div>
<div class="col-sm-3">
<select class="form-control selecter" name="location" id="id-location">
<option selected="selected" value="">All Locations</option>
<option value="AL">Alabama</option>
<option value="AK">Alaska</option>
<option value="AZ">Arizona</option>
<option value="AR">Arkansas</option>
<option value="CA">California</option>
<option value="CO">Colorado</option>
<option value="CT">Connecticut</option>
<option value="DE">Delaware</option>
<option value="DC">District Of Columbia</option>
<option value="FL">Florida</option>
<option value="GA">Georgia</option>
<option value="HI">Hawaii</option>
<option value="ID">Idaho</option>
<option value="IL">Illinois</option>
<option value="IN">Indiana</option>
<option value="IA">Iowa</option>
<option value="KS">Kansas</option>
<option value="KY">Kentucky</option>
<option value="LA">Louisiana</option>
<option value="ME">Maine</option>
<option value="MD">Maryland</option>
<option value="MA">Massachusetts</option>
<option value="MI">Michigan</option>
<option value="MN">Minnesota</option>
<option value="MS">Mississippi</option>
<option value="MO">Missouri</option>
<option value="MT">Montana</option>
<option value="NE">Nebraska</option>
<option value="NV">Nevada</option>
<option value="NH">New Hampshire</option>
<option value="NJ">New Jersey</option>
<option value="NM">New Mexico</option>
<option value="NY">New York</option>
<option value="NC">North Carolina</option>
<option value="ND">North Dakota</option>
<option value="OH">Ohio</option>
<option value="OK">Oklahoma</option>
<option value="OR">Oregon</option>
<option value="PA">Pennsylvania</option>
<option value="RI">Rhode Island</option>
<option value="SC">South Carolina</option>
<option value="SD">South Dakota</option>
<option value="TN">Tennessee</option>
<option value="TX">Texas</option>
<option value="UT">Utah</option>
<option value="VT">Vermont</option>
<option value="VA">Virginia</option>
<option value="WA">Washington</option>
<option value="WV">West Virginia</option>
<option value="WI">Wisconsin</option>
<option value="WY">Wyoming</option>
<option value="Other-Locations">Other Locations</option>
</select>
</div>
<div class="col-sm-3">
<button class="btn btn-block btn-primary  "><i class="fa fa-search"></i></button>
</div>
</form>
</div>
</div>
 
<div class="main-container">