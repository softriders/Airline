<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Smart Fly</title>
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
		<br /> <br /> <br /> <b>
			Searched List | Smart Fly </b><br /> <br />
			
		

		<table border="1">
			<tr>
				<td class="heading">Travel ID</td>
				<td class="heading">Flight Number</td>
				<td class="heading">Time</td>
				<td class="heading">Price </td>

				<td class="heading">Buy </td>
			</tr>
			<c:forEach var="serchresult" items="${flightSerchResultList}">
				<tr>
					<td>${serchresult.travel_id}</td>
					<td>${serchresult.flight_id}</td>
					<td>${serchresult.time}</td>
					<td>${serchresult.price}</td>
					<td><a href="buyTicket?travel_id=${travel.travel_id}">Buy Ticket</a></td>
				</tr>
			</c:forEach>
			<tr><td colspan="9"><a href="registertravel">Search Again</a></td></tr>
		</table>

	</center>
</body>

<html>