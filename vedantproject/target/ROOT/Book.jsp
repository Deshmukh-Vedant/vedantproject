<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Student Login</title>
	<link rel="stylesheet" href="bootstrap.min.css">
	<script src="bootstrap.bundle.min.js"></script>
	<style>
		body{
			background-color: black;
		}
		#input{
			margin-top: 5px;
			margin-left: 20px;
			width: 200px;
		}
		#input1{
			margin-top: 10px;
			margin-left: 50px;
			width: 200px;
		}
		#input2{
			margin-top: 10px;
			margin-left: 50px;
			width: 200px;
		}
		#btn{
			margin-left: 135px;
			margin-top: 10px;
			width: 50px;
			height: 30px;
			background-color: black;
			color: white;
			border: 1px solid black;
		}
	</style>
</head>
<body>
<div class="container" style="width: 400px; height: 570px; margin-top: 10px; margin-left: 450px; opacity: 0.8; background-color: white; border: 1px solid yellow; border-radius: 10%;">
	<form action="bookdb.jsp" method="post">
	<img src="vedantlogo.jpeg" width="80px" height="80px" class="rounded-circle" style="margin-left: 150px; margin-top: -6px"><hr>
	<h2 style="text-align: center;">Book Now</h2><br>
	<h6 style="margin-left: 20px;">Username:<input type="text" name="username" id="input" required placeholder="Enter The Username"></h6>
	<h6 style="margin-left: 20px;">Password:<input type="password" name="pass" id="input" required placeholder="Enter Password"></h6>
	<h6 style="margin-left: 20px;">Age     :<input type="text" name="age" id="input1" required placeholder="Enter Age"></h6>
	<h6 style="margin-left: 20px;">City	   :<input type="text" name="city" id="input1" required placeholder="Enter City"></h6>
	<h6 style="margin-left: 20px;">Email   :<input type="email" name="email" id="input1" required placeholder="Enter Email"></h6>
	<h6 style="margin-left: 20px;">Occasion:<select id="input2" name="occasion">
		<option>---Select---</option>
		<option>Marriage</option>
		<option>Pre-wedding</option>
		<option>Baby-shower</option>
		<option>Nature</option>
		<option>Sports</option>
		<option>Travel</option>
	</select></h6>
	<h6 style="margin-left: 20px;">Prices:<select id="input2" name="course">
		<option>---Select---</option>
		<option>Marriage 55,500Rs/- </option>
		<option>Pre-wedding 6,200Rs/-</option>
		<option>Baby-shower 3,000Rs/-</option>
		<option>Nature 1,600Rs/-</option>
		<option>Sports 1,200Rs/-</option>
		<option>Travel 1,120Rs/-</option>
	</select></h6>
	<h6 style="margin-left: 20px;">Fees:<select id="input2" name="fees">
    <option>Select Mode</option>
    <option>Online Mode</option>
    <option>Offline Mode</option>
	</h6>
	<input type="submit" value="Book" id="btn">	
</form>
</div>
</body>
</html>