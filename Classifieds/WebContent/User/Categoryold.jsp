<%@include file="MenuManage.jsp" %>
<% selectMenu=1; %>
<%@include file="Header1.jsp" %>
 


<div class="container">
<div class="row">
 
<div class="col-sm-3 page-sidebar mobile-filter-sidebar">
<aside>
<div class="inner-box">
<div class="categories-list  list-filter">
<h5 class="list-title"><strong><a href="#">All Categories</a></strong></h5>
<ul class=" list-unstyled">
<li><a href="sub-category-sub-location.html"><span class="title">Electronics</span><span class="count">&nbsp;8626</span></a>
</li>
<li><a href="sub-category-sub-location.html"><span class="title">Automobiles </span><span class="count">&nbsp;123</span></a></li>
<li><a href="sub-category-sub-location.html"><span class="title">Property </span><span class="count">&nbsp;742</span></a></li>
<li><a href="sub-category-sub-location.html"><span class="title">Services </span><span class="count">&nbsp;8525</span></a></li>
<li><a href="sub-category-sub-location.html"><span class="title">For Sale </span><span class="count">&nbsp;357</span></a></li>
<li><a href="sub-category-sub-location.html"><span class="title">Learning </span><span class="count">&nbsp;3576</span></a></li>
<li><a href="sub-category-sub-location.html"><span class="title">Jobs </span><span class="count">&nbsp;453</span></a></li>
<li><a href="sub-category-sub-location.html"><span class="title">Cars & Vehicles</span><span class="count">&nbsp;801</span></a>
</li>
<li><a href="sub-category-sub-location.html"><span class="title">Other</span><span class="count">&nbsp;9803</span></a></li>
</ul>
</div>
 
<div class="locations-list  list-filter">
<h5 class="list-title"><strong><a href="#">Location</a></strong></h5>
<ul class="browse-list list-unstyled long-list">
<li><a href="sub-category-sub-location.html"> Atlanta </a></li>
<li><a href="sub-category-sub-location.html"> Wichita </a></li>
<li><a href="sub-category-sub-location.html"> Anchorage </a></li>
<li><a href="sub-category-sub-location.html"> Dallas </a></li>
<li><a href="sub-category-sub-location.html">New York </a></li>
<li><a href="sub-category-sub-location.html"> Santa Ana/Anaheim </a></li>
<li><a href="sub-category-sub-location.html"> Miami </a></li>
<li><a href="sub-category-sub-location.html"> Virginia Beach </a></li>
<li><a href="sub-category-sub-location.html"> San Diego </a></li>
<li><a href="sub-category-sub-location.html"> Boston </a></li>
<li><a href="sub-category-sub-location.html"> Houston </a></li>
<li><a href="sub-category-sub-location.html">Salt Lake City </a></li>
<li><a href="sub-category-sub-location.html"> Other Locations </a></li>
</ul>
</div>
 
<div class="locations-list  list-filter">
<h5 class="list-title"><strong><a href="#">Price range</a></strong></h5>
<form role="form" class="form-inline ">
<div class="form-group col-sm-4 no-padding">
<input type="text" placeholder="$ 2000 " id="minPrice" class="form-control">
</div>
<div class="form-group col-sm-1 no-padding text-center hidden-xs"> -</div>
<div class="form-group col-sm-4 no-padding">
<input type="text" placeholder="$ 3000 " id="maxPrice" class="form-control">
</div>
<div class="form-group col-sm-3 no-padding">
<button class="btn btn-default pull-right btn-block-xs" type="submit">GO
</button>
</div>
</form>
<div style="clear:both"></div>
</div>
 
<div class="locations-list  list-filter">
<h5 class="list-title"><strong><a href="#">Seller</a></strong></h5>
<ul class="browse-list list-unstyled long-list">
<li><a href="sub-category-sub-location.html"><strong>All Ads</strong> <span class="count">228,705</span></a></li>
<li><a href="sub-category-sub-location.html">Business <span class="count">28,705</span></a></li>
<li><a href="sub-category-sub-location.html">Personal <span class="count">18,705</span></a></li>
</ul>
</div>
 
<div class="locations-list  list-filter">
<h5 class="list-title"><strong><a href="#">Condition</a></strong></h5>
<ul class="browse-list list-unstyled long-list">
<li><a href="sub-category-sub-location.html">New <span class="count">228,705</span></a>
</li>
<li><a href="sub-category-sub-location.html">Used <span class="count">28,705</span></a>
</li>
<li><a href="sub-category-sub-location.html">None </a></li>
</ul>
</div>
 
<div style="clear:both"></div>
</div>
 
</aside>
</div>
 
<div class="col-sm-9 page-content col-thin-left">
<div class="category-list">
<div class="tab-box ">
 
<ul class="nav nav-tabs add-tabs" id="ajaxTabs" role="tablist">
<li class="active"><a href="ajax/1.html" data-url="ajax/1.html" role="tab" data-toggle="tab">All Ads <span class="badge">228,705</span></a>
</li>
<li><a href="ajax/2.html" data-url="ajax/2.html" role="tab" data-toggle="tab">Business
<span class="badge">22,805</span></a></li>
<li><a href="ajax/3.html" data-url="ajax/3.html" role="tab" data-toggle="tab">Personal
<span class="badge">18,705</span></a></li>
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
 
<span class="cityName"> New York </span> <a href="#selectRegion" id="dropdownMenu1" data-toggle="modal"> <span class="caret"></span> </a></div>
</div>
<div class="pull-right col-xs-6 text-right listing-view-action"><span class="list-view active"><i class="  icon-th"></i></span> <span class="compact-view"><i class=" icon-th-list  "></i></span> <span class="grid-view "><i class=" icon-th-large "></i></span></div>
<div style="clear:both"></div>
</div>
 
 
<div class="mobile-filter-bar col-lg-12  ">
<ul class="list-unstyled list-inline no-margin no-padding">
<li class="filter-toggle">
<a class="">
<i class="  icon-th-list"></i>
Filters
</a>
</li>
<li>
<div class="dropdown">
<a data-toggle="dropdown" class="dropdown-toggle"><i class="caret "></i> Short
by </a>
<ul class="dropdown-menu">
<li><a href="#" rel="nofollow">Relevance</a></li>
<li><a href="#" rel="nofollow">Date</a></li>
<li><a href="#" rel="nofollow">Company</a></li>
</ul>
</div>
</li>
</ul>
</div>
<div class="menu-overly-mask"></div>
 
<div class="adds-wrapper">
<div class="tab-content">
<div class="tab-pane active" id="allAds">Loading...</div>
</div>
</div>
 
<div class="tab-box  save-search-bar text-center"><a href="#"> <i class=" icon-star-empty"></i>
Save Search </a></div>
</div>
<div class="pagination-bar text-center">
<ul class="pagination">
<li class="active"><a href="#">1</a></li>
<li><a href="#">2</a></li>
<li><a href="#">3</a></li>
<li><a href="#">4</a></li>
<li><a href="#">5</a></li>
<li><a href="#"> ...</a></li>
<li><a class="pagination-btn" href="#">Next &raquo;</a></li>
</ul>
</div>
 
<div class="post-promo text-center">
<h2> Do you get anything for sell ? </h2>
<h5>Sell your products online FOR FREE. It's easier than you think !</h5>
<a href="post-ads.html" class="btn btn-lg btn-border btn-post btn-danger">Post a Free Ad </a>
</div>
 
</div>
 
</div>
</div>

 
<%@include file="Footer.jsp" %>

