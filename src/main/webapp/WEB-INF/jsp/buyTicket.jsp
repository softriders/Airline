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
	<a href="http://localhost:8080/Airline/">Home</a>
	<h1 style="text-align: center;">Enter Your Details</h1>
	<hr></hr>
	<div style="text-align:center" class="col-md-4 col-md-offset-4 well">
	
			<form:form method="post" action="/insertpassenger" modelAttribute="passenger">
	
				ID Number: <input type="text" name="id"><br>
				
				Full Name: <input type="text" name="name"><br>
				
				Address: <input type="text" name="address"><br>
				
				TP Number: <input type="text" name="mobile_num"><br>
				
				Bank Card Number: <input type="text" name=""><br>
				
				 <input type="submit" value="Submit">
				
			</form:form>
	</div>

</body>
</html>