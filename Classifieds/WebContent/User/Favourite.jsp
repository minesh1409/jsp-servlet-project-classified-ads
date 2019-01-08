<%@page import="java.sql.ResultSet"%>

<%@page import="dbconnection.Dbcon"%>
<%@include file="MenuManage.jsp" %>
<% selectMenu=3; %>
<%@include file="Header1.jsp" %>

<div class="main-container">
<div class="container">

 
<div class="col-lg-12 page-content">
<div class="inner-box">
<h2 class="title-2"><i class="icon-heart-1"></i> Favourite ads </h2>
<div class="table-responsive">

<table id="addManageTable" class="table table-striped table-bordered add-manage-table table demo" data-filter="#filter" data-filter-text-only="true">
<thead>
<tr>
<!-- <th data-type="numeric" data-sort-initial="true"></th> -->
<th> Photo</th>
<th data-sort-ignore="true"> Adds Details</th>
<th data-type="numeric"> Price</th>
<th> Option</th>
</tr>
</thead>
<% Dbcon dbcon= Dbcon.getinstance();
dbcon.openconnection();
String sql = "select up.*,sc.id,sc.name,c.id,c.name,l.id,l.name,u.location_id,u.firstName,u.lastName,uf.userProduct_id,uf.id from user_favourite uf,user_product up, subcategory sc,location l,user u,category c  where uf.user_id ="+id+" and up.subCategory_id=sc.id and u.location_id=l.id and up.user_id=u.id and sc.category_id=c.id and uf.userProduct_id=up.id;";
ResultSet resultSet =dbcon.executequery(sql);
while(resultSet.next())
{

%>
<tbody>
<tr>
<!-- <td style="width:2%" class="add-img-selector"> -->
<!-- <div class="checkbox"> -->
<!-- <label> -->
<!-- <input type="checkbox"> -->
<!-- </label> -->
<!-- </div> -->
<!-- </td> -->
<td style="width:14%" class="add-img-td"><a href="ads-details.html"><img class="thumbnail  img-responsive" src="../img/<%=resultSet.getString(5)%>" alt="img"></a></td>
<td style="width:58%" class="ads-details-td">
<div>
<p><strong> 

<form action="../PostController" method="post">
<button type="submit" class="btn btn-link"  name="actionButton" value="adsDetail">
<%=resultSet.getString(15) %>
</button>
<input type="hidden" value="<%=resultSet.getString(1) %>" name="id"/>
</form>

</strong></p>


<p><strong> Posted On </strong>:
<%=resultSet.getDate(10)%>
</p>
<p><strong>
Located In:</strong><%=resultSet.getString(19) %>

</p>
</div>
</td>
<td style="width:16%" class="price-td">
<div><strong> RS.<%=resultSet.getDouble(3)%></strong>
</div>
</td>
<td style="width:10%" class="action-td">
<div>

<form action="../FavouriteController" method="post">
<p><button type="submit" class="btn btn-danger btn-xs"  name="actionButton" value="delete"><i class=" fa fa-trash"></i> Delete</button></p>
<input type="hidden" value="<%=resultSet.getString(24) %>" name="id"/>
</form>

<p><a class="btn btn-info btn-xs"> <i class="fa fa-mail-forward"></i> Share
</a></p>
<!-- <p><a class="btn btn-danger btn-xs"> <i class=" fa fa-trash"></i> Delete -->
<!-- </a></p> -->
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
<%@include file="Footer.jsp" %>
