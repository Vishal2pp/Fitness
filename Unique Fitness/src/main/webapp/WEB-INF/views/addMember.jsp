<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>Add Member</title>


  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="/uniqueFitness/resources/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="/uniqueFitness/resources/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="/uniqueFitness/resources/lib/animate/animate.min.css" rel="stylesheet">
  <link href="/uniqueFitness/resources/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="/uniqueFitness/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="/uniqueFitness/resources/lib/magnific-popup/magnific-popup.css" rel="stylesheet">
  <link href="/uniqueFitness/resources/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link rel="stylesheet" href="/uniqueFitness/resources/css/style1.css">
  <!-- Main Stylesheet File -->
  <link href="/uniqueFitness/resources/css/style.css" rel="stylesheet">

<!--slider-->
<style type="text/css">
table {
    border-collapse: initial;
}
</style>
</head>

<body>
<!--==========================
    Top Bar
  ============================-->
  <section id="topbar" class="d-none d-lg-block">
  <!--==========================
    Header
  ============================-->
  <header id="header">
    <div class="container">

      <div id="logo" class="pull-left">
        <h1><a href="#body" class="scrollto">Unique <span>Fitness</span></a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="#body"><img src="img/logo.png" alt="" title="" /></a>-->
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="home">Home</a></li>
          <li class="menu-has-children"><a href="">Manage Members</a>
            <ul>
              <li><a href="addMember">Add Member</a></li>
              <li><a href="updateMember">Update Member</a></li>
              <li><a href="allMembers">All Members</a></li>
              <li><a href="activeMembers">Active Members</a></li>
              <li><a href="#">Search Members</a></li>
            </ul>
          </li>
         <li class="menu-has-children"><a href="">Manage Payment</a>
            <ul>
              <li><a href="pendingPayments">Pending Payments</a></li>
              <li><a href="updateMember">Modify Payment</a></li>
              <li><a href="allMembers">Temp</a></li>
            </ul>
          </li>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

 

  <main id="main">

	<div class="container">
			<header>
			<h3>
				<center>Member Registration Form</center>
			</h3>
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
						<td><input type="date" name="dob" tabindex="4" /></td>
					</tr>
					
					<tr>
						<td>Age-</td>
						<td><input type="number" name="age" tabindex="5"/></td>
					</tr>
					<tr>
						<td>Photo-</td>
						<td><input type="file" name="file" tabindex="6"/></td>
					</tr>
					
					<tr>
						<td>Address- </td>
						<td><textarea rows="2" cols="40" name="address" tabindex="7"></textarea></td>
					</tr>
					<tr>
						<td>Gender-</td>
						<td>
							<select class="select-style gender" name="gender" tabindex="8">
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
							<select class="select-style gender" name="pkgId" id="pkg" tabindex="9">
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
						<td><input type="date" name="pkgStartDate" tabindex="10"/></td>
					</tr>
					
					<tr>
						<td>Package End Date-</td>
						<td><input type="date" name="pkgEndDate" tabindex="11" /></td>
					</tr>
					<tr>
						<td>Package Amount</td>
						<td><input id="pkgAmt" name="pkgAmt" type="text" readonly="readonly" value="0"></td>
					</tr>
					
					<tr>
						<td>Paid Amount</td>
						<td><input id="paid" name="paidAmount" type="text" value="0" tabindex="12"></td>
					</tr>
					
						<tr>
						<td>Pending Amount</td>
						<td><input id="pending" name="pendingAmount" type="text" value="0" readonly="readonly"> </td>
						</tr>
					<tr>
						<td>Payment Receipt No.-</td>
						<td><input type="text" name="receiptNo" tabindex="13"/></td>
					</tr>
					
					<tr>
						<td>Payment Date-</td>
						<td><input type="date" name="paymentDate" tabindex="14"/></td>
					</tr>
					
					<tr>
						<td>Payment Due Date-</td>
						<td><input type="date" name="dueDate" tabindex="15"/></td>
					</tr>
					<tr>
						<td>Gym Time-</td>
						<td><input type="text" name="gymTime" tabindex="16"/></td>
					</tr>
					
					
					<tr><td></td><td><input class="buttom" name="submit" id="submit" tabindex="17" value="Add Member" type="submit"></td></tr>
				</table></form>
			</div>
		</div>

   

  </main>

  <!--==========================
    Footer
  ============================-->
  <footer id="footer">
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>Unique Fitness.</strong>. All Rights Reserved
      </div>
    </div>
  </footer><!-- #footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

  <!-- JavaScript Libraries -->
  <script src="/uniqueFitness/resources/js/jquery-3.3.1.min.js"></script>
  <script src="/uniqueFitness/resources/lib/jquery/jquery-migrate.min.js"></script>
  <script src="/uniqueFitness/resources/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/uniqueFitness/resources/lib/easing/easing.min.js"></script>
  <script src="/uniqueFitness/resources/lib/superfish/hoverIntent.js"></script>
  <script src="/uniqueFitness/resources/lib/superfish/superfish.min.js"></script>
  <script src="/uniqueFitness/resources/lib/wow/wow.min.js"></script>
  <script src="/uniqueFitness/resources/lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="/uniqueFitness/resources/lib/magnific-popup/magnific-popup.min.js"></script>
  <script src="/uniqueFitness/resources/lib/sticky/sticky.js"></script>
   <script src="/uniqueFitness/resources/js/main.js"></script>

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