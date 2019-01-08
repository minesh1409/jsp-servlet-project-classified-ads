<%@include file="MenuManage.jsp" %>
<% selectMenu=6; %>
<%@ include file="AdminHeader.jsp" %>
<%@page import="pojo.LocationPojo"%>
<%@page import="dbconnection.Dbcon"%>
<%@page import="java.sql.ResultSet"%>
<% 
Dbcon dbcon = Dbcon.getinstance();
String list="select * from location";
// ResultSet resultSet=dbcon.executequery(list);
%>

<% LocationPojo locationPojo=null;
    if(session.getAttribute("locationObject")!= null)
    {
   		locationPojo =(LocationPojo)session.getAttribute("locationObject");
    }
 %>


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
<h4 class="panel-title"><a href="#collapseB1" data-toggle="collapse"> Insert Location </a></h4>
</div>
<div class="panel-collapse collapse in" id="collapseB1">
<div class="panel-body">

<form class="form-horizontal" role="form" action="../LocationController" method="post" >

<div class=" form-group">
<label class="col-sm-3 control-label">Location Name</label>
<div class="col-sm-9">
<input type="text" name="LocationName" class="form-control" placeholder="Location" value="<%=locationPojo!=null? locationPojo.getLocationname():"\"\""%>"  required="required">
</div>
</div>

<div class="form-group required">
<label class="col-sm-3 control-label">Zipcode</label>
<div class="col-sm-9">
<input type="number" name="Zipcode" class="form-control" placeholder="Zip Code" maxlength="6" value="<%=locationPojo!=null? locationPojo.getZipcode():"\"\"" %>"  required="required">
</div>
</div>


<div class="form-group">
<div class="col-sm-offset-3 col-sm-9">
<%if(locationPojo!=null){ %>    
<input type="hidden" value="<%= locationPojo.getId() %>" name="id"/>
<button type="submit" value="update" name="actionButton" class="button button-block">Update</button>
<%}else{%>
<button type="submit" name="actionButton" value="location" class="btn btn-default">Add</button>
 <%}%>
</div>
</div>
 	

</form>


<!-- <form action="../LocationController" method="post"> -->
<%-- <input type="hidden" name="id" value="<%=resultSet.getInt(1)%>"/> --%>
<!-- <button type="submit" name="actionButton" value="edit" class="btn btn-default">Edit</button> -->

<!-- </form> -->

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


