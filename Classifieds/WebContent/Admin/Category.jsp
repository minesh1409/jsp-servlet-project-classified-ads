<%@ include file="AdminHeader.jsp" %>

<div class="main-container">
<div class="container" >
<div class="row" >

<!--  <div class="col-md-12 page-content"> -->
 <div class="col-sm-9 page-content">

<div class="inner-box">
<div class="row">
<div class="col-md-5 col-xs-4 col-xxs-12">
<h3 class="no-padding text-center-480 useradmin"><a href=""><img class="userImg" src="images/user.jpg" alt="user"> Jhon Doe
</a></h3>
</div>
<div class="col-md-7 col-xs-8 col-xxs-12">
<div class="header-data text-center-xs">
 
<div class="hdata">
<div class="mcol-left">
 
<i class="fa fa-eye ln-shadow"></i></div>
<div class="mcol-right">
 
<p><a href="#">7000</a> <em>visits</em></p>
</div>
<div class="clearfix"></div>
</div>
 
<div class="hdata">
<div class="mcol-left">
 
<i class="icon-th-thumb ln-shadow"></i></div>
<div class="mcol-right">
 
<p><a href="#">12</a><em>Ads</em></p>
</div>
<div class="clearfix"></div>
</div>
 
<div class="hdata">
<div class="mcol-left">
 
<i class="fa fa-user ln-shadow"></i></div>
<div class="mcol-right">
 
<p><a href="#">18</a> <em>Favorites </em></p>
</div>
<div class="clearfix"></div>
</div>
</div>
</div>
</div>
</div>
<div class="inner-box">
<div class="welcome-msg">
<h3 class="page-sub-header2 clearfix no-padding">Hello Jhon Doe </h3>
<span class="page-sub-header-sub small">You last logged in at: 01-01-2014 12:40 AM [UK time (GMT + 6:00hrs)]</span>
</div>

<div id="accordion" class="panel-group">
<div class="panel panel-default">
<div class="panel-heading">
<h4 class="panel-title"><a href="#collapseB1" data-toggle="collapse"> Insert data </a></h4>
</div>
<div class="panel-collapse collapse in" id="collapseB1">
<div class="panel-body">

<form class="form-horizontal" role="form" action="../AdminCategoryController" method="post">
<div class="form-group">
<label class="col-sm-3 control-label">Category</label>
<div class="col-sm-9">
<input type="text" name="Category" class="form-control" placeholder="category">
</div>
</div>
<div class="form-group">
<div class="col-sm-offset-3 col-sm-9">
<button type="submit" name="actionButton" value="category" class="btn btn-default">Add</button>
</div>
</div>
</form>

<form class="form-horizontal" role="form" action="../AdminCategory" method="post">
<div class="form-group">
<label class="col-sm-3 control-label">Sub-Category</label>
<div class="col-sm-9">
<input type="text" name="Subcategory" class="form-control" placeholder="sub-category">
</div>
</div>
<div class="form-group">
<div class="col-sm-offset-3 col-sm-9">
<button type="submit" name="actionButton" value="subcategory" class="btn btn-default">Add</button>
</div>
</div>
</form>

<form class="form-horizontal" role="form" action="../AdminCategory" method="post">
<div class="form-group">
<label class="col-sm-3 control-label">Location</label>
<div class="col-sm-9">
<input type="text" name="Location" class="form-control" placeholder="location">
</div>
</div>
<div class="form-group">
<div class="col-sm-offset-3 col-sm-9">
<button type="submit" name="actionButton" value="location" class="btn btn-default">Add</button>
</div>
</div>
</form>

</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<h4 class="panel-title"><a href="#collapseB2" data-toggle="collapse"> Settings </a>
</h4>
</div>
<div class="panel-collapse collapse" id="collapseB2">
<div class="panel-body">
<form class="form-horizontal" role="form">
<div class="form-group">
<div class="col-sm-12">
<div class="checkbox">
<label>
<input type="checkbox">
Comments are enabled on my ads </label>
</div>
</div>
</div>
<div class="form-group">
<label class="col-sm-3 control-label">New Password</label>
<div class="col-sm-9">
<input type="password" class="form-control" placeholder="">
</div>
</div>
<div class="form-group">
<label class="col-sm-3 control-label">Confirm Password</label>
<div class="col-sm-9">
<input type="password" class="form-control" placeholder="">
</div>
</div>
<div class="form-group">
<div class="col-sm-offset-3 col-sm-9">
<button type="submit" class="btn btn-default">Update</button>
</div>
</div>
</form>
</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<h4 class="panel-title"><a href="#collapseB3" data-toggle="collapse">
Preferences </a></h4>
</div>
<div class="panel-collapse collapse" id="collapseB3">
<div class="panel-body">
<div class="form-group">
<div class="col-sm-12">
<div class="checkbox">
<label>
<input type="checkbox">
I want to receive newsletter. </label>
</div>
<div class="checkbox">
<label>
<input type="checkbox">
I want to receive advice on buying and selling. </label>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
 
</div>

</div>


</div>
 
</div>
 
</div>

<%@ include file="../Footer.jsp" %>