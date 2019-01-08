
<%@page import="pojo.PostPojo"%>
<%@include file="MenuManage.jsp" %>
<% selectMenu=4; %>
<%@include file="Header1.jsp" %>
<%@page import="dbconnection.Dbcon"%>
<%@page import="java.sql.ResultSet"%>

<% 
PostPojo pojo = new PostPojo();
if(session.getAttribute("editDetail")!=null)
{
	pojo =(PostPojo) session.getAttribute("editDetail");
}

Dbcon dbcon = Dbcon.getinstance();
ResultSet resultSet;
%>
<script language="javascript" type="text/javascript">  

var xmlHttp
      function showSubCategory(str){
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
        	  document.getElementById("subCategory").innerHTML=xmlHttp.responseText;   
          }   
          }
      

      </script>


<div class="main-container" >
<div class="container" >
<div class="row">
<!-- <div class="col-lg-12 page-content"> -->
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
<option value="<%=resultSet.getInt(1)%>" <%=resultSet.getString(2).equals(pojo!=null?pojo.getCategory():"")?"selected=\"selected\"":"" %>><%=resultSet.getString(2)%></option>
<% } dbcon.connectionclose(); %>
</select>
</div>
</div>
<div class="form-group">
<label class="col-md-3 control-label">Sub Category</label>
<div class="col-md-8" id="subCategory">
<select name="subCategoryId" id="subcategory-group" class="form-control">
<option value="0" selected="selected" > Select a category...</option>
<%
if(pojo!=null)
{
dbcon.openconnection();
String list2="select * from subcategory where category_id="+pojo.getCategoryId();
resultSet=dbcon.executequery(list2);
while(resultSet.next()){
%>
<option value="<%=resultSet.getInt(1)%>" <%=resultSet.getString(2).equals(pojo!=null?pojo.getSubCategoryName():"")?"selected=\"selected\"":"" %>><%=resultSet.getString(2)%></option>
<% } dbcon.connectionclose(); %>
 <%} %>

</select>
</div>
</div>
 
<div class="form-group">
<label class="col-md-3 control-label" for="textarea">Describe ad </label>
<div class="col-md-8">
<textarea class="form-control" id="textarea" name="Describe" placeholder="Discription of your Add"  ><%=pojo !=null? pojo.getDescribead():"\"\""%></textarea>
</div>
</div>
 
<div class="form-group">
<label class="col-md-3 control-label" for="Price">Price</label>
<div class="col-md-4">
<div class="input-group"><span class="input-group-addon">RS.</span>
<input id="Price" name="Price" class="form-control" placeholder="placeholder" required="" type="text" value="<%=pojo !=null? pojo.getPrice():"\"\""%>">
</div>
</div>
<div class="col-md-4">
<div class="checkbox">
<label>
<input type="checkbox" name="Negotiable" <%=pojo !=null && pojo.getNegosiable()?"checked='checked'" :""%> >
Negotiable </label>
</div>
</div>
</div>
 
 
 
<div class="form-group">
<label class="col-md-3 control-label" for="textarea"> Picture </label>


<div class="col-md-8">
<div class="mb10">
<input id="input-upload-img1" name="Image1" type="file" class="file" data-preview-file-type="text">
</div>
<div class="mb10">
<input id="input-upload-img2" name="Image2" type="file" class="file" data-preview-file-type="text">
</div>
<div class="mb10">
<input id="input-upload-img3" name="Image3" type="file" class="file" data-preview-file-type="text">
</div>

<%if(pojo !=null){ %>
<div class="mb10">
<%if(pojo.getPicture1()!=null) %>
<img alt="" src="../img/<%=pojo.getPicture1()%>" class="thumbnail  img-responsive" height="100" width="100">
<input type="hidden" name="Image1" value="<%=pojo.getPicture1()%>"> 
<%}if(pojo.getPicture2()!=null) {%>
<img alt="" src="../img/<%=pojo.getPicture2()%>" class="thumbnail  img-responsive" height="100" width="100">
<input type="hidden" name="Image2" value="<%=pojo.getPicture2()%>">
<%}if(pojo.getPicture3()!=null){ %>
<input type="hidden" name="Image3" value="<%=pojo.getPicture3()%>">
<img alt="" src="../img/<%=pojo.getPicture3()%>" class="thumbnail  img-responsive" height="100" width="100">
</div>
<%} %>

<p class="help-block">Add up to 2 photos. Use a real image of your
product, not catalogs.</p>
</div>

</div>



<div class="form-group">
<label class="col-md-3 control-label">Owner Type</label>
<div class="col-md-8">
<label class="radio-inline" for="radios-0"><input name="Ownertype" id="radios-0" value="First"  <%=pojo !=null && pojo.getOwnertype().equalsIgnoreCase("First")?"checked='checked'" :""%>  type="radio">First</label>
<label class="radio-inline" for="radios-1"><input name="Ownertype" id="radios-1" value="Second" <%=pojo !=null && pojo.getOwnertype().equalsIgnoreCase("Second")?"checked='checked'" :""%> type="radio">Second</label>
<label class="radio-inline" for="radios-2"><input name="Ownertype" id="radios-2" value="Third" <%=pojo !=null && pojo.getOwnertype().equalsIgnoreCase("Third")?"checked='checked'" :""%> type="radio">Third</label>
</div>
</div>

<div class="form-group">
<label class="col-md-3 control-label"></label>
<!-- <div class="col-md-8"><a href="posting-success.html" id="button1id" class="btn btn-success btn-lg">Submit</a></div> -->
<%if(pojo!=null) {%>
<input type="hidden" value="<%=pojo.getId()%>" name="id"> 
<div class="col-md-8"><input type="submit" name="actionButton" value="Update"></div>
<%}else{ %>
<div class="col-md-8"><input type="submit" name="actionButton" value="Submit"></div>
<%} %>
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
