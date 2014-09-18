<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Travel List | Spring DI Hello World</title>
<style>
body {
	font-size: 20px;
	color: teal;
	font-family: Calibri;
}

td {
	font-size: 15px;
	color: black;
	width: 100px;
	height: 22px;
	text-align: center;
}
.heading {
	font-size: 18px;
	color: white;
	font: bold;
	background-color: orange;
	border: thick;
}
</style>
</head>
<body>
<a href="http://localhost:8080/Airline/">Home</a>
	<center>
		<br /> <br /> <br /> <b>Travel
			Passenger List | Smart Fly </b><br /> <br />
		<hr></hr>
		<table border="1">
			<tr>
				<td class="heading">Passenger ID</td>
				<td class="heading">Passenger Name</td>
				<td class="heading">Passenger Address</td>
				<td class="heading">Passenger Mobile</td>
				<td class="heading">Booking ID</td>
				<td class="heading">Edit</td>
				<td class="heading">Delete</td>
			</tr>
			<c:forEach var="passenger" items="${passengerList}">
				<tr>
					<td>${passenger.id}</td>
					<td>${passenger.name}</td>
					<td>${passenger.address}</td>
					<td>${passenger.mobile_num}</td>
					<td>${passenger.booking_id}</td>
					<td><a href="editpassenger?id=${passenger.id}">Edit</a></td>
					<td><a href="deletepassenger?id=${passenger.id}">Delete</a></td>
				</tr>
			</c:forEach>
			<tr><td colspan="9"><a href="registerpassenger">Add a Passenger</a></td></tr>
		</table>

	</center>
</body>
</html>