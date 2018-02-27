<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>Unique Fitness</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='//fonts.googleapis.com/css?family=Sofia' rel='stylesheet'
	type='text/css'>

<link href="/uniqueFitness/resources/css/style.css" rel="stylesheet"
	type="text/css" media="all" />
<link rel="stylesheet" type="text/css"
	href="/uniqueFitness/resources/css/util.css">
<link rel="stylesheet" type="text/css"
	href="/uniqueFitness/resources/css/main.css">
<!--slider-->
<link rel="stylesheet" href="/uniqueFitness/resources/css/style1.css">
<link rel="stylesheet" href="/uniqueFitness/resources/css/demo.css">


<link href="/uniqueFitness/resources/css/camera.css" rel="stylesheet"
	type="text/css" media="all" />


<script type='text/javascript'
	src="/uniqueFitness/resources/js/jquery-3.3.1.min.js"></script>
<script type='text/javascript'
	src="/uniqueFitness/resources/js/jquery.easing.1.3.js"></script>
<script type='text/javascript'
	src="/uniqueFitness/resources/js/camera.min.js"></script>

<style type="text/css">
.myclass {
	margine-top: 4px;
	float: right;
}
</style>

</head>

<body>
	<div class="h_bg">
		<div class="wrap">
			<div class="logo">
				<h1>
					<a href="/uniqueFitness/login"><img
						src="/uniqueFitness/resources/images/logo.png" alt=""></a>
				</h1>
			</div>
		</div>
	</div>

	<div class="navbar nav_bg">
		<div class="wrap">
			<div class="menu">
				<div class="dropdown">
					<button class="dropbtn active" href="#home">Manage Members</button>
					<div class="nav dropdown-content">
						<a href="/uniqueFitness/addMember">Add New Member</a> <a
							href="/uniqueFitness/updateMember">Update Member</a> <a
							href="/uniqueFitness/allMembers">All Members</a> <a
							href="/uniqueFitness/activeMembers">Active Members</a>
					</div>
				</div>
				<div class="dropdown">
					<button class="dropbtn" href="#home">Payment Status</button>
					<div class="nav dropdown-content">
						<a href="/uniqueFitness/pendingPayments">Pending Payments</a> <a
							href="/uniqueFitness/modifyPayment">Modify Payment</a>
					</div>
				</div>
				<div class="dropdown">
					<button class="dropbtn" href="#home">
						SMS Sending<i class="fa fa-caret-down"></i>
					</button>
					<div class="nav dropdown-content">
						<a href="#">SMS/Email to Expired Members</a> <a href="#">SMS/Email
							to upcoming expiration members</a> <a href="#">Link 3</a>
					</div>
				</div>
				<div class="dropdown">
					<button class="dropbtn" href="#home">
						Reports Download<i class="fa fa-caret-down"></i>
					</button>
					<div class="nav dropdown-content">
						<a href="/uniqueFitness/dwnldexml">Download Expired Members
							List</a> <a href="/uniqueFitness/dwnldaml">Download Active
							Members List</a> <a href="/uniqueFitness/dwnldppml">Download
							Pending Payment Member List</a> <a href="/uniqueFitness/dwnldupml">Download
							Upcoming Payment Member List</a>
					</div>
				</div>
				<div class="myclass">
					<div class="dropdown">
						<button type="button" class="dropbtn">
							<font color="white"><b><a href="/uniqueFitness/logout">Log
										out</a></b></font>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="fluid_container">





		<div class="container">
			<header>
			<h1>
				<span>Tutorials</span> Demo Beautiful Registration Form with HTML5
				and CSS3
			</h1>
			</header>
			<div class="form">
				<form id="addform">
					<p class="contact">
						<label for="name">Name</label>
					</p>
					<input id="name" name="name" placeholder="First and last name"
						required="" tabindex="1" type="text">

					<p class="contact">
						<label for="email">Email</label>
					</p>
					<input id="email" name="email" placeholder="example@domain.com"
						required="" type="email">

					<p class="contact">
						<label for="phone">Phone Number</label>
					</p>
					<input id="phone" name="phone" placeholder="Phone Number"
						required="" tabindex="2" type="text">


					<fieldset>
						<label>Birthday</label> <input type="date" name="birthDate" />
					</fieldset>

					<select class="select-style gender" name="gender">
						<option value="select">Select Gender</option>
						<option value="Male">Male</option>
						<option value="Female">Female</option>
						<option value="Other">Other</option>
					</select><br>
					<br>

					
					<fieldset>
						<label>Package</label> <select class="select-style gender"
							name="package" id="pkg">
							<option value="select">Select Package</option>
							<c:forEach items="${pkgData}" var="pkg">
								<option value="${pkg.pkgId}" id="${pkg.pkgAmount}">${pkg.pkgName}
									-- ${pkg.pkgAmount} Rs.</option>
							</c:forEach>
						</select>
					</fieldset>
					<br>
					<br>
					<fieldset>
						<p class="contact">
							<label for="phone">Package Amount</label>
						</p>
						<input id="pkgAmt" name="pkgAmt" type="text" disabled="disabled"
							value="0"> <br>
					</fieldset><br><br>
					
					<fieldset>
						<p class="contact">
							<label for="phone">Paid Amount</label>
						</p>
						<input id="paid" name="paid" type="text"
							value="0"> <br>
					</fieldset><br><br>
					
					<fieldset>
						<p class="contact">
							<label for="phone">Pending Amount</label>
						</p>
						<input id="pending" name="pending" type="text"
							value="0" disabled="disabled"> <br>
					</fieldset><br><br>
					
					<input class="buttom" name="submit" id="submit" tabindex="5"
						value="Sign me up!" type="submit">
				</form>
			</div>
		</div>








	</div>
	<div class="clear"></div>
	<div class="ftr-bg">
		<div class="wrap">
			<div class="footer">
				<div class="social-icons">
					<ul>
						<li class="facebook"></li>
						<li class="twitter"></li>
						<li class="googleplus"></li>
						<li class="contact"></li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="copy">
					<p>
					<h4>© 2018 Unique Fitness . All Rights Reserved | Design by
						Vishal Patil</h4>
					</p>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<script>
$(document).ready(function(){
	
	$("#pkg").change(function(){
		var amt = $(this).find('option:selected').attr('id');
		$("#pkgAmt").val(amt);
		$("#paid").trigger("change");
	});
	
	$("#paid").keyup(function(){
		var amt = parseInt($("#pkgAmt").val());
		var paid = parseInt($(this).val());
		$("#pending").val(amt-paid);
	});
});
</script>
</body>
</html>