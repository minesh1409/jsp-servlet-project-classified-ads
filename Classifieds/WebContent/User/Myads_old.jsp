<%@page import="dbconnection.Dbcon"%>
<%@include file="MenuManage.jsp" %>
<% selectMenu=2; %>
<%@include file="Header1.jsp" %>
<div class="main-container">
<div class="container">




<div class="col-lg-12 page-content">
<div class="inner-box">
<h2 class="title-2"><i class="icon-th-thumb"></i> My Ads </h2>
<div class="table-responsive">
<div class="table-action">
<label for="checkAll">
<input type="checkbox" id="checkAll">
Select: All | <a href="#" class="btn btn-xs btn-danger">Delete <i class="glyphicon glyphicon-remove "></i></a> </label>
<div class="table-search pull-right col-xs-7">
<div class="form-group">
<label class="col-xs-5 control-label text-right">Search <br>
<a title="clear filter" class="clear-filter" href="#clear">[clear]</a>
</label>
<div class="col-xs-7 searchpan">
<input type="text" class="form-control" id="filter">
</div>
</div>
</div>
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
<tr>
<td style="width:2%" class="add-img-selector">
<div class="checkbox">
<label>
<input type="checkbox">
</label>
</div>
</td>
<td style="width:14%" class="add-img-td"><a href="ads-details.html"><img class="thumbnail  img-responsive" src="images/item/FreeGreatPicture.com-46407-nexus-4-starts-at-199.jpg" alt="img"></a></td>
<td style="width:58%" class="ads-details-td">
<div>
<p><strong> <a href="ads-details.html" title="Brend New Nexus 4">Brend New
Nexus 4</a> </strong></p>
<p><strong> Posted On </strong>:
02-Oct-2014, 04:38 PM </p>
<p><strong>Visitors </strong>: 221 <strong>Located In:</strong> New York
</p>
</div>
</td>
<td style="width:16%" class="price-td">
<div><strong> $199</strong></div>
</td>
<td style="width:10%" class="action-td">
<div>
<p><a class="btn btn-info btn-xs"> <i class="fa fa-mail-forward"></i> Share
</a></p>
<p><a class="btn btn-danger btn-xs"> <i class=" fa fa-trash"></i> Delete
</a></p>
</div>
</td>
</tr>
<tr>
<td style="width:2%" class="add-img-selector">
<div class="checkbox">
<label>
<input type="checkbox">
</label>
</div>
</td>
<td style="width:14%" class="add-img-td"><a href="ads-details.html"><img class="thumbnail  img-responsive" src="images/item/FreeGreatPicture.com-46403-google-drops-nexus-4-price-now-starts-at-199-on-play-store.jpg" alt="img"></a></td>
<td style="width:58%" class="ads-details-td">
<div>
<p><strong> <a href="ads-details.html" title="Google drops price of Nexus 4 smartphone">Google drops
price of Nexus 4 smartphone </a> </strong></p>
<p><strong> Posted On </strong>:
02-Oct-2014, 04:38 PM </p>
<p><strong>Visitors </strong>: 221 <strong>Located In:</strong> New York
</p>
</div>
</td>
<td style="width:16%" class="price-td">
<div><strong> $464</strong></div>
</td>
<td style="width:10%" class="action-td">
<div>
<p><a class="btn btn-info btn-xs"> <i class="fa fa-mail-forward"></i> Share
</a></p>
<p><a class="btn btn-danger btn-xs"> <i class=" fa fa-trash"></i> Delete
</a></p>
</div>
</td>
</tr>
<tr>
<td style="width:2%" class="add-img-selector">
<div class="checkbox">
<label>
<input type="checkbox">
</label>
</div>
</td>
<td style="width:14%" class="add-img-td"><a href="ads-details.html"><img class="thumbnail  img-responsive" src="images/item/FreeGreatPicture.com-46405-google-drops-price-of-nexus-4-smartphone.jpg" alt="img"></a></td>
<td style="width:58%" class="ads-details-td">
<div>
<p><strong> <a href="ads-details.html" title="Brend New Nexus 4">Google
drops Nexus 4 by $100, offers 15 day price protection refund </a>
</strong></p>
<p><strong> Posted On </strong>:
02-Oct-2014, 04:38 PM </p>
<p><strong>Visitors </strong>: 221 <strong>Located In:</strong> New York
</p>
</div>
</td>
<td style="width:16%" class="price-td">
<div><strong> $100</strong></div>
</td>
<td style="width:10%" class="action-td">
<div>
<p><a class="btn btn-info btn-xs"> <i class="fa fa-mail-forward"></i> Share
</a></p>
<p><a class="btn btn-danger btn-xs"> <i class=" fa fa-trash"></i> Delete
</a></p>
</div>
</td>
</tr>
<tr>
<td style="width:2%" class="add-img-selector">
<div class="checkbox">
<label>
<input type="checkbox">
</label>
</div>
</td>
<td style="width:14%" class="add-img-td"><a href="ads-details.html"><img class="thumbnail  img-responsive" src="images/item/FreeGreatPicture.com-46404-google-drops-nexus-4-by-100-offers-15-day-price-protection-refund.jpg" alt="img"></a></td>
<td style="width:58%" class="ads-details-td">
<div>
<p><strong> <a href="ads-details.html" title="Brend New Nexus 4">Brend New
Nexus 4</a> </strong></p>
<p><strong> Posted On </strong>:
02-Oct-2014, 04:38 PM </p>
<p><strong>Visitors </strong>: 221 <strong>Located In:</strong> New York
</p>
</div>
</td>
<td style="width:16%" class="price-td">
<div><strong> $199</strong></div>
</td>
<td style="width:10%" class="action-td">
<div>
<p><a class="btn btn-info btn-xs"> <i class="fa fa-mail-forward"></i> Share
</a></p>
<p><a class="btn btn-danger btn-xs"> <i class=" fa fa-trash"></i> Delete
</a></p>
</div>
</td>
</tr>
<tr>
<td style="width:2%" class="add-img-selector">
<div class="checkbox">
<label>
<input type="checkbox">
</label>
</div>
</td>
<td style="width:14%" class="add-img-td"><a href="ads-details.html"><img class="thumbnail  img-responsive" src="images/item/tp/Image00014.jpg" alt="img"></a></td>
<td style="width:58%" class="ads-details-td">
<div>
<p><strong> <a href="ads-details.html" title="SAMSUNG GALAXY S CORE Duos ">SAMSUNG
GALAXY S CORE Duos </a> </strong></p>
<p><strong> Posted On </strong>:
02-Oct-2014, 04:38 PM </p>
<p><strong>Visitors </strong>: 221 <strong>Located In:</strong> New York
</p>
</div>
</td>
<td style="width:16%" class="price-td">
<div><strong> $150</strong></div>
</td>
<td style="width:10%" class="action-td">
<div>
<p><a class="btn btn-info btn-xs"> <i class="fa fa-mail-forward"></i> Share
</a></p>
<p><a class="btn btn-danger btn-xs"> <i class=" fa fa-trash"></i> Delete
</a></p>
</div>
</td>
</tr>
</tbody>
</table>
</div>
 
</div>
</div>
 
</div>
</div>
 
<%@include file="../Footer.jsp" %>


<script src="../../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script src="../assets/bootstrap/js/bootstrap.min.js"></script>
 
<script type="text/javascript" src="../assets/js/icheck.min.html"></script>
 
<script src="../assets/js/owl.carousel.min.js"></script>
 
<script src="../assets/js/jquery.matchHeight-min.js"></script>
 
<script src="../assets/js/hideMaxListItem.js"></script>
 
<script src="../assets/js/footablecd98.js?v=2-0-1" type="text/javascript"></script>
<script src="../assets/js/footable.filtercd98.js?v=2-0-1" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        $('#addManageTable').footable().bind('footable_filtering', function (e) {
            var selected = $('.filter-status').find(':selected').text();
            if (selected && selected.length > 0) {
                e.filter += (e.filter && e.filter.length > 0) ? ' ' + selected : selected;
                e.clear = !e.filter;
            }
        });

        $('.clear-filter').click(function (e) {
            e.preventDefault();
            $('.filter-status').val('');
            $('table.demo').trigger('footable_clear_filter');
        });

    });
</script>
 
<script>

    function checkAll(bx) {
        var chkinput = document.getElementsByTagName('input');
        for (var i = 0; i < chkinput.length; i++) {
            if (chkinput[i].type == 'checkbox') {
                chkinput[i].checked = bx.checked;
            }
        }
    }

</script>
 
<script src="../assets/plugins/jquery.fs.scroller/jquery.fs.scroller.js"></script>
<script src="../assets/plugins/jquery.fs.selecter/jquery.fs.selecter.js"></script>
 
<script src="../assets/js/script.js"></script>
</body>

<!-- Mirrored from templatecycle.com/demo/bootclassified-v1.5/dist/account-pending-approval-ads.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 28 Oct 2016 14:37:13 GMT -->
</html>
