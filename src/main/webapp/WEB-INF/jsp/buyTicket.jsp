<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>		
<title>Buy Ticket</title>

		<link rel="stylesheet" href="../../resources/css/bootstrap.css" type="text/css" />
        <link rel="stylesheet" href="../../resources/css/bootstrap.min.css" type="text/css" />
		<link rel="stylesheet" href="../../resources/css/font-awesome.css" type="text/css" />

        <script src="../../resources/js/jquery-1.11.1.min.js" type="text/javascript"></script>
        <script src="../../resources/js/bootstrap.min.js" type="text/javascript"></script>

</head>

<body>
	<h1 style="text-align: center;">Enter Your Details</h1>
	
	<div class="col-md-4 col-md-offset-4 well">
	<form class="form-horizontal" role="form">
	  <div class="form-group">
		<label class="col-sm-2 control-label">NIC Number</label>
		<div class="col-sm-10">
		  <input type="text" class="form-control">
		</div>
	  </div>
	  <div class="form-group">
		<label class="col-sm-2 control-label">Name</label>
		<div class="col-sm-10">
		  <input type="text" class="form-control">
		</div>
	  </div>
	  <div class="form-group">
		<label class="col-sm-2 control-label">Address</label>
		<div class="col-sm-10">
		  <input type="text" class="form-control">
		</div>
	  </div>
	  <div class="form-group">
		<label class="col-sm-2 control-label">TP Number</label>
		<div class="col-sm-10">
		  <input type="text" class="form-control">
		</div>
	  </div>
	  <div class="form-group">
		<label class="col-sm-2 control-label">Payment Method</label>
		<div class="col-sm-10">
			<select name="paymentMethod" id="paymentMethod" class="col-sm-12 form-control">
				<option selected value="payPal">PayPal</option>
				<option value="visa">Visa</option>
				<option value="masterCard">Master Card</option>
				<option value=" americanExpress">American Express</option>
			</select> 
        </div>  
	  </div>
	<div class="form-group">
		<label class="col-sm-2 control-label">Card Number</label>
		<div class="col-sm-10">
		  <input type="text" class="form-control">
		</div>
	  </div>

	  <div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
		  <button type="submit" class="btn btn-Primary">Buy Ticket</button>
		</div>
	  </div>
	</form>
	</div>

</body>
</html>