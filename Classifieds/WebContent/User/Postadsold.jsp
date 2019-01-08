
<%@include file="MenuManage.jsp" %>
<% selectMenu=4; %>
<%@include file="Header1.jsp" %>
<%@page import="dbconnection.Dbcon"%>
<%@page import="java.sql.ResultSet"%>
<% 
Dbcon dbcon = Dbcon.getinstance();
ResultSet resultSet;
%>
<script language="javascript" type="text/javascript">  
      var xmlHttp
      function showSubCategory(str){
// 			alert(str.value);
    	  if (typeof XMLHttpRequest != "undefined"){
	      	xmlHttp= new XMLHttpRequest();
	      }
	      else if (window.ActiveXObject){
	      	xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
	      }
	      if (xmlHttp==null){
	      	alert("Browser does not support XMLHTTP Request")
	      	return;
	      }
	      
	      var url="../PostController";
	      url +="?actionButton=subCatgeory&id="+str.value;
	      xmlHttp.onreadystatechange = stateChange;
	      xmlHttp.open("POST", url, true);
	      xmlHttp.send(null);
	    
      }
      
      function stateChange(){   
          if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
//           		alert(xmlHttp.responseText);
        	  document.getElementById("subCategory").innerHTML=xmlHttp.responseText;   
          }   
          }
      
      </script>


<div class="main-container">
<div class="container">
<div class="row">
<div class="col-md-9 page-content">
<div class="inner-box category-content">
<h2 class="title-2 uppercase"><strong> <i class="icon-docs"></i> Post a Free Classified AdS</strong></h2>
<div class="row">
<div class="col-sm-12">
<form class="form-horizontal" method="post" action="../PostController" enctype="multipart/form-data">
<fieldset>
 
<div class="form-group">
<label class="col-md-3 control-label">Category</label>
<div class="col-md-8">
<select name="Category" id="category-group" class="form-control" onchange="showSubCategory(this)">
<option value="0" selected="selected"> Select a category...</option>
<%
dbcon.openconnection();
String list1="select * from Category";
resultSet=dbcon.executequery(list1);
while(resultSet.next()){
%>
<option value="<%=resultSet.getInt(1)%>"><%=resultSet.getString(2)%></option>
<% } dbcon.connectionclose(); %>
</select>
</div>
</div>

<div class="form-group">
<label class="col-md-3 control-label">Sub Category</label>
<div class="col-md-8" id="subCategory">
<select name="subCategoryId" id="subcategory-group" class="form-control">
<option value="0" selected="selected"> Select a category...</option>
</select>
</div>
</div>

 
 
<div class="form-group">
<label class="col-md-3 control-label" for="textarea">Describe ad </label>
<div class="col-md-8">
<textarea class="form-control" id="textarea" name="Describe" placeholder="Discription of your Add" required=""></textarea>
</div>
</div>
 
<div class="form-group">
<label class="col-md-3 control-label" for="Price">Price</label>
<div class="col-md-4">
<div class="input-group"><span class="input-group-addon">RS.</span>
<input id="Price" name="Price" class="form-control" placeholder="placeholder" required="" type="text">
</div>
</div>
<div class="col-md-4">
<div class="checkbox">
<label>
<input type="checkbox" name="Negotiable">
Negotiable </label>
</div>
</div>
</div>
 
 
 
<div class="form-group">
<label class="col-md-3 control-label" for="textarea"> Picture </label>


<div class="col-md-8">
<div class="mb10">
<input id="input-upload-img1" name="Image1" type="file" class="file" data-preview-file-type="text" required="">
</div>
<div class="mb10">
<input id="input-upload-img2" name="Image2" type="file" class="file" data-preview-file-type="text" required="">
</div>
<div class="mb10">
<input id="input-upload-img3" name="Image3" type="file" class="file" data-preview-file-type="text">
</div>
<p class="help-block">Add up to 2 photos. Use a real image of your
product, not catalogs.</p>
</div>

</div>




<div class="form-group">
<label class="col-md-3 control-label">Owner Type</label>
<div class="col-md-8">
<label class="radio-inline" for="radios-0"><input name="Ownertype" id="radios-0" value="First" checked="checked" type="radio">First</label>
<label class="radio-inline" for="radios-1"><input name="Ownertype" id="radios-1" value="Second"  type="radio">Second</label>
<label class="radio-inline" for="radios-2"><input name="Ownertype" id="radios-2" value="Third" type="radio">Third</label>
</div>
</div>

<div class="form-group">
<label class="col-md-3 control-label"></label>
<!-- <div class="col-md-8"><a href="posting-success.html" id="button1id" class="btn btn-success btn-lg">Submit</a></div> -->
<div class="col-md-8">
<input type=hidden value="<%=id %>" name="userid">
<input type="submit" name="actionButton" value="Submit">
</div>
</div>
</fieldset>
</form>
</div>
</div>
</div>
</div>
 
<div class="col-md-3 reg-sidebar">
<div class="reg-sidebar-inner text-center">
<div class="promo-text-box"><i class=" icon-picture fa fa-4x icon-color-1"></i>
<h3><strong>Post a Free Classified</strong></h3>
<p> Post your free online classified ads with us. Lorem ipsum dolor sit amet, consectetur
adipiscing elit. </p>
</div>
<div class="panel sidebar-panel">
<div class="panel-heading uppercase">
<small><strong>How to sell quickly?</strong></small>
</div>
<div class="panel-content">
<div class="panel-body text-left">
<ul class="list-check">
<li> Use a brief title and description of the item</li>
<li> Make sure you post in the correct category</li>
<li> Add nice photos to your ad</li>
<li> Put a reasonable price</li>
<li> Check the item before publish</li>
</ul>
</div>
</div>
</div>
</div>
</div>
 
</div>
 
</div>
 
</div>
<%@include file="Footer.jsp" %>
