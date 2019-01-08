<%@include file="MenuManage.jsp" %>
<% selectMenu=2; %>
<%@ include file="AdminHeader.jsp" %>
<%@page import="dbconnection.*" %>
<%@page import="java.sql.ResultSet"%>


<div class="main-container">
<div class="container">
<div class="row">

<div class="col-lg-12 page-content">
<!-- <div class="col-sm-9 page-content"> -->
<div class="inner-box">
<h2 class="title-2"><i class="icon-docs"></i> Manage User </h2>
<div class="table-responsive">
<div class="table-action">
<label for="checkAll">
<a href="AdminHome.jsp" class="btn btn-xs btn-danger">Back To Home <i class="glyphicon glyphicon-remove "></i></a> </label>
<!-- <a href="PendingApproval.jsp" class="btn btn-primary btn-xs"><i class="icon-hourglass">Pending Approval</i></a> -->

</div>
<table id="addManageTable" class="table table-striped table-bordered add-manage-table table demo footable-loaded footable" data-filter="#filter" data-filter-text-only="true">
<thead>
<tr>
<!-- <th data-type="numeric" data-sort-initial="true"></th> -->
<!-- <th> Photo</th> -->
<th data-sort-ignore="true"> Name</th>
<th data-type="numeric"> Details</th>
<th> Option</th>
</tr>
</thead>
<tbody>
<%Dbcon dbcon= Dbcon.getinstance();
dbcon.openconnection();
String sql = "SELECT * FROM user";
ResultSet resultSet = dbcon.executequery(sql);
while(resultSet.next())
{

%>
<tr>
<!-- <td style="width:2%" class="add-img-selector"> -->
<!-- <div class="checkbox"> -->
<!-- <label> -->
<!-- <input type="checkbox"> -->
<!-- </label> -->
<!-- </div> -->
<!-- </td> -->
<%-- <td style="width:14%" class="add-img-td"><a href="ads-details.html"><img class="thumbnail  img-responsive" src="<%=getServletContext().getInitParameter("Image")+""+resultSet.getString(5) %>" alt="img"></a></td> --%>
<td><%=resultSet.getString(2) %> <%=resultSet.getString(3)%></td>
<td style="width:58%" class="ads-details-td">
<div>
<%-- <p><strong> <a href="ads-details.html" title="Brend New Nexus 4"><%=resultSet.getString(15) %></a> </strong></p> --%>
<p><strong> Address: </strong><%=resultSet.getString(5)%></p>
<p><strong> Contact: </strong><%=resultSet.getLong(4)%></p>
<p><strong>E-mail:</strong> <%=resultSet.getString(6)%>
</p>
</div>
</td>
<!-- <td style="width:16%" class="price-td"> -->
<%-- <div><strong> <%=resultSet.getString(3)%></strong></div> --%>
<!-- </td> -->
<td style="width:10%" class="action-td">


<div>
<%
if(resultSet.getString(1)!=null){
%>
<form action="../UserController" method="post">
<p> <button type="submit"  class="btn btn-danger btn-xs" name="actionButton" value="disapprove"><i class=" fa fa-trash"></i>
 DisApprove 
</p>
<input type="hidden" value="<%=resultSet.getString(1) %>" name="id"/>
</form>
<%}else{ %>
<form action="../UserController" method="post">
<p> <button type="submit"   class="btn btn-primary btn-xs" name="actionButton" value="approve"><i class="fa fa-edit"> </i> Approve</button>
</p>
<input type="hidden" value="<%=resultSet.getString(1) %>" name="id"/>
</form>
<%} %>
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
