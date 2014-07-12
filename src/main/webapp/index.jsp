<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<h1>Testing</h1>
</head>

<body>
	<p>Testing Paragraph</p>

	<form action="/Test/getTravelList" method="post">
		<button type="submit" >List of All Travel</button>
	</form>

	<div>
		<form action="/Test/serchFlights" method="post">
		<p>Enter Details</p>
	<p>	
		<div>  
             <span>Departure From</span>
             <select name="origin" id="origin" style="width: 160px;">
	               			<option selected value="COL">Colombo (SL)</option>
	               			<option value="MAT">Maththala (SL)</option>
	               			<option value="SID">Sidney(AUS)</option>
	               			<option value="LON">London (ENG)</option>
             </select>             
           </div>
     </p>
     
     <p>
           <div>  
             <span>Going To</span>
             <select name="origin" id="origin" style="width: 160px;">
	               			<option selected value="COL">Colombo (SL)</option>
	               			<option value="MAT">Maththala (SL)</option>
	               			<option value="SID">Sidney(AUS)</option>
	               			<option value="LON">London (ENG)</option>
             </select>             
           </div>
        </p> 
        <p>  
           <div > 
			<span>Journy Type</span>
				<input selected name="journyType" value="Return" type="radio"> Return 
				<input name="journyType" value="Oneway" type="radio"> One Way
		
			</div>
         </p> 
         <p>  
           	<div>
           <span>Departure Date</span>
			<input value="07-05-2014" name="departureDate" id="departureDate"
					type="text" size="30" style="width: 160px;" type="text"/>
					</div>
		</p>  
		<p>  
			<div>
           <span>Return Date</span>
			<input value="07-05-2014" name="returnDate" id="returnDate"
					type="text" size="30" style="width: 160px;" type="text"/>
					</div>
					</p>
					<button type="submit" >Search Flights</button>
		</form>
	</div>

</body>


</html>