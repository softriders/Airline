<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
    <head>
        <title>Testing</title>
				
		<link rel="stylesheet" href="resources/css/home-style.css" type="text/css" />		
        <link rel="stylesheet" href="resources/css/bootstrap.css" type="text/css" />
        <link rel="stylesheet" href="resources/css/bootstrap.min.css" type="text/css" />
		<link rel="stylesheet" href="resources/css/font-awesome.css" type="text/css" />
		
		
        <script src="resources/js/jquery-1.11.1.min.js" type="text/javascript"></script>
        <script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
    
        <script type="text/javascript">
            $(document).ready(function() {
                $('input[type="radio"]').click(function() {
                    if ($(this).attr("value") === "Return") {
                        $(".visibility-js").show("fast");
                    }
                    if ($(this).attr("value") === "Oneway") {
                        $(".visibility-js").hide("fast");

                    }
                });well
            });

        </script>
		

    </head>

    <body class="body-style"> 
		<h1 class="heading1">Airline Reservation System</h1>
		<ul class="nav nav-pills">
			  <li class="active"><a href="#"><i class="fa fa-home"></i>Home</a></li>
			  <li><a href="#">Reservations</a></li>
			  <li><a href="#">About Us</a></li>
		</ul>
		<br>

       <!--  <h1 class="alert alert-info">Testing</h1>
        <p class="alert alert-warning">Testing Paragraph</p> -->

       

        <div class="form-style well1 col-md-12">
            <div class="col-md-9">
			<h2 class="col-md-offset-2">Enter Details</h2>

            <form action="/Airline/serchFlights" modelAttribute="searchTravel" method="post" class="form-horizontal" role="form">

                <div class="form-group">
                    <label class="col-sm-2 control-label">Departure From</label>
                    <div class="col-sm-5">
                        <select name="departure" id="origin" class="col-sm-12 form-control">
                            <option selected value="Colombo(SRI)">Colombo(SRI)</option>
                            <option value="Maththala(SRI)">Maththala(SRI)</option>
                            <option value="Cidny(AUS)">Cidny(AUS)</option>
                            <option value="London(ENG)">London(ENG)</option>
                        </select> 
                    </div>            
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Going To</label>
                    <div class="col-sm-5">
                        <select name="goingto" id="origin" class="col-sm-12 form-control">
                            <option selected value="Colombo(SRI)">Colombo(SRI)</option>
                            <option value="Maththala(SRI)">Maththala(SRI)</option>
                            <option value="Cidny(AUS)">Cidny(AUS)</option>
                            <option value="London(ENG)">London(ENG)</option>
                        </select>     
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Journey Type</label>
                    <div class="col-sm-5">
                        <div class="radio">
                            
                            <label class="col-sm-5" style="font-size:18px"> 
                                <input name="journeyType" value="Oneway" type="radio" checked="checked"> One Way
							</label>
							<label class="col-sm-5" style="font-size:18px">
                                <input name="journeyType" value="Return" type="radio"> Return
							</label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Departure Date</label>
                    <div class="col-sm-5">
                        <input name="departuredate" type="date" class="form-control"/>
                    </div>
                </div>
                <div class="form-group visibility-js">
                    <label class="col-sm-2 control-label">Return Date</label>
                    <div class="col-sm-5">
                        <input name="returndate" type="date" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Children</label>
                    <div class="col-sm-5">
                        <input name="children" type="number" min="0" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Adults</label>
                    <div class="col-sm-5">
                        <input name="adults" type="number" min="0" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label"></label>
                    <div class="col-sm-5">
                        <button type="submit" class="btn btn-primary">Search Flights</button>
                    </div>
                </div>
            </form>
			</div>
			<div class="col-md-3">
				<h2 >Log in</h2>

				<form role="form">
				  <div class="form-group">
					<label for="exampleInputEmail1">Email address</label>
					<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
				  </div>
				  <div class="form-group">
					<label for="exampleInputPassword1">Password</label>
					<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
				  </div>
				 <div class="checkbox">
					<label>
					  <input type="checkbox"> Remember me
					</label>
				  </div>
				  <button type="submit" class="btn btn-primary">Submit</button>
				</form><br>
				<form action="/Airline/getTravelList" method="post" role="form">
					<button type="submit" class="btn btn-success">List of All Travel</button>
				</form>
				<div>
				
				<form action="/Airline/getPassengerList" method="post" role="form">
					<button type="submit" class="btn btn-success">List of All Passenger</button>
				</form>
				
				</div>
			</div>
        </div>
    </body>


</html>
