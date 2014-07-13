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

	<form action="/Test/getTravelList" method="post" >
		<button type="submit" >List of All Travel</button>
	</form>

	<div>
		<form action="/Test/serchFlights" modelAttribute="searchTravel" method="post" >
	<p>
		Enter Details
	</p>		
	<p>	
		<div>  
             <span>Departure From</span>
             <select name="departure" id="origin" style="width: 160px;">
	               			<option selected value="Colombo(SRI)">Colombo(SRI)</option>
	               			<option value="Maththala(SRI)">Maththala(SRI)</option>
	               			<option value="Cidny(AUS)">Cidny(AUS)</option>
	               			<option value="London(ENG)">London(ENG)</option>
             </select>             
           </div>
     </p>     
     <p>
           <div>  
             <span>Going To</span>
             <select name="goingto" id="origin" style="width: 160px;">
	               			<option selected value="Colombo(SRI)">Colombo(SRI)</option>
	               			<option value="Maththala(SRI)">Maththala(SRI)</option>
	               			<option value="Cidny(AUS)">Cidny(AUS)</option>
	               			<option value="London(ENG)">London(ENG)</option>
             </select>             
           </div>
        </p> 
        <p>  
           <div > 
			<span>Journy Type</span>
				<input selected name="jurnytype" value="Return" type="radio"> Return 
				<input name="journyType" value="Oneway" type="radio"> One Way
		
			</div>
         </p> 
         <p>  
           	<div>
           <span>Departure Date</span>
			<input value="07-05-2014" name="departuredate" id="departureDate"
					type="text" size="30" style="width: 160px;" type="text"/>
					</div>
		</p>  
		<p>  
			<div>
           <span>Return Date</span>
			<input value="07-05-2014" name="returndate" id="returnDate"
					type="text" size="30" style="width: 160px;" type="text"/>
					</div>
		</p>
		 <p>  
           	<div>
           <span>Children</span>
			<input value="0" name="children" id="children"
					type="text" size="30" style="width: 160px;" type="text"/>
					</div>
		</p>  
		<p>  
           	<div>
           <span>Adults</span>
			<input value="1" name="adults" id="adults"
					type="text" size="30" style="width: 160px;" type="text"/>
					</div>
		</p>  
					<button type="submit" >Search Flights</button>
		</form>
	</div>

</body>


</html>