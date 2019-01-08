<%@include file="Header.jsp"%>
<div class="container">
<div class="row">
<div class="col-md-12 page-content">
<div class="inner-box category-content">
<h2 class="title-2 uppercase"><strong> <i class="icon-docs"></i> Post a Free Classified
Ad</strong></h2>
<div class="row">
<div class="col-sm-12">
<form class="form-horizontal">
<fieldset>
 
<div class="form-group">
<label class="col-md-3 control-label">Category</label>
<div class="col-md-8">
<select name="category-group" id="category-group" class="form-control">
<option value="0" selected="selected"> Select a category...</option>
<option value="Vehicles" style="background-color:#E9E9E9;font-weight:bold;" disabled="disabled"> - Vehicles -
</option>
<option value="Cars"> Cars</option>
<option value="Commercial vehicles"> Commercial vehicles</option>
<option value="Motorcycles"> Motorcycles</option>
<option value="Motorcycle Equipment"> Car &amp; Motorcycle
Equipment
</option>
<option value="Boats"> Boats</option>
<option value="Vehicles"> Other Vehicles</option>
<option value="House" style="background-color:#E9E9E9;font-weight:bold;" disabled="disabled"> - House and Children -
</option>
<option value="Appliances"> Appliances</option>
<option value="Inside"> Inside</option>
<option value="Games"> Games and Clothing</option>
<option value="Garden"> Garden</option>
<option value="Multimedia" style="background-color:#E9E9E9;font-weight:bold;" disabled="disabled"> - Multimedia -
</option>
<option value="Telephony"> Telephony</option>
<option value="Image"> Image and sound</option>
<option value="Computers"> Computers and Accessories</option>
<option value="Video"> Video games and consoles</option>
<option value="Real" style="background-color:#E9E9E9;font-weight:bold;" disabled="disabled"> - Real Estate -
</option>
<option value="Apartment"> Apartment</option>
<option value="Home"> Home</option>
<option value="Vacation"> Vacation Rentals</option>
<option value="Commercial"> Commercial offices and local</option>
<option value="Grounds"> Grounds</option>
<option value="Houseshares"> Houseshares</option>
<option value="Other real estate"> Other real estate</option>
<option value="Services" style="background-color:#E9E9E9;font-weight:bold;" disabled="disabled"> - Services -
</option>
<option value="Jobs"> Jobs</option>
<option value="Job application"> Job application</option>
<option value="Services"> Services</option>
<option value="Price"> Price</option>
<option value="Business"> Business and goodwill</option>
<option value="Professional"> Professional equipment</option>
<option value="dropoff" style="background-color:#E9E9E9;font-weight:bold;" disabled="disabled"> - Extra -
</option>
<option value="Other"> Other</option>
</select>
</div>
</div>
 
<div class="form-group">
<label class="col-md-3 control-label">Add Type</label>
<div class="col-md-8">
<label class="radio-inline" for="radios-0">
<input name="radios" id="radios-0" value="Private" checked="checked" type="radio">
Private </label>
<label class="radio-inline" for="radios-1">
<input name="radios" id="radios-1" value="Business" type="radio">
Business </label>
</div>
</div>
 
<div class="form-group">
<label class="col-md-3 control-label" for="Adtitle">Ad title</label>
<div class="col-md-8">
<input id="Adtitle" name="Adtitle" placeholder="Ad title" class="form-control input-md" required="" type="text">
<span class="help-block">A great title needs at least 60 characters. </span>
</div>
</div>
 
<div class="form-group">
<label class="col-md-3 control-label" for="textarea">Describe ad </label>
<div class="col-md-8">
<textarea class="form-control" id="textarea" name="textarea">Describe
                                                    what makes your ad unique</textarea>
</div>
</div>
 
<div class="form-group">
<label class="col-md-3 control-label" for="Price">Price</label>
<div class="col-md-4">
<div class="input-group"><span class="input-group-addon">$</span>
<input id="Price" name="Price" class="form-control" placeholder="placeholder" required="" type="text">
</div>
</div>
<div class="col-md-4">
<div class="checkbox">
<label>
<input type="checkbox">
Negotiable </label>
</div>
</div>
</div>
 
<div class="form-group">
<label class="col-md-3 control-label" for="textarea"> Picture </label>
<div class="col-md-8">
<div class="mb10">
<input id="input-upload-img1" type="file" class="file" data-preview-file-type="text">
</div>
<div class="mb10">
<input id="input-upload-img2" type="file" class="file" data-preview-file-type="text">
</div>
<div class="mb10">
<input id="input-upload-img3" type="file" class="file" data-preview-file-type="text">
</div>
<div class="mb10">
<input id="input-upload-img4" type="file" class="file" data-preview-file-type="text">
</div>
<div class="mb10">
<input id="input-upload-img5" type="file" class="file" data-preview-file-type="text">
</div>
<p class="help-block">Add up to 5 photos. Use a real image of your
product, not catalogs.</p>
</div>
</div>
<div class="content-subheading"><i class="icon-user fa"></i> <strong>Seller
information</strong></div>
 
<div class="form-group">
<label class="col-md-3 control-label" for="textinput-name">Name</label>
<div class="col-md-8">
<input id="textinput-name" name="textinput-name" placeholder="Seller Name" class="form-control input-md" required="" type="text">
</div>
</div>
 
<div class="form-group">
<label class="col-md-3 control-label" for="seller-email"> Seller
Email</label>
<div class="col-md-8">
<input id="seller-email" name="seller-email" class="form-control" placeholder="Email" required="" type="text">
<div class="checkbox">
<label>
<input type="checkbox" value="">
<small> Hide the phone number on this ads.</small>
</label>
</div>
</div>
</div>
 
<div class="form-group">
<label class="col-md-3 control-label" for="seller-Number">Phone
Number</label>
<div class="col-md-8">
<input id="seller-Number" name="seller-Number" placeholder="Phone Number" class="form-control input-md" required="" type="text">
</div>
</div>
 
<div class="form-group">
<label class="col-md-3 control-label" for="seller-Location">Location</label>
<div class="col-md-8">
<select id="seller-Location" name="seller-Location" class="form-control">
<option value="1">Option one</option>
<option value="2">Option two</option>
</select>
</div>
</div>
 
<div class="form-group">
<label class="col-md-3 control-label" for="seller-area">City</label>
<div class="col-md-8">
<select id="seller-area" name="seller-area" class="form-control">
<option value="1">Option one</option>
<option value="2">Option two</option>
</select>
</div>
</div>
<div class="well">
<h3><i class=" icon-certificate icon-color-1"></i> Make your Ad Premium
</h3>
<p>Premium ads help sellers promote their product or service by getting
their ads more visibility with more
buyers and sell what they want faster. <a href="help.html">Learn
more</a></p>
<div class="form-group">
<table class="table table-hover checkboxtable">
<tr>
<td>
<div class="radio">
<label>
<input type="radio" name="optionsRadios" id="optionsRadios0" value="option0" checked>
<strong>Regular List </strong> </label>
</div>
</td>
<td><p>$00.00</p></td>
</tr>
<tr>
<td>
<div class="radio">
<label>
<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">
<strong>Urgent Ad </strong> </label>
</div>
</td>
<td><p>$10.00</p></td>
</tr>
<tr>
<td>
<div class="radio">
<label>
<input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
<strong>Top of the Page Ad </strong> </label>
</div>
</td>
<td><p>$20.00</p></td>
</tr>
<tr>
<td>
<div class="radio">
<label>
<input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
<strong>Top of the Page Ad + Urgent Ad </strong>
</label>
</div>
</td>
<td><p>$40.00</p></td>
</tr>
<tr>
<td>
<div class="form-group">
<div class="col-md-8">
<select class="form-control" name="Method" id="PaymentMethod">
<option value="2">Select Payment Method</option>
<option value="3">Credit / Debit Card</option>
<option value="5">Paypal</option>
</select>
</div>
</div>
</td>
<td><p><strong>Payable Amount : $40.00</strong></p></td>
</tr>
</table>
</div>
</div>
 
<div class="form-group">
<label class="col-md-3 control-label">Terms</label>
<div class="col-md-8">
<label class="checkbox-inline" for="checkboxes-0">
<input name="checkboxes" id="checkboxes-0" value="Remember above contact information." type="checkbox">
Remember above contact information. </label>
</div>
</div>
 
<div class="form-group">
<label class="col-md-3 control-label"></label>
<div class="col-md-8"><a href="posting-success.html" id="button1id" class="btn btn-success btn-lg">Submit</a></div>
</div>
</fieldset>
</form>
</div>
</div>
</div>
</div>
 

 
</div>
 
</div>
<%@include file="Footer.jsp"%>
