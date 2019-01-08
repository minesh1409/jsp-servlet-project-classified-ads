<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from templatecycle.com/demo/bootclassified-v1.5/dist/account-home.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 28 Oct 2016 14:37:11 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

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
<script src="../assets/js/pace.min"></script>
</head>
<body>
<%
	session = request.getSession();
String name=null;
	if(session.getAttribute("uname")!=null)
	{
		name =(String) session.getAttribute("uname");
	}
	else
	{
		response.sendRedirect("../Login.jsp");
	}
%>
<div id="wrapper">
<div class="header">
<nav class="navbar navbar-site navbar-default" role="navigation">
<div class="container">
<div class="navbar-header">
<button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></button>
<a href="index.html" class="navbar-brand logo logo-title">
 
<span class="logo-icon"><i class="icon icon-search-1 ln-shadow-logo shape-0"></i> </span>
CLASSIFIED<span>ADS </span> </a></div>
<div class="navbar-collapse collapse">
<ul class="nav navbar-nav navbar-right">

<li><a href="../Index.jsp">Signout <i class="glyphicon glyphicon-off"></i> </a></li>

<li class="dropdown"><a href="AdminHome.jsp"  class="dropdown-toggle" data-toggle="dropdown">
<span><%=name%></span> <i class="icon-user fa"></i> <i class=" icon-down-open-big fa"></i></a>

<!-- <li class="active"><a href="AdminHome.jsp"><i class="icon-home"></i> Personal Home</a></li> -->

<!-- <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span>Manage</span><i class=" icon-down-open-big fa"></i></a> -->
<ul class="dropdown-menu user-menu">

<li class="<%=selectMenu==1?"active":""%>"><a href="AdminHome.jsp"><i class="icon-home"></i> Personal Home</a></li>
<li class="<%=selectMenu==2?"active":""%>"><a href="ManageUser.jsp"><i class="icon-user fa"></i> Manage Users</a></li>
<li class="<%=selectMenu==3?"active":""%>"><a href="ManageAds.jsp"><i class="icon-docs"></i> Manage Ads</a></li>
<li class="<%=selectMenu==4?"active":""%>"><a href="Addcategory.jsp"><i class="icon-hourglass"></i>Add Category </a></li>
<li class="<%=selectMenu==5?"active":""%>"><a href="Addsubcategory.jsp"><i class="icon-hourglass"></i>Add Subcategory </a></li>
<li class="<%=selectMenu==6?"active":""%>"><a href="Addlocation.jsp"><i class="icon-location-2"></i>Add Loaction </a></li>
</ul>
</li>
</ul>

</div>
</div>
</nav>
</div>


<div class="main-container">
