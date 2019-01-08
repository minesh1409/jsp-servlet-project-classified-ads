<%@page import="java.sql.ResultSet"%>
<%@page import="dbconnection.Dbcon"%>
<%@include file="MenuManage.jsp" %>
<% selectMenu=1; %>
<%@ include file="AdminHeader.jsp" %>
<%
Dbcon dbcon = Dbcon.getinstance();
dbcon.openconnection();
String sql="select * from user where userType_id=1";
ResultSet resultSet = dbcon.executequery(sql);
while(resultSet.next()){
%>

<div class="main-container">
<div class="container">
<div class="row">

<!-- <div class="col-sm-9 page-content"> -->
<div class="col-lg-12 page-content">
<div class="inner-box">
<div class="welcome-msg">
<h3 class="page-sub-header2 clearfix no-padding">Hello Admin </h3>
<!-- <span class="page-sub-header-sub small">You last logged in at: 01-01-2014 12:40 AM [UK time (GMT + 6:00hrs)]</span> -->
</div>
<div id="accordion" class="panel-group">
<div class="panel panel-default">
<div class="panel-heading">
<h4 class="panel-title"><a href="#collapseB1" data-toggle="collapse"> My
details </a></h4>
</div>
<div class="panel-collapse collapse in" id="collapseB1">
<div class="panel-body">
<form class="form-horizontal" role="form">
<div class="form-group">
<label class="col-sm-3 control-label">First Name</label>
<div class="col-sm-9">
<input type="text" class="form-control" placeholder="Jhon" name="firstname" value="<%=resultSet.getString(2)%>">
</div>
</div>
<div class="form-group">
<label class="col-sm-3 control-label">Last name</label>
<div class="col-sm-9">
<input type="text" class="form-control" placeholder="Doe" name="lastname" value="<%=resultSet.getString(3)%>">
</div>
</div>
<div class="form-group">
<label class="col-sm-3 control-label">Email</label>
<div class="col-sm-9">
<input type="email" class="form-control" placeholder="jhon.deo@example.com" name="email" value="<%=resultSet.getString(6)%>">
</div>
</div>
<div class="form-group">
<label class="col-sm-3 control-label">Address</label>
<div class="col-sm-9">
<input type="text" class="form-control" placeholder="..." name="address" value="<%=resultSet.getString(5)%>">
</div>
</div>
<div class="form-group">
<label for="Phone" class="col-sm-3 control-label">Phone</label>
<div class="col-sm-9">
<input type="text" class="form-control" id="Phone" placeholder="880 124 9820" name="contact" value="<%=resultSet.getString(4)%>">
</div>
</div>
<!-- <div class="form-group"> -->
<!-- <label class="col-sm-3 control-label">Postcode</label> -->
<!-- <div class="col-sm-9"> -->
<!-- <input type="text" class="form-control" placeholder="1217" name="zipcode"> -->
<!-- </div> -->
<!-- </div> -->
<div class="form-group hide">  
<label class="col-sm-3 control-label">Facebook account map</label>
<div class="col-sm-9">
<div class="form-control"><a class="link" href="fb.com">Jhone.doe</a> <a class=""> <i class="fa fa-minus-circle"></i></a></div>
</div>
</div>
<div class="form-group">
<div class="col-sm-offset-3 col-sm-9"></div>
</div>
<div class="form-group">
<div class="col-sm-offset-3 col-sm-9">
<!-- <button type="submit" class="btn btn-default">Update</button> -->
</div>
</div>
</form>
</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<h4 class="panel-title"><a href="#collapseB2" data-toggle="collapse" class="collapsed" aria-expanded="false"> Settings </a>
</h4>
</div>
<div class="panel-collapse collapse" id="collapseB2" aria-expanded="false" style="height: 0px;">
<div class="panel-body">
<form class="form-horizontal" role="form">
<div class="form-group">
<div class="col-sm-12">
<div class="checkbox">
<label>
<input type="checkbox">
Comments are enabled on my ads </label>
</div>
</div>
</div>
<div class="form-group">
<label class="col-sm-3 control-label">New Password</label>
<div class="col-sm-9">
<input type="password" class="form-control" placeholder="">
</div>
</div>
<div class="form-group">
<label class="col-sm-3 control-label">Confirm Password</label>
<div class="col-sm-9">
<input type="password" class="form-control" placeholder="">
</div>
</div>
<div class="form-group">
<div class="col-sm-offset-3 col-sm-9">
<button type="submit" class="btn btn-default">Update</button>
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
<% }dbcon.connectionclose(); %>

<%@ include file="Footer.jsp" %>




<!-- <script src="../../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script> -->
<!-- <script src="../assets/bootstrap/js/bootstrap.min.js"></script> -->
 
<!-- <script type="text/javascript" src="../assets/js/icheck.min.html"></script> -->
 
<!-- <script src="../assets/js/owl.carousel.min.js"></script> -->
 
<!-- <script src="../assets/js/jquery.matchHeight-min.js"></script> -->
 
<!-- <script src="../assets/js/hideMaxListItem.js"></script> -->
 
<!-- <script src="../assets/js/footablecd98.js?v=2-0-1" type="text/javascript"></script> -->
<!-- <script src="../assets/js/footable.filtercd98.js?v=2-0-1" type="text/javascript"></script> -->
<!-- <script type="text/javascript"> -->
<!-- //     $(function () { -->
<!-- //         $('#addManageTable').footable().bind('footable_filtering', function (e) { -->
<!-- //             var selected = $('.filter-status').find(':selected').text(); -->
<!-- //             if (selected && selected.length > 0) { -->
<!-- //                 e.filter += (e.filter && e.filter.length > 0) ? ' ' + selected : selected; -->
<!-- //                 e.clear = !e.filter; -->
<!-- //             } -->
<!-- //         }); -->

<!-- //         $('.clear-filter').click(function (e) { -->
<!-- //             e.preventDefault(); -->
<!-- //             $('.filter-status').val(''); -->
<!-- //             $('table.demo').trigger('footable_clear_filter'); -->
<!-- //         }); -->

<!-- //     }); -->
<!-- </script> -->
 
<!-- <script> -->

<!-- //     function checkAll(bx) { -->
<!-- //         var chkinput = document.getElementsByTagName('input'); -->
<!-- //         for (var i = 0; i < chkinput.length; i++) { -->
<!-- //             if (chkinput[i].type == 'checkbox') { -->
<!-- //                 chkinput[i].checked = bx.checked; -->
<!-- //             } -->
<!-- //         } -->
<!-- //     } -->

<!-- </script> -->
 
<!-- <script src="../assets/plugins/jquery.fs.scroller/jquery.fs.scroller.js"></script> -->
<!-- <script src="../assets/plugins/jquery.fs.selecter/jquery.fs.selecter.js"></script> -->
 
<!-- <script src="../assets/js/script.js"></script> -->
<!-- </body> -->

<!-- <!-- Mirrored from templatecycle.com/demo/bootclassified-v1.5/dist/account-pending-approval-ads.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 28 Oct 2016 14:37:13 GMT --> -->
<!-- </html> -->
