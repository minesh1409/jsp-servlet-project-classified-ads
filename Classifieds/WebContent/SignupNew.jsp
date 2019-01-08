<%@page import="pojo.RegisterPojo"%>
<%@include file="MenuManage.jsp" %>
<%selectMenu=7; %>
<%@include file="Header.jsp" %>
<!-- edit -->
<% RegisterPojo registerPojo=null;
    if(session.getAttribute("registerObject")!= null){
    
   registerPojo =(RegisterPojo)session.getAttribute("registerObject");
    
}%>
<!-- done -->
<%@page import="java.sql.ResultSet"%>
<%@page import="dbconnection.Dbcon"%>
<% 
Dbcon dbcon = Dbcon.getinstance();
ResultSet resultSet;
%>


<div class="main-container">
<div class="container">
<div class="row">
<div class="col-md-8 page-content">
<div class="inner-box category-content">
<h2 class="title-2"><i class="icon-user-add"></i> Create your account, Its free </h2>
<div class="row">
<div class="col-sm-12">
<form class="form-horizontal" action="RegisterController" method="post">
<fieldset>
<div class="form-group required">
<label class="col-md-4 control-label">You are a <sup>*</sup></label>
<div class="col-md-6">
<%
dbcon.openconnection();
String list="select * from user_type where id in (2,3)";
resultSet=dbcon.executequery(list);
while(resultSet.next()){
%>
<div class="radio">
<label>							<!-- edit -->
<input type="radio" name="Usertype" id="optionsRadios<%=resultSet.getInt(1)%>" value="<%=registerPojo !=null? resultSet.getInt(1):"\"\""%>" checked>
<%=resultSet.getString(2) %></label>
</div>
 <% }dbcon.connectionclose(); %>

</div>
</div>
 
<div class="form-group required">
<label class="col-md-4 control-label">First Name <sup>*</sup></label>
<div class="col-md-6">
<input name="FirstName" placeholder="First Name" class="form-control input-md"  type="text" required pattern="[A-Za-z]+"  value="<%=registerPojo!=null? registerPojo.getFirstname():"\"\""%>">  <!--  name changed  -->
</div>
</div>
 
<div class="form-group required">
<label class="col-md-4 control-label">Last Name <sup>*</sup></label>
<div class="col-md-6">
<input name="LastName" placeholder="Last Name" class="form-control input-md" type="text" required pattern="[A-Za-z]+" value="<%=registerPojo!=null? registerPojo.getLastname():"\"\""%>">  <!--  name changed  -->
</div>
</div>
 
<div class="form-group required">
<label class="col-md-4 control-label">Phone Number <sup>*</sup></label>
<div class="col-md-6">
<input name="Contact" placeholder="Phone Number" class="form-control input-md" type="number" value="<%=registerPojo!=null? registerPojo.getContact():"\"\""%>" required>  <!--  name changed number type pattern="\d+" or pattern="[0-9]+"or type="number" -->
<div class="checkbox">
<!-- <label> -->
<!-- <input type="checkbox" value=""> -->
<!-- <small> Hide the phone number on the published ads.</small> -->
<!-- </label> -->
</div>
</div>
</div>
 
 <div class="form-group"> 
<label class="col-md-4 control-label" for="textarea">Address<sup>*</sup></label> 
 <div class="col-md-6"> 
<textarea class="form-control" id="textarea" name="Address" placeholder="Address" value="<%=registerPojo!=null? registerPojo.getAddress():"\"\""%>" required></textarea>  <!--  name changed  --> 
</div>
</div>




<div class="form-group required">
<label class="col-md-4 control-label"> Location <sup>*</sup></label>
<div class="col-md-6"> 
<div class="selecter closed" tabindex="0">
<!-- <select class="form-control selecter selecter-element" name="location" id="id-location" tabindex="-1"> -->
<!-- <div class="col-sm-3"> -->
<select class="form-control required" name="Location" id="id-location">
<option value="" class="selecter-placeholder" selected="">Select An Item</option>
<option value="0" selected="selected"> Select a category...</option>
<%
dbcon.openconnection();
String list1="select * from location";
resultSet=dbcon.executequery(list1);
while(resultSet.next()){
%>
<option value="<%=registerPojo!=null? resultSet.getInt(1):"\"\""%>"><%=resultSet.getString(2)%></option>
<% } dbcon.connectionclose(); %>
</select>
</div>
</div>
</div>


<div class="form-group required">
<label for="inputEmail3" class="col-md-4 control-label">Email <sup>*</sup></label>
<div class="col-md-6">
<input name="Email" type="email" class="form-control" id="inputEmail3" placeholder="Email" value="<%=registerPojo!=null? registerPojo.getEmail():"\"\""%>"  required >  <!--  name field edit changed  -->
</div>
</div>

<div class="form-group required">
<label for="inputPassword3" class="col-md-4 control-label">Password <sup>*</sup></label>
<div class="col-md-6">
<input name="Password" type="password" class="form-control" id="inputPassword3" placeholder="Password" value="<%=registerPojo!=null? registerPojo.getPassword():"\"\""%>" required>  <!--  name changed  -->
<p class="help-block">At least 5 characters
 </p>
</div>
</div>

<div class="form-group required">
<label class="col-md-4 control-label"></label>
<div class="col-md-8">
<div class="termbox mb10">
<label class="checkbox-inline" for="checkboxes-1">
<input name="checkboxes" id="checkboxes-1" value="1" type="checkbox" checked>I have read and agree to the <a href="Terms&Condition.jsp">Terms & Conditions</a>
</label>
</div>


<div style="clear:both">
<!-- <input type="submit" value="Register" name="actionButton" class="btn btn-primary" > INserted by me -->
<!-- <a class="btn btn-primary" href="account-home.html">Register</a></div> -->
 <%if(registerPojo!=null){ %>    
          <input type="hidden" value="<%= registerPojo.getId() %>" name="id"/>
<%--           <input type="hidden" value="<%= registerPojo.getUserId() %>" name="u_id"/> --%>
          <input type="submit" value="Update" name="actionButton" class="btn btn-primary" >
          <%}else{%>
          <input type="submit" value="Register" name="actionButton" class="btn btn-primary" >
          <%}%>
</div>
</div>
</div>


</fieldset>
</form>
</div>
</div>
</div>
</div>
 
<div class="col-md-4 reg-sidebar">
<div class="reg-sidebar-inner text-center">
<div class="promo-text-box"><i class=" icon-picture fa fa-4x icon-color-1"></i>
<h3><strong>Post a Free Classified</strong></h3>
<p> Post your free online classified ads with us. Lorem ipsum dolor sit amet, consectetur
adipiscing elit. </p>
</div>
<div class="promo-text-box"><i class=" icon-pencil-circled fa fa-4x icon-color-2"></i>
<h3><strong>Create and Manage Items</strong></h3>
<p> Nam sit amet dui vel orci venenatis ullamcorper eget in lacus.
Praesent tristique elit pharetra magna efficitur laoreet.</p>
</div>
<div class="promo-text-box"><i class="  icon-heart-2 fa fa-4x icon-color-3"></i>
<h3><strong>Create your Favorite ads list.</strong></h3>
<p> PostNullam quis orci ut ipsum mollis malesuada varius eget metus.
Nulla aliquet dui sed quam iaculis, ut finibus massa tincidunt.</p>
</div>
</div>
</div>

</div>
</div>
</div>
 
<%@include file="Footer.jsp" %>