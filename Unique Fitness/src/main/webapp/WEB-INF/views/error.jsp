<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>Error!!!</title>
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
<link href="/uniqueFitness/resources/css/camera.css" rel="stylesheet"
	type="text/css" media="all" />

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
						<a href="addMember">Add New Member</a> <a
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
		<h1>${msg}</h1>
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
</body>
</html>