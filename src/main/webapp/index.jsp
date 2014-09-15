<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
    <head>
        <title>Testing</title>

        <link rel="stylesheet" href="resources/css/bootstrap.css" type="text/css" />
        <link rel="stylesheet" href="resources/css/bootstrap.min.css" type="text/css" />

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
                });
            });

        </script>


    </head>

    <body> 

        <h1 class="alert alert-info">Testing</h1>
        <p class="alert alert-warning">Testing Paragraph</p>

        <form action="/Airline/getTravelList" method="post" role="form">
            <button type="submit" class="btn btn-default">List of All Travel</button>
        </form>

        <div>
            <h3>Enter Details</h3>

            <form action="/Airline/serchFlights" modelAttribute="searchTravel" method="post" class="form-horizontal" role="form">

                <div class="form-group">
                    <label class="col-sm-2 control-label">Departure From</label>
                    <div class="col-sm-3">
                        <select name="departure" id="origin" class="col-sm-12">
                            <option selected value="Colombo(SRI)">Colombo(SRI)</option>
                            <option value="Maththala(SRI)">Maththala(SRI)</option>
                            <option value="Cidny(AUS)">Cidny(AUS)</option>
                            <option value="London(ENG)">London(ENG)</option>
                        </select> 
                    </div>            
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Going To</label>
                    <div class="col-sm-3">
                        <select name="goingto" id="origin" class="col-sm-12">
                            <option selected value="Colombo(SRI)">Colombo(SRI)</option>
                            <option value="Maththala(SRI)">Maththala(SRI)</option>
                            <option value="Cidny(AUS)">Cidny(AUS)</option>
                            <option value="London(ENG)">London(ENG)</option>
                        </select>     
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Journey Type</label>
                    <div class="col-sm-3">
                        <div class="radio">
                            <label class="col-sm-6" style="font-size:18px">
                                <input name="journeyType" value="Return" type="radio" checked="checked"> Return</label>
                            <label class="col-sm-6" style="font-size:18px"> 
                                <input name="journeyType" value="Oneway" type="radio"> One Way</label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Departure Date</label>
                    <div class="col-sm-3">
                        <input name="departuredate" type="date" class="form-control"/>
                    </div>
                </div>
                <div class="form-group visibility-js">
                    <label class="col-sm-2 control-label">Return Date</label>
                    <div class="col-sm-3">
                        <input name="returndate" type="date" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Children</label>
                    <div class="col-sm-3">
                        <input name="children" type="number" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Adults</label>
                    <div class="col-sm-3">
                        <input name="adults" type="number" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label"></label>
                    <div class="col-sm-3">
                        <button type="submit" class="btn btn-primary">Search Flights</button>
                    </div>
                </div>
            </form>
        </div>
    </body>


</html>
