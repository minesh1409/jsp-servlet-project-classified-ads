<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from templatecycle.com/demo/bootclassified-v1.5/dist/sub-category-sub-location.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 28 Oct 2016 14:38:39 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script> -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
 
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="../assets/ico/favicon.png">
<title>CLASIFIED ADS</title>
 
<link href="../assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
 
<link href="../assets/css/style.css" rel="stylesheet">
 
<link href="../assets/css/owl.carousel.css" rel="stylesheet">
<link href="../assets/css/owl.theme.css" rel="stylesheet">
 
 
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
 
<script>
        paceOptions = {
            elements: true
        };
    </script>
<script src="../assets/js/pace.min.js"></script>
</head>
<%
	session = request.getSession();
	int id=0;
	String name=null;
	if(session.getAttribute("uname")!=null)
	{
		name =(String) session.getAttribute("uname");
		id= (Integer)session.getAttribute("id");
		
	}
	if(name==null)
	{
		response.sendRedirect("../Login.jsp");
	}
%>
<body>
<div id="wrapper">
<div class="header">
<nav class="navbar   navbar-site navbar-default" role="navigation">
<div class="container">
<div class="navbar-header">
<button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></button>
<a href="Category.jsp" class="navbar-brand logo logo-title">
 
<span class="logo-icon"><i class="icon icon-search-1 ln-shadow-logo shape-0"></i> </span>
CLASSIFIED <span>ADS </span> </a></div>

<div class="navbar-collapse collapse">
<ul class="nav navbar-nav navbar-right">

<li><a href="../Index.jsp"><i class="glyphicon glyphicon-off"></i> <b>Signout</b></a></li>

<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
<span><%=name %></span> <i class="icon-user fa"></i> <i class=" icon-down-open-big fa"></i></a>
<ul class="dropdown-menu user-menu">

<li class="<%=selectMenu==1?"active":""%>"><a href="Category.jsp"><i class="icon-home"></i><b>Home</b></a></li>
<li class="<%=selectMenu==2?"active":""%>"><a href="Myads.jsp"><i class="icon-th-thumb"></i><b>My Ads</b></a></li>
<li class="<%=selectMenu==3?"active":""%>"><a href="Favourite.jsp"><i class="icon-heart"></i><b>Favourite Ads</b></a></li>
<li class="<%=selectMenu==4?"active":""%>"><a href="Postadsold.jsp"><i class="icon-docs"></i><b>Post Ads</b></a></li> <!-- changed frome postads to postadsold error case i update 5-15-2016 -->
<li class="<%=selectMenu==5?"active":""%>"><a href="Signup.jsp"><i class="icon-docs"></i><b>Edit Profile</b></a></li>
</ul>
</li>
</ul>

</div>
</div> 
</nav>
</div>
 


<div class="search-row-wrapper">
<div class="container ">
<form action="../SearchController" method="post">
<div class="row search-row animated fadeInUp">
<div class="col-lg-4 col-sm-4 search-col relative locationicon">
<i class="icon-location-2 icon-append"></i>
<input type="text" name="searchbycity" id="autocomplete-ajax" class="form-control locinput input-rel searchtag-input has-icon" placeholder="City/Zipcode..." >
</div>
<div class="col-lg-4 col-sm-4 search-col relative"><i class="icon-docs icon-append"></i>
<input type="text" name="searchads" class="form-control has-icon" placeholder="I'm looking for a ..." >
</div>
<div class="col-lg-4 col-sm-4 search-col">
<!-- <button class="btn btn-primary btn-search btn-block"><i class="icon-search"></i><strong>Find</strong></button> -->
<input type="submit" name="actionButton" value="Find" class="btn btn-primary btn-search btn-block"><i class="icon-search"></i><strong>Find</strong>
</div>
</div>
</form>
</div>
</div>
 
<div class="main-container">