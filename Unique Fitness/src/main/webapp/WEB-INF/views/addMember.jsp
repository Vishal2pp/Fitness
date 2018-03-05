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
				Member Registration Form
			</h1>
			</header>
			<div class="form">
				<form action="addMemberData" method="POST" enctype="multipart/form-data">
			<table cellspacing="10">
					<tr>
						<td>Name-</td>
						<td><input name="name" placeholder="Full Name" size="50" tabindex="1" type="text"></td>
					</tr>
					
					<tr>
						<td>Email-</td>
						<td><input name="email" placeholder="example@domain.com" size="50" tabindex ="2" type="email"/></td>
					</tr>
					
					
					<tr>
						<td>Phone Number-</td>
						<td><input name="number" placeholder="Phone Number" tabindex="3" type="number"/></td>
					</tr>

					<tr>
						<td>Birthdate-</td>
						<td><input type="date" name="dob" /></td>
					</tr>
					
					<tr>
						<td>Age-</td>
						<td><input type="number" name="age" /></td>
					</tr>
					<tr>
						<td>Photo-</td>
						<td><input type="file" name="file" /></td>
					</tr>
					
					<tr>
						<td>Address- </td>
						<td><textarea rows="4" cols="50" name="address"></textarea></td>
					</tr>
					<tr>
						<td>Gender-</td>
						<td>
							<select class="select-style gender" name="gender">
								<option value="select">Select Gender</option>
								<option value="Male">Male</option>
								<option value="Female">Female</option>
								<option value="Other">Other</option>
							</select>
						</td>	
					</tr>
					
					
					<tr>
						<td>Package</td>
						<td>
							<select class="select-style gender" name="pkgId" id="pkg">
								<option value="select">Select Package</option>
								<c:forEach items="${pkgData}" var="pkg">
								<option value="${pkg.pkgId}" id="${pkg.pkgAmount}">${pkg.pkgName}
									-- ${pkg.pkgAmount} Rs.</option>
								</c:forEach>
							</select>
						</td>
					</tr>
					<tr>
						<td>Package Start Date-</td>
						<td><input type="date" name="pkgStartDate" /></td>
					</tr>
					
					<tr>
						<td>Package End Date-</td>
						<td><input type="date" name="pkgEndDate" /></td>
					</tr>
					<tr>
						<td>Package Amount</td>
						<td><input id="pkgAmt" name="pkgAmt" type="text" readonly="readonly" value="0"></td>
					</tr>
					
					<tr>
						<td>Paid Amount</td>
						<td><input id="paid" name="paidAmount" type="text" value="0"></td>
					</tr>
					
						<tr>
						<td>Pending Amount</td>
						<td><input id="pending" name="pendingAmount" type="text" value="0" readonly="readonly"> </td>
						</tr>
					<tr>
						<td>Payment Receipt No.-</td>
						<td><input type="text" name="receiptNo"/></td>
					</tr>
					
					<tr>
						<td>Payment Date-</td>
						<td><input type="date" name="paymentDate"/></td>
					</tr>
					
					<tr>
						<td>Payment Due Date-</td>
						<td><input type="date" name="dueDate"/></td>
					</tr>
					<tr>
						<td>Gym Time-</td>
						<td><input type="text" name="gymTime" /></td>
					</tr>
					
					
					<tr><td></td><td><input class="buttom" name="submit" id="submit" tabindex="5" value="Add Member" type="submit"></td></tr>
				</table></form>
			</div>
		</div>








	</div>
	<div class="clear"></div>
	<div class="ftr-bg">
		<div class="wrap">
			<div class="footer">
				
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