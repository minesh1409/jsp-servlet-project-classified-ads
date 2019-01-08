
<!-- save as utf formatr -->
<%@page import="pojo.PostPojo"%>
<%@include file="MenuManage.jsp" %>
<% selectMenu=2; %>
<%@include file="Header1.jsp" %>
<%@page import="dbconnection.*" %>
<%@page import="java.sql.ResultSet"%>
<%-- <%@include file="header.jsp" %> --%>
<%
PostPojo postPojo = new PostPojo();
if(session.getAttribute("adsDetail")!=null)
{
	postPojo = (PostPojo) session.getAttribute("adsDetail");
}
%>

<div class="container">
<ol class="breadcrumb pull-left">
<li><a href="#"><i class="icon-home fa"></i></a></li>
<li><a href="Category.jsp">All Ads</a></li>
<li><a href="sub-category-sub-location.html"><%=postPojo.getCategory()%></a></li>
<li class="active"><%=postPojo.getSubCategoryName()%></li>
</ol>
<div class="pull-right backtolist"><a href="Category.jsp"> <i class="fa fa-angle-double-left"></i> Back to Results</a></div>
</div>


<div class="container">
<div class="row">
<div class="col-sm-9 page-content col-thin-right">
<div class="inner inner-box ads-details-wrapper">
<h2> <%=postPojo.getSubCategoryName()%>
</h2>
<span class="info-row"> 
<span class="date"><i class=" icon-clock"> 
</i> date </span> - <span class="category"><%=postPojo.getCategory()%> </span>- <span class="item-location">
<i class="fa fa-map-marker"></i> <%=postPojo.getLocation()%> </span> </span>
<div class="ads-image">
<h1 class="pricetag"> Rs.<%=postPojo.getPrice()%></h1>
<div class="bx-wrapper" style="max-width: 100%;"><div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 379px;">
<ul class="bxslider" style="width: 515%; position: relative; transition-duration: 0s; transform: translate3d(-2019px, 0px, 0px);">

<li style="float: left; list-style: none; position: relative; width: 673px;" class="bx-clone"><img src="../img<%=postPojo.getPicture1()%>" alt="img"></li>
<li style="float: left; list-style: none; position: relative; width: 673px;"><img src="../img<%=postPojo.getPicture2()%>" alt="img"></li>
<li style="float: left; list-style: none; position: relative; width: 673px;"><img src="../img<%=postPojo.getPicture3()%>" alt="img"></li>
<!-- <li style="float: left; list-style: none; position: relative; width: 673px;"><img src="../images/item/tp-big/Image00015.jpg" alt="img"></li> -->
<!-- <li style="float: left; list-style: none; position: relative; width: 673px;" class="bx-clone"><img src="../images/item/tp-big/Image00014.jpg" alt="img"></li> -->
</ul>
</div>
<div class="bx-controls bx-has-controls-direction">
<div class="bx-controls-direction">
<a class="bx-prev" href="">Prev</a>
<a class="bx-next" href="">Next</a>
</div>
</div>
</div>
<div id="bx-pager">
<a class="thumb-item-link" data-slide-index="0" href=""><img src="../img/<%=postPojo.getPicture1() %>" alt="img"></a>
<a class="thumb-item-link" data-slide-index="1" href=""><img src="../img<%=postPojo.getPicture2()%>" alt="img"></a>
<a class="thumb-item-link active" data-slide-index="2" href=""><img src="../img<%=postPojo.getPicture3()%>" alt="img"></a>
</div>
</div>
 
<div class="Ads-Details">
<h5 class="list-title"><strong>Ads Detsils</strong></h5>
<div class="row">
<div class="ads-details-info col-md-8">
<p><%=postPojo.getDescribead()%></p>
</div>
<div class="col-md-4">
<aside class="panel panel-body panel-details">
<ul>
<li>
<p class=" no-margin "><strong>Price:</strong> <%=postPojo.getPrice()%></p>
</li>
<li>
<p class="no-margin"><strong>Type:</strong> <%=postPojo.getCategory()%></p>
</li>
<li>
<p class="no-margin"><strong>Location:</strong> <%=postPojo.getLocation()%> </p>
</li>
<li>
<p class=" no-margin "><strong>Owner:</strong><%=postPojo.getOwnertype()%></p>
</li>
</ul>
</aside>
<div class="ads-action">
<ul class="list-border">
<li><a href="Category.jsp"> <i class=" fa fa-user"></i> More ads by User </a></li>
<li><a href="#"> <i class=" fa fa-heart"></i> Save ad </a></li>
<li><a href="#"> <i class="fa fa-share-alt"></i> Share ad </a></li>
</ul>
</div>
</div>
</div>
<div class="content-footer text-left"><a class="btn  btn-default" data-toggle="modal" href="#contactAdvertiser"><i class=" icon-mail-2"></i> Send a message </a> <a class="btn  btn-info"><i class=" icon-phone-1"></i> 01680 531 352 </a></div>
</div>
</div>
 
</div>
 
<div class="col-sm-3  page-sidebar-right">
<aside>
<div class="panel sidebar-panel panel-contact-seller">
<div class="panel-heading">Contact Seller</div>
<div class="panel-content user-info">
<div class="panel-body text-center">
<div class="seller-info">
<h3 class="no-margin"><%=postPojo.getFirstName()%> <%=postPojo.getLastName()%></h3>
<p>Location: <strong><%=postPojo.getLocation()%></strong></p>
<p> Joined: <strong> date</strong></p>
</div>

<div class="user-ads-action">
<a href="#contactAdvertiser" data-toggle="modal" class="btn   btn-default btn-block"><i class=" icon-mail-2"></i> Send a Email	 </a>
<a class="btn  btn-info btn-block"><i class=" icon-phone-1"></i> 01680 531 352
</a></div>
</div>
</div>
</div>
<div class="panel sidebar-panel">
<div class="panel-heading">Safety Tips for Buyers</div>
<div class="panel-content">
<div class="panel-body text-left">
<ul class="list-check">
<li> Meet seller at a public place</li>
<li> Check the item before you buy</li>
<li> Pay only after collecting the item</li>
</ul>
<p><a class="pull-right" href="#"> Know more <i class="fa fa-angle-double-right"></i> </a></p>
</div>
</div>
</div>
 
</aside>
</div>
 
</div>
</div>


<%@include file="Footer.jsp" %>

