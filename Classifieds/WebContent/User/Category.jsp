<%@include file="MenuManage.jsp" %>
<% selectMenu=1; %>
<%@include file="Header1.jsp" %>
<%@page import="dbconnection.*" %>
<%@page import="java.sql.ResultSet"%>
 


<div class="container">
<div class="row">
 
 <div class="col-lg-12 page-content">
<!-- <div class="col-sm-9 page-content col-thin-left"> -->
<div class="category-list">
<div class="tab-box ">
 
<ul class="nav nav-tabs add-tabs" id="ajaxTabs" role="tablist">
<li class="active"><a href="ajax/1.html" data-url="ajax/1.html" role="tab" data-toggle="tab">All Ads <span class="badge"></span></a>
</li>
</ul>
<div class="tab-filter">
<select class="selectpicker" data-style="btn-select" data-width="auto">
<option>Short by</option>
<option>Price: Low to High</option>
<option>Price: High to Low</option>
</select>
</div>
</div>
 
<div class="listing-filter">
<div class="pull-left col-xs-6">
<div class="breadcrumb-list"><a href="#" class="current"> <span>All ads</span></a>
in 
<!-- <span class="cityName"> New York </span> <a href="#selectRegion" id="dropdownMenu1" data-toggle="modal">  -->
<span class="caret"></span> </a></div>
</div>
<div class="pull-right col-xs-6 text-right listing-view-action"><span class="list-view active"><i class="  icon-th"></i></span> <span class="compact-view"><i class=" icon-th-list  "></i></span> <span class="grid-view "><i class=" icon-th-large "></i></span></div>
<div style="clear:both"></div>
</div>
 
  
<div class="adds-wrapper">
<div class="tab-content">
<!-- <div class="tab-pane active" id="allAds"> -->

<div class="col-lg-12 page-content">
<div class="inner-box">
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
<%Dbcon dbcon= Dbcon.getinstance();
dbcon.openconnection();
// String sql = "select * from user_product where isApprove=1";
String sql = "select up.*,sc.id,sc.name,c.id,c.name,l.id,l.name,u.location_id,u.firstName,u.lastName from user_product up, subcategory sc,location l,user u,category c  where isApprove=1 and up.subCategory_id=sc.id and u.location_id=l.id and up.user_id=u.id and sc.category_id=c.id;";
ResultSet resultSet = dbcon.executequery(sql);
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
<td style="width:14%" class="add-img-td"><a href="Adsdetails.jsp"><img class="thumbnail  img-responsive" src="../img/<%=resultSet.getString(5) %>" alt="img"></a></td>
<td style="width:58%" class="ads-details-td">
<div>
<p><strong> 
<form action="../PostController" method="post">
<button type="submit" class="btn btn-link"  name="actionButton" value="adsDetail">
<!-- <a href="Adsdetails.jsp" title="Brend New Nexus 4"> -->

<%=resultSet.getString(15) %>
<!-- </a> -->
</button>
<input type="hidden" value="<%=resultSet.getString(1) %>" name="id"/>
</form>
 </strong></p>
<p><strong> Posted On: </strong>
<%=resultSet.getDate(10) %> </p>
<p><strong>Located In <i class="fa fa-map-marker"></i>  </strong><%=resultSet.getString(19) %>
</p>
</div>
</td>
<td style="width:16%" class="price-td">
<div><strong> <%=resultSet.getDouble(3) %></strong></div>
</td>
<td style="width:10%" class="action-td">
<div>
<p><a class="btn btn-info btn-xs"> <i class="fa fa-mail-forward"></i> <span>Share</span>
</a></p>


<form action="../FavouriteController" method="post">
<p> <button type="submit"  class="btn btn-default  btn-sm make-favorite" name="actionButton" value="favourite">
<i class="fa fa-heart"></i> <span>Favorite</span></button>
</p>
<input type="hidden" value="<%=resultSet.getString(1) %>" name="id"/>
<input type="hidden" value="<%=id%>" name="userid"/>
</form>
<!-- <p><a class="btn btn-default  btn-sm make-favorite"> <i class="fa fa-heart"></i> <span>Favorite</span>  -->
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

 
<div class="tab-box  save-search-bar text-center"><a href="#"> <i class=" icon-star-empty"></i>
Save Search </a></div>
</div>
<!-- <div class="pagination-bar text-center"> -->
<!-- <ul class="pagination"> -->
<!-- <li class="active"><a href="#">1</a></li> -->
<!-- <li><a href="#">2</a></li> -->
<!-- <li><a href="#">3</a></li> -->
<!-- <li><a href="#">4</a></li> -->
<!-- <li><a href="#">5</a></li> -->
<!-- <li><a href="#"> ...</a></li> -->
<!-- <li><a class="pagination-btn" href="#">Next &raquo;</a></li> -->
<!-- </ul> -->
<!-- </div> -->
 
<div class="post-promo text-center">
<h2> Do you get anything for sell ? </h2>
<h5>Sell your products online FOR FREE. It's easier than you think !</h5>
<a href="Postadsold.jsp" class="btn btn-lg btn-border btn-post btn-danger">Post a Free Ad </a>
</div>
 
</div>
 
</div>
</div>

 
<%@include file="Footer.jsp" %>

