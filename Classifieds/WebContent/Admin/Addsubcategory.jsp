<%@include file="MenuManage.jsp" %>
<% selectMenu=5; %>
<%@ include file="AdminHeader.jsp" %>
<%@page import="dbconnection.Dbcon"%>
<%@page import="java.sql.ResultSet"%>
<% 
Dbcon dbcon = Dbcon.getinstance();
ResultSet resultSet;
%>

<div class="main-container">
<div class="container" >
<div class="row" >
<!--  <div class="col-md-12 page-content"> -->
 <div class="col-sm-9 page-content">




<div class="inner-box">
<div class="welcome-msg">
<h3 class="page-sub-header2 clearfix no-padding">Hello Admin </h3>
<!-- <span class="page-sub-header-sub small">You last logged in at: 01-01-2014 12:40 AM [UK time (GMT + 6:00hrs)]</span> -->
</div>

<div id="accordion" class="panel-group">
<div class="panel panel-default">
<div class="panel-heading">
<h4 class="panel-title"><a href="#collapseB1" data-toggle="collapse"> Insert Subcategory </a></h4>
</div>
<div class="panel-collapse collapse in" id="collapseB1">
<div class="panel-body">

<form class="form-horizontal" role="form" action="../AddsubcategoryController" method="post" enctype="multipart/form-data">

<div class="form-group">
<label class="col-sm-3 control-label">Category</label>
<div class="col-sm-9">
<select name="Category" id="category-group" class="form-control" onchange="showSubCategory(this)">
<option value="0" selected="selected"> Select a category...</option>
<%
dbcon.openconnection();
String list1="select * from Category";
resultSet=dbcon.executequery(list1);
while(resultSet.next()){
%>
<option value="<%=resultSet.getInt(1)%>"><%=resultSet.getString(2)%> </option>
<% } dbcon.connectionclose(); %>
</select>
</div>
</div>

<div class="form-group">
<label class="col-sm-3 control-label">SubCategory</label>
<div class="col-sm-9">
<input type="text" name="SubCategoryName" class="form-control" placeholder="subcategory Name">
</div>
</div>
<div class="form-group">
<label class="col-sm-3 control-label">Image</label>
<div class="col-sm-9">
<input type="file" name="SubCategoryImage" class="form-control" placeholder="subcategory Image">
</div>
</div>

<div class="form-group">
<label class="col-sm-3 control-label">Icon</label> 
<div class="col-sm-9">
<input type="file" name="SubCategoryIcon" class="form-control" placeholder="subcategory Icon" >
</div>
</div>


<div class="form-group">
<div class="col-sm-offset-3 col-sm-9">
<button type="submit" name="actionButton" value="subcategory" class="btn btn-default">Add</button>
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


