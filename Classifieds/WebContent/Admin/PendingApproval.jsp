<%@ include file="AdminHeader.jsp" %>
<%@page import="dbconnection.*" %>
<%@page import="java.sql.ResultSet"%>

<div class="main-container">
<div class="container">
<div class="row">

<div class="col-lg-12 page-content">
<!-- <div class="col-sm-9 page-content"> -->
<div class="inner-box">
<h2 class="title-2"><i class="icon-hourglass"></i> Pending approval </h2>
<div class="table-responsive">
<div class="table-action">
<label for="checkAll">
<input type="checkbox" id="checkAll">
Select: All | <a href="#" class="btn btn-xs btn-danger">Delete <i class="glyphicon glyphicon-remove "></i></a> </label>
<a href="ManageAds.jsp" class="btn btn-primary btn-xs"><i class="icon-hourglass">Manage Ads</i></a>

</div>
<table id="addManageTable" class="table table-striped table-bordered add-manage-table table demo" data-filter="#filter" data-filter-text-only="true">
<thead>
<tr>
<th data-type="numeric" data-sort-initial="true"></th>
<th> Photo</th>
<th data-sort-ignore="true"> Adds Details</th>
<th data-type="numeric"> Price</th>
<th> Option</th>
</tr>
</thead>
<tbody>
<%Dbcon dbcon= Dbcon.getinstance();
dbcon.openconnection();
String sql = "SELECT up.*,sc.*,u.*,l.* FROM user_product up, subcategory sc, user u,location l  where up.subCategory_id=sc.id and up.user_id=u.id and u.location_id=l.id";
ResultSet resultSet = dbcon.executequery(sql);
while(resultSet.next())
{

%>
<tr>
<td style="width:2%" class="add-img-selector">
<div class="checkbox">
<label>
<input type="checkbox">
</label>
</div>
</td>
<td style="width:14%" class="add-img-td"><a href="ads-details.html"><img class="thumbnail  img-responsive" src="<%=getServletContext().getInitParameter("Image")+""+resultSet.getString(5) %>" alt="img"></a></td>
<td style="width:58%" class="ads-details-td">
<div>
<p><strong> <a href="ads-details.html" title="Brend New Nexus 4"><%=resultSet.getString(15) %></a> </strong></p>
<p><strong> Posted On </strong>:<%=resultSet.getString(10)%></p>
<p><strong>Located In:</strong> <%=resultSet.getString(29)%>
</p>
</div>
</td>
<td style="width:16%" class="price-td">
<div><strong> <%=resultSet.getString(3)%></strong></div>
</td>
<td style="width:10%" class="action-td">
<div>
<p><a class="btn btn-primary btn-xs"> <i class="fa fa-edit"></i> Approve </a>
</p>
<p><a class="btn btn-danger btn-xs"> <i class=" fa fa-trash"></i> Disapprove
</a></p>
</div>
</td>
</tr>

<%}
dbcon.connectionclose();
%>

</tbody>
</table>
</div>
 
</div>
</div>
 
</div>
 
</div>
 
</div>
 

<%@ include file="Footer.jsp" %>
 