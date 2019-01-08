<%@include file="MenuManage.jsp" %>
<% selectMenu=4; %>
<%@ include file="AdminHeader.jsp" %>

<div class="main-container">
<div class="container" >
<div class="row" >
<!--  <div class="col-md-12 page-content"> -->
 <div class="col-sm-9 page-content">




<div class="inner-box">
<div class="welcome-msg">
<h3 class="page-sub-header2 clearfix no-padding">Hello Admin</h3>
<!-- <span class="page-sub-header-sub small">You last logged in at: 01-01-2014 12:40 AM [UK time (GMT + 6:00hrs)]</span> -->
</div>

<div id="accordion" class="panel-group">
<div class="panel panel-default">
<div class="panel-heading">
<h4 class="panel-title"><a href="#collapseB1" data-toggle="collapse"> Insert Category </a></h4>
</div>
<div class="panel-collapse collapse in" id="collapseB1">
<div class="panel-body">

<form class="form-horizontal" role="form" action="../AddcategoryController" method="post" enctype="multipart/form-data">
<div class="form-group">
<label class="col-sm-3 control-label">Category</label>
<div class="col-sm-9">
<input type="text" name="CategoryName" class="form-control" placeholder="category Name">
</div>
</div>
<div class="form-group">
<label class="col-sm-3 control-label">Image</label>
<div class="col-sm-9">
<input type="file" name="CategoryImage" class="form-control" placeholder="category Image">
</div>
</div>

<div class="form-group">
<label class="col-sm-3 control-label">Icon</label> 
<div class="col-sm-9">
<input type="file" name="CategoryIcon" class="form-control" placeholder="category Icon" >
</div>
</div>


<div class="form-group">
<div class="col-sm-offset-3 col-sm-9">
<button type="submit" name="actionButton" value="category" class="btn btn-default">Add</button>
</div>
</div>
</form>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

<%@ include file="Footer.jsp" %>


