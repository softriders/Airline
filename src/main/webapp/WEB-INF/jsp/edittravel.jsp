<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<title>Smart Fly | Edit Travel</title>
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
		<br /> <br /> <br /> <b>Edit Travel Details </b><br /> <br />
		<div>
			<form:form method="post" action="/updatetravel" modelAttribute="travel">
				<table>
					<tr>
						<td>Travel ID :</td>
						<td><form:input path="travel_id"
								value="${map.travel.travel_id}" />
						</td>
					</tr>
					<tr>
						<td>Flight ID :</td>
						<td><form:input path="flight_num" value="${map.travel.flight_num}" />
						</td>
					</tr>
					<tr>
						<td>Leaving From :</td>
						<td><spring:bind path="leaving_from">
								<select name="leaving_from">
									<c:forEach items='${map.cityList}' var='cityName'>
										<c:choose>
											<c:when test="${cityName eq map.travel.leaving_from}">
												<option value="${cityName}" selected="true">${cityName}</option>
											</c:when>
											<c:otherwise>
												<option value="${cityName}">${cityName}</option>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</select>
							</spring:bind></td>
					</tr>
					<tr>
						<td>Going To :</td>
						<td><spring:bind path="going_to">
								<select name="going_to">
									<c:forEach items='${map.cityList}' var='cityName'>
										<c:choose>
											<c:when test="${cityName eq map.travel.going_to}">
												<option value="${cityName}" selected="true">${cityName}</option>
											</c:when>
											<c:otherwise>
												<option value="${cityName}">${cityName}</option>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</select>
							</spring:bind></td>
					</tr>
					<tr>
						<td>Departure Date :</td>
						<td><form:input path="departure_date" value="${map.travel.departure_date}" />
						</td>
					</tr>
					<tr>
						<td>Departure Time :</td>
						<td><form:input path="departure_time" value="${map.travel.departure_time}" />
						</td>
					</tr>
					<tr>
						<td>Price Per Adult :</td>
						<td><form:input path="pricePerAdult" value="${map.travel.pricePerAdult}" />
						</td>
					</tr>
					<tr>
						<td>Price Per Child :</td>
						<td><form:input path="pricePerChild" value="${map.travel.pricePerChild}" />
						</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td><input type="submit" value="Save"/>
						</td>
					</tr>
				</table>
				<form:hidden path="travel_id" value="${map.travel.travel_id}" />

			</form:form>
		</div>
	</center>
</body>
</html>