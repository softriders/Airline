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
	<center>
		<br /> <br /> <br /> <b>Travel
			List | Smart Fly </b><br /> <br />
			
		<table border="1">
			<tr>
				<td class="heading">Travel ID</td>
				<td class="heading">Flight Number</td>
				<td class="heading">Leaving From</td>
				<td class="heading">Going To</td>
				<td class="heading">Departure Date</td>
				<td class="heading">Departure Time</td>
				<td class="heading">Price Per Adult</td>
				<td class="heading">Price Per Child</td>
				<td class="heading">Edit</td>
				<td class="heading">Delete</td>
			</tr>
			<c:forEach var="travel" items="${travelList}">
				<tr>
					<td>${travel.travel_id}</td>
					<td>${travel.flight_num}</td>
					<td>${travel.leaving_from}</td>
					<td>${travel.going_to}</td>
					<td>${travel.departure_date}</td>
					<td>${travel.departure_time}</td>
					<td>${travel.pricePerAdult}</td>
					<td>${travel.pricePerChild}</td>
					<td><a href="edittravel?id=${travel.travel_id}">Edit</a></td>
					<td><a href="deletetravel?id=${travel.travel_id}">Delete</a></td>
				</tr>
			</c:forEach>
			<tr><td colspan="9"><a href="registertravel">Add a Travel</a></td></tr>
		</table>

	</center>
</body>
</html>