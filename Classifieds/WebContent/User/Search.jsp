
<%@page import="pojo.PostPojo"%>
<%@page import="java.util.ArrayList"%>
<%@include file="MenuManage.jsp" %>
<% selectMenu=0; %>
<%@include file="Header1.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="dbconnection.Dbcon"%>

<div class="main-container">
<div class="container">

<div class="col-lg-12 page-content">
<div class="inner-box">
<h2 class="title-2"><i class="icon-search"></i> Search Results </h2>
<div class="table-responsive">
<div class="table-action">
<a href="Category.jsp" class="btn btn-xs btn-danger">Back To Home<i class="glyphicon glyphicon-remove "></i></a>
</div>
<table id="addManageTable" class="table table-striped table-bordered add-manage-table table demo" data-filter="#filter" data-filter-text-only="true">
<thead>
<tr>
<th> Photo</th>
<th data-sort-ignore="true"> Adds Details</th>
<th data-type="numeric"> Price</th>
<th> Option</th>
</tr>
</thead>

<tbody>
<%
	ArrayList<PostPojo>  arrayList = new ArrayList<PostPojo>();
	session = request.getSession();
	if(session.getAttribute("postAdd")!=null)
	{
		arrayList =(ArrayList) session.getAttribute("postAdd");
	}
	
	if(arrayList.isEmpty()){
%>


<tr>
<td style="width:58%" class="ads-details-td" colspan="4">
No Record Found
</td>
</tr>
<%}else
{ 
for(PostPojo pojo : arrayList)
{
%>
<tr>
<td style="width:14%" class="add-img-td"><a href="ads-details.html"><img class="thumbnail  img-responsive" src="<%= getServletContext().getInitParameter("Image")+""+pojo.getPicture1() %>" alt="img"></a></td>
<td style="width:58%" class="ads-details-td">
<div>
<p><strong> <a href="ads-details.html" title=""><%=pojo.getSubCategoryName() %></a> </strong></p>
<p>Located In: <%=pojo.getLocation() %></strong>

</p>
</div>
</td>
<td style="width:16%" class="price-td">
<div><strong> Rs. <%=pojo.getPrice() %></strong>
</div>
</td>
<td style="width:10%" class="action-td">
<div>
<p><a class="btn btn-info btn-xs"> <i class="fa fa-mail-forward"></i> View
</a></p>
<p><a class="btn btn-default  btn-sm make-favorite"> <i class="fa fa-heart"></i> <span>Save</span> </a></p>
</div>
</td>
</tr>
<%}} %>
</tbody>
</table>
</div>
 
</div>
</div>
 
</div>
 
</div>
 
</div>
<%@include file="Footer.jsp" %>
