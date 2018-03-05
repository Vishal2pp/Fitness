<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>Member added!!</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='//fonts.googleapis.com/css?family=Sofia' rel='stylesheet'
	type='text/css'>
<link rel="stylesheet" type="text/css" media="all" href="/uniqueFitness/resources/css/member.css">
<link href="/uniqueFitness/resources/css/style.css" rel="stylesheet"
	type="text/css" media="all" />
<link rel="stylesheet" type="text/css"
	href="/uniqueFitness/resources/css/util.css">
<link rel="stylesheet" type="text/css"
	href="/uniqueFitness/resources/css/main.css">
	
<!--slider-->
<link href="/uniqueFitness/resources/css/camera.css" rel="stylesheet"
	type="text/css" media="all" />
<script type='text/javascript'
	src="/uniqueFitness/resources/js/jquery-3.3.1.min.js"></script>
<style type="text/css">
.myclass {
	margine-top: 4px;
	float: right;
}
.myh1{
	position: relative;
	color: #498ea5;
	font-weight: 700;
	text-align: center;
	font-style: normal;
	font-size: 30px;
	padding: 10px 0px 5px 0px;
	text-shadow: 0px 1px 1px rgba(255,255,255,0.8);
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
		<div class="container">
		<header class="myh1"><h1>Member added with following details</h1></header>
		</div>
		
		<div id="w">
    <div id="content" class="clearfix">
      <div id="userphoto"><img src="/uniqueFitness/resources/images/avatar.png" alt="default avatar"></div>
      

      <nav id="profiletabs">
        <ul class="clearfix">
          <li><a href="#bio" class="sel">Bio</a></li>
          <li><a href="#pkg">Package Details/History</a></li>
          <li><a href="#pmt">Payment Details/History</a></li>
        </ul>
      </nav>
      
      <section id="bio">
        	<br><br><br>
        	<table>
        		<tr><td>Registration Number :- ${member.id}</td></tr>
        		<tr><td>Name :- ${member.name}</td></tr>
        		<tr><td>Email :- ${member.email}</td></tr>
        		<tr><td>Phone Number :- ${member.number}</td></tr>
        		<tr><td>Birth Date :- ${member.dob}</td></tr>
        		<tr><td>Age :- ${member.age}</td></tr>
        		<tr><td>Gender :- ${member.gender}</td></tr>
        		<tr><td>Address :- ${member.address}</td></tr>
        		<tr><td>Gym Time :- ${member.gymTime}</td></tr>
        		<tr><td>Status :- ${member.memberStatus}</td></tr>
        	</table>
        	
      </section>
      
      <section id="pkg" class="hidden">
      <br><br><br>
        	<table>
        		<tr><td>Package :- ${member.pkgId}</td></tr>
        		<tr><td>Package Start Date :- ${member.pkgStartDate}</td></tr>
        		<tr><td>Package End Date :- ${member.pkgEndDate}</td></tr>
        		<tr><td>Package Amount :- ${member.pkgAmt}</td></tr>
        	</table>
      </section>
      
      <section id="pmt" class="hidden">
      <br><br><br>
       <table>
        		<tr><td>Paid Amount :- ${member.paidAmount}</td></tr>
        		<tr><td>Pending Amount :- ${member.pendingAmount}</td></tr>
        		<tr><td>Payment Date :- ${member.paymentDate}</td></tr>
        		<tr><td>Payment due Date :- ${member.dueDate}</td></tr>
        		<tr><td>Payment Status :- ${member.paymentStatus}</td></tr>
        	</table>
      
     
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
	
	$(function(){
		  $('#profiletabs ul li a').on('click', function(e){
		    e.preventDefault();
		    var newcontent = $(this).attr('href');
		    
		    $('#profiletabs ul li a').removeClass('sel');
		    $(this).addClass('sel');
		    
		    $('#content section').each(function(){
		      if(!$(this).hasClass('hidden')) { $(this).addClass('hidden'); }
		    });
		    
		    $(newcontent).removeClass('hidden');
		  });
		});
});
</script>
</body>
</html>