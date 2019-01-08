<%@include file="MenuManage.jsp" %>
<%selectMenu=6; %>
<%@include file="Header.jsp" %>

<div class="main-container" style="padding : 0px;">
<div class="container">
<div class="row">
<div class="col-sm-5 login-box">
<div class="panel panel-default">
<div class="panel-intro text-center" style="padding: 30px 0 5px">
<h2 class="logo-title">
 
<span class="logo-icon"><i class="icon icon-search-1 ln-shadow-logo shape-0"></i> </span> BOOT<span>CLASSIFIED </span>
</h2>
</div>
<div class="panel-body"	>
<form role="form" action="LoginController" method="post">
<div class="form-group">
<label for="sender-email" class="control-label">Username:</label>
<div class="input-icon"><i class="icon-user fa"></i>
<input id="sender-email" type="text" placeholder="Username" class="form-control email" name="username">
</div>
</div>
<div class="form-group">
<label for="user-pass" class="control-label">Password:</label>
<div class="input-icon"><i class="icon-lock fa"></i>
<input type="password" class="form-control" placeholder="Password" id="user-pass" name="password">
</div>
</div>
<div class="form-group">
<!-- <a href="account-home.html" class="btn btn-primary  btn-block">Submit</a> -->
<input type="submit" name="actionButton" class="btn btn-primary  btn-block">
</div>
</form>
</div>
<div class="panel-footer">
<div class="checkbox pull-left">
<label> <input type="checkbox" value="1" name="remember" id="remember"> Keep me logged
in</label>
</div>
<p class="text-center pull-right"><a href="forgot-password.html"> Lost your password? </a>
</p>
<div style=" clear:both"></div>
</div>
</div>
<!-- <div class="login-box-btm text-center"> -->
<!-- <p> Don't have an account? <br> -->
<!-- <a href="signup.html"><strong>Sign Up !</strong> </a></p> -->
<!-- </div> -->
</div>
</div>
</div>
</div>

<%@include file="Footer.jsp" %>