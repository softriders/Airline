
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Search for a flight | Spring DI Hello World</title>
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
	text-align: left;
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
		<br /> <br /> <br /> <b>Add a Travel | Flight adding form </b> <br />
		<br />
		<div>
			<form:form method="post" action="/travelinsert" modelAttribute="travel">
				<table>
					<tr>
						<td>Travel ID :</td>
						<td><form:input path="travel_id" /></td>
					</tr>
					<tr>
						<td>Flight ID :</td>
						<td><form:input path="flight_num" /></td>
					</tr>
					<tr>
						<td>Leaving From :</td>
						<td><form:select path="leaving_from"
								items="${map.cityList}" /></td>
					</tr>
					<tr>
						<td>Going To :</td>
						<td><form:select path="going_to"
								items="${map.cityList}" /></td>
					</tr>
					
					<tr>
						<td>Departure Date :</td>
						<td>
						<form:input  path="departure_date" />
						</td>
					</tr>
					<tr>
						<td>Departure Time :</td>
						<td><form:input  path="departure_time"/> </td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td><input type="submit" value="Save" /></td>
					</tr>
					<tr>
						
						<td colspan="2"><a href="getTravelList">Click Here to See Travel List</a></td>
					</tr>
				</table>
			</form:form>
		</div>
	</center>
</body>
</html>
