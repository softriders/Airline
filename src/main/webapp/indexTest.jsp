<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=us-ascii" />

<link rel="stylesheet" type="text/css" media="only screen and (max-device-width: 480px)" href="resources/css/bootstrap-mobile.css" />

<title>reservation</title>
<link rel='stylesheet' id='suffusion-google-fonts-css'  href='http://fonts.googleapis.com/css?family=Open+Sans:400,400italic,700,700italic' type='text/css' media='all' />
<link rel="stylesheet" href="resources/css/bootstrap.css" type="text/css" />
<link rel="stylesheet" href="resources/css/font-awesome.css"  type="text/css" />
<link rel="stylesheet" href="resources/css/datepicker.css" type="text/css" />
<link rel="stylesheet" href="resources/css/prettify.css" type="text/css" />
<script src="resources/js/prettify.js" type="text/javascript"></script>
<script src="resources/js/jquery.js" type="text/javascript"></script>
<script src="resources/js/bootstrap-datepicker.js" type="text/javascript"></script>
<script src="resources/js/bootstrap-typeahead.js" type="text/javascript"></script>
<script src="resources/js/urchin.js" type="text/javascript"></script>
<script src="resources/js/bootstrap-tooltip.js" type="text/javascript"></script>
<script src="resources/js/bootstrap-modal.js" type="text/javascript"></script>
<script type="text/javascript" src="resources/js/jquery.tmpl.min.js"></script>

  <link rel="stylesheet" href="resources/css/app.css">
  <link rel="stylesheet" href="resources/css/bootstrap.css">
<script type="text/javascript">
	//         
	$(function() {
		window.prettyPrint && prettyPrint();
		$('#startDate').datepicker({
			format : 'mm-dd-yyyy'
		});
		$('#endDate').datepicker({
			format : 'mm-dd-yyyy'
		});
		
	});
	//
	jQuery().ready(function($) {
        $('#numberOfPassengers').spinner();
        
	});

</script>
<script type="text/javascript">
	//         
	_uacct = "UA-106117-1";
	urchinTracker();
	//
</script>

<style>
/* Basics */
html, body {
    width: 100%;
    height: 100%;
    font-family: "Helvetica Neue", Helvetica, sans-serif;
    color: #444;
    -webkit-font-smoothing: antialiased;
    background: #f0f0f0;
}
#container {
    position: fixed;
    width: 340px;
    height: 280px;
    top: 50%;
    left: 85%;
    margin-top: -140px;
    margin-left: -170px;
	background: #fff;
    border-radius: 3px;
    border: 1px solid #ccc;
    box-shadow: 0 1px 2px rgba(0, 0, 0, .1);
	
}
form {
    margin: 0 auto;
    margin-top: 20px;
}
label {
    color: #555;
    display: inline-block;
    margin-left: 18px;
    padding-top: 10px;
    font-size: 14px;
}
p a {
    font-size: 11px;
    color: #aaa;
    float: right;
    margin-top: -13px;
    margin-right: 20px;
 -webkit-transition: all .4s ease;
    -moz-transition: all .4s ease;
    transition: all .4s ease;
}
p a:hover {
    color: #555;
}
input {
    font-family: "Helvetica Neue", Helvetica, sans-serif;
    font-size: 12px;
    outline: none;
}
input[type=text],
input[type=password] {
    color: #777;
    padding-left: 10px;
    margin: 10px;
    margin-top: 12px;
    margin-left: 18px;
    width: 290px;
    height: 35px;
	border: 1px solid #c7d0d2;
    border-radius: 2px;
    box-shadow: inset 0 1.5px 3px rgba(190, 190, 190, .4), 0 0 0 5px #f5f7f8;
-webkit-transition: all .4s ease;
    -moz-transition: all .4s ease;
    transition: all .4s ease;
	}
input[type=text]:hover,
input[type=password]:hover {
    border: 1px solid #b6bfc0;
    box-shadow: inset 0 1.5px 3px rgba(190, 190, 190, .7), 0 0 0 5px #f5f7f8;
}
input[type=text]:focus,
input[type=password]:focus {
    border: 1px solid #a8c9e4;
    box-shadow: inset 0 1.5px 3px rgba(190, 190, 190, .4), 0 0 0 5px #e6f2f9;
}
#lower {
    background: #ecf2f5;
    width: 100%;
    height: 69px;
    margin-top: 20px;
	  box-shadow: inset 0 1px 1px #fff;
    border-top: 1px solid #ccc;
    border-bottom-right-radius: 3px;
    border-bottom-left-radius: 3px;
}
input[type=checkbox] {
    margin-left: 20px;
    margin-top: 30px;
}
.check {
    margin-left: 3px;
	font-size: 11px;
    color: #444;
    text-shadow: 0 1px 0 #fff;
}
input[type=submit] {
    float: right;
    margin-right: 20px;
    margin-top: 20px;
    width: 80px;
    height: 30px;
font-size: 14px;
    font-weight: bold;
    color: #fff;
    background-color: #acd6ef; /*IE fallback*/
    background-image: -webkit-gradient(linear, left top, left bottom, from(#acd6ef), to(#6ec2e8));
    background-image: -moz-linear-gradient(top left 90deg, #acd6ef 0%, #6ec2e8 100%);
    background-image: linear-gradient(top left 90deg, #acd6ef 0%, #6ec2e8 100%);
    border-radius: 30px;
    border: 1px solid #66add6;
    box-shadow: 0 1px 2px rgba(0, 0, 0, .3), inset 0 1px 0 rgba(255, 255, 255, .5);
    cursor: pointer;
}
input[type=submit]:hover {
    background-image: -webkit-gradient(linear, left top, left bottom, from(#b6e2ff), to(#6ec2e8));
    background-image: -moz-linear-gradient(top left 90deg, #b6e2ff 0%, #6ec2e8 100%);
    background-image: linear-gradient(top left 90deg, #b6e2ff 0%, #6ec2e8 100%);
}
input[type=submit]:active {
    background-image: -webkit-gradient(linear, left top, left bottom, from(#6ec2e8), to(#b6e2ff));
    background-image: -moz-linear-gradient(top left 90deg, #6ec2e8 0%, #b6e2ff 100%);
    background-image: linear-gradient(top left 90deg, #6ec2e8 0%, #b6e2ff 100%);
}
</style>

</head>

<body>
<form id="searchForm" action="/Test/getTravelList" modelAttribute="travel" method="post">
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a class="brand" href="/air">AIR LINES INTERNATIONAL TRAVEL</a>
				<div class="nav-collapse">
					<ul class="nav pills">
						<li class="active"><a
							href="#"
							title="Contact"><i class="icon-envelope"></i> Contact</a></li>
					</ul>


					<!---start right toolbar-->
					<ul class="nav pull-right">
						<li><a href="#">Logged in as krishna</a></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#"> <!--Setting--> <b
								class="caret"></b>
						</a>
							<ul class="dropdown-menu">
								<li><a
									href="#"
									title="Add Product Page"><i class="icon-user"></i>&nbsp;Profile
										Setting</a></li>
								<li class="divider"></li>
								<li><a
									href="#"><i
										class="icon-off"></i>&nbsp;Logout</a></li>
							</ul></li>
					</ul>
					<!---end right toolbar-->

				</div>
			</div>
		</div>
	</div>

<br/>
<br/>
<br/>
<br/>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span3">
				<div class="well sidebar-nav">
					<ul class="nav nav-list">
						<li class="nav-header">Book Tickets</li>						
							

						<div class="row-fluid">
	<p>		
		<div class="controls">  
             <span class="label label-info">Leaving From</span><a href="#" rel="tooltip" title="Select starting airport" > ?</a>
             
             <select name="origin" id="origin" style="width: 160px;">
	               			<option selected value="COL">Colombo (SL)</option>
	               			<option value="MAT">Maththala (SL)</option>
	               			<option value="SID">Sidney(AUS)</option>
	               			<option value="LON">London (ENG)</option>
             </select>             
           </div>
           
	</p>				

	<p>
		<div class="controls">  
             <span class="label label-info">Going To</span><a href="#" rel="tooltip" title="Select ending airport"> ?</a>
			 
             <select name="origin" id="origin" style="width: 160px;">
	               			<option selected value="COL">Colombo (SL)</option>
	               			<option value="MAT">Maththala (SL)</option>
	               			<option value="SID">Sidney(AUS)</option>
	               			<option value="LON">London (ENG)</option>
             </select>                        
           </div>           
           
	</p>	
	
	<p>
		<div class="controls"> 
		<span class="label label-info">Journy Type</span><a href="#" rel="tooltip" title="Select Journy Type"> ?</a>
		<br></br>
				<input selected name="journyType" value="return" type="radio"> Return 
				<input name="journyType" value="oneway" type="radio"> One Way
		
		</div>
	
	</p>			

	<p>
		<span class="label label-info">Departure Date</span><a href="#" rel="tooltip" title="Select departure date"> ?</a><br>
				
			<input value="06-27-2014" name="startDate" id="startDate"
					type="text" size="30" style="width: 160px;" type="text"/>			
		<br>									
	</p>

	<p>
		<span class="label label-info">Return Date</span><a href="#" rel="tooltip" title="Select return date"> ?</a><br>
				
				
			<input value="07-05-2014" name="returnDate" id="endDate"
					type="text" size="30" style="width: 160px;" type="text"/>			
		<br>
	</p>

	<p>
		<span class="label label-info">Number of Passengers</span><a href="#" rel="tooltip" title="Select number of passengers"> ?</a><br>
		
		<!--	<input name="numberOfPassengers" id="numberOfPassengers"
				type="number" size="30" style="width: 160px;"  
				step="1" value="1"/>	-->	
				
				<select name="children" id="children" style="width: 60px;">
					<option value="0">0</option>
  					<option value="1">1</option>
  					<option value="2">2</option>
  					<option value="3">3</option>
 					 <option value="4">4</option>
 					 <option value="5">5</option>
 					 <option value="6">6</option>
				</select>
				Children
				<br></br>
				<select name="adults" id="adults" style="width: 60px;">
  					<option selected value="1">1</option>
  					<option value="2">2</option>
  					<option value="3">3</option>
 					 <option value="4">4</option>
 					 <option value="5">5</option>
 					 <option value="6">6</option>
				</select>
				Adults
				
		</p>
		<button type="submit" class="btn" id="searchResults">Search</button>
 	</div>	
 	
 	        <center>
   <div id="container">
            <li class="nav-header">Sing Up</li>		
            <form action="/Test/adminlogin" method="post" >
            <span class="label label-info">Username</span><a href="#" rel="tooltip" title="Username"> ?</a><br>
            <input type="text" name="username">
            <span class="label label-info">Password</span><a href="#" rel="tooltip" title="Username"> ?</a><br>
            <input type="password" name="password">
         <div id="lower">
             <input type="checkbox"><label class="check" for="checkbox">Keep me logged in</label>
            <input type="submit" value="Login">
         </div>
            </form>
   </div>
        </center>
 	
 	
 	
					</ul>
				</div>
				<!--/.well -->
			</div>
			<!--/span-->

		<table border="1">
			<tbody id="dataRegion"></tbody>
		</table>

		</div>
		<!--/row-->
		<hr>
		<a href="#myModal" data-toggle="modal" class="btn-small">				
				Version 1: Current changes
		</a>
		<div class="modal" id="myModal" style="display:none;">
		  <div class="modal-header">
		    <a class="close" data-dismiss="modal">×</a>
		    <h3>Current state of application</h3>
		  </div>
		  <div class="modal-body">
		    <p>Version 1:</p>
		    <p>The following changes are implemented: Flight search, flight selection, display deals based on selected flights </p>
		  </div>
		  <div class="modal-footer">
		    <a href="#" class="btn" data-dismiss="modal">Close</a>
		  </div>
		</div>
	</div>
</form>
<div class="datepicker dropdown-menu">
	<div style="display: block;" class="datepicker-days">
		<table class=" table-condensed">
			<thead>
				<tr>
					<th class="prev"></th>
					<th colspan="5" class="switch">June 2012</th>
					<th class="next"></th>
				</tr>

				<tr>
					<th class="dow">Su</th>
					<th class="dow">Mo</th>
					<th class="dow">Tu</th>
					<th class="dow">We</th>
					<th class="dow">Th</th>
					<th class="dow">Fr</th>
					<th class="dow">Sa</th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td class="day old">27</td>
					<td class="day old">28</td>
					<td class="day old">29</td>
					<td class="day old">30</td>
					<td class="day old">31</td>
					<td class="day">1</td>
					<td class="day">2</td>
				</tr>

				<tr>
					<td class="day">3</td>
					<td class="day">4</td>
					<td class="day">5</td>
					<td class="day">6</td>
					<td class="day">7</td>
					<td class="day">8</td>
					<td class="day">9</td>
				</tr>

				<tr>
					<td class="day">10</td>
					<td class="day">11</td>
					<td class="day">12</td>
					<td class="day">13</td>
					<td class="day">14</td>
					<td class="day">15</td>
					<td class="day">16</td>
				</tr>

				<tr>
					<td class="day">17</td>
					<td class="day">18</td>
					<td class="day">19</td>
					<td class="day">20</td>
					<td class="day">21</td>
					<td class="day">22</td>
					<td class="day">23</td>
				</tr>

				<tr>
					<td class="day">24</td>
					<td class="day active">25</td>
					<td class="day">26</td>
					<td class="day">27</td>
					<td class="day">28</td>
					<td class="day">29</td>
					<td class="day">30</td>
				</tr>

				<tr>
					<td class="day new">1</td>
					<td class="day new">2</td>
					<td class="day new">3</td>
					<td class="day new">4</td>
					<td class="day new">5</td>
					<td class="day new">6</td>
					<td class="day new">7</td>
				</tr>
			</tbody>
		</table>
	</div>

	<div style="display: none;" class="datepicker-months">
		<table class="table-condensed">
			<thead>
				<tr>
					<th class="prev"></th>

					<th colspan="5" class="switch">2012</th>

					<th class="next"></th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td colspan="7"><span class="month">Jan</span><span
						class="month">Feb</span><span class="month">Mar</span><span
						class="month">Apr</span><span class="month">May</span><span
						class="month active">Jun</span><span class="month">Jul</span><span
						class="month">Aug</span><span class="month">Sep</span><span
						class="month">Oct</span><span class="month">Nov</span><span
						class="month">Dec</span></td>
				</tr>
			</tbody>
		</table>
	</div>

	<div style="display: none;" class="datepicker-years">
		<table class="table-condensed">
			<thead>
				<tr>
					<th class="prev"></th>

					<th colspan="5" class="switch">2010-2019</th>

					<th class="next"></th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td colspan="7"><span class="year old">2009</span><span
						class="year">2010</span><span class="year">2011</span><span
						class="year active">2012</span><span class="year">2013</span><span
						class="year">2014</span><span class="year">2015</span><span
						class="year">2016</span><span class="year">2017</span><span
						class="year">2018</span><span class="year">2019</span><span
						class="year old">2020</span></td>
				</tr>
			</tbody>
		</table>
	</div>
</div>

<script type="text/javascript"> 

	$('#searchResults').click(function(){
	    return getResult();
	});
	
    function getResult()
    {
    	var origin =  $("#origin option:selected").val();  
    	var destination = $("#destination option:selected").val();
    	var startDate= $("#startDate").val();
    	var endDate = $("#endDate").val();
    	var jurnytype = $("#journyType option:selected").val();
    	var childrens = $("#children").val();
    	var adults = $("#adults option:selected").val();
    	
        $.get("resources/datatemplates/flightList.html", function (template){
            //alert(template);
            $.get("/air/searchResultsJson?leavingFrom=" + origin + "&goingTo=" + destination + "&startDate=" + startDate + "&endDate=" + endDate + "&jurnytype=" + jurnytype + "&childrens=" + childrens + "&adults=" + adults, function (data){ 
				//alert("***" + data);
                $("#dataRegion").html("");
                $.tmpl(template, data).appendTo("#dataRegion"); 
            });  

        }); 
        
        return false;
    }
    
    function getDetails(code)
    {
    	alert("***" + code);
        $.get("resources/datatemplates/deals.html", function (template){
            $.get("/air/deals/" + code, function (data){ 
                $("#dataRegion").html("");
                $.tmpl(template, data).appendTo("#dataRegion"); 
            });
        }); 
        return false;
    }

    getResult();

 </script>

</body>
</html>
