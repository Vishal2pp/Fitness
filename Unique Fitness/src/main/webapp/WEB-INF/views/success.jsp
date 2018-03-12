<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>Unique Fitness</title>


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
<link rel="stylesheet" type="text/css" media="all" href="/uniqueFitness/resources/css/member.css">
  <!-- Main Stylesheet File -->
  <link href="/uniqueFitness/resources/css/style.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="/uniqueFitness/resources/css/table.css">
<!--slider-->

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
          <li class="menu-active"><a href="#">Home</a></li>
          <li class="menu-has-children"><a href="#">Manage Members</a>
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
		<br><br><center><header class="myh1"><h3>Member added with following details</h3></header></center>
		</div>
		
		<div id="w">
    <div id="content" class="clearfix">
      <div id="userphoto"><img src="data:image/jpg;base64,${image}" alt="default avatar"></div>
      

      <nav id="profiletabs">
        <ul class="clearfix">
          <li><a id="bioA" href="#" class="sel">Bio</a></li>
          <li><a id="pkgA" href="#">Package Details/History</a></li>
          <li><a id="pmtA" href="#t">Payment Details/History</a></li>
        </ul>
      </nav>
      
      <section id="bio">
        	<table class="rwd-table">
        		<tr><th>Registration Number :- </th><td>${member.id}</td></tr>
        		<tr><th>Name :- </th><td>${member.name}</td></tr>
        		<tr><th>Email :- </th><td>${member.email}</td></tr>
        		<tr><th>Phone Number :- </th><td>${member.number}</td></tr>
        		<tr><th>Birth Date :- </th><td>${member.dob}</td></tr>
        		<tr><th>Age :- </th><td>${member.age}</td></tr>
        		<tr><th>Gender :- </th><td>${member.gender}</td></tr>
        		<tr><th>Address :- </th><td>${member.address}</td></tr>
        		<tr><th>Gym Time :- </th><td>${member.gymTime}</td></tr>
        		<tr><th>Status :- </th><td>${member.memberStatus}</td></tr>
        	</table>
        	
      </section>
      
      <section id="pkg" class="hidden">
        	<table class="rwd-table">
        		<tr><th>Package :- </th><td>${member.pkgId}</td></tr>
        		<tr><th>Package Start Date :- </th><td>${member.pkgStartDate}</td></tr>
        		<tr><th>Package End Date :- </th><td>${member.pkgEndDate}</td></tr>
        		<tr><th>Package Amount :- </th><td>${member.pkgAmt}</td></tr>
        	</table>
      </section>
      
      <section id="pmt" class="hidden">
       <table class="rwd-table">
        		<tr><th>Paid Amount :- </th><td>${member.paidAmount}</td></tr>
        		<tr><th>Pending Amount :- </th><td>${member.pendingAmount}</td></tr>
        		<tr><th>Payment Date :- </th><td>${member.paymentDate}</td></tr>
        		<tr><th>Payment due Date :- </th><td>${member.dueDate}</td></tr>
        		<tr><th>Payment Status :- </th><td>${member.paymentStatus}</td></tr>
        </table>
      
</section>     
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
  <script src="/uniqueFitness/resources/lib/jquery/jquery.min.js"></script>
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
	$("#pkgA").click(function(){
		$("#bio").hide();
		$("#pmt").hide();
		$("#pkg").show();
		$("#bioA").removeClass("sel");
		$("#pmtA").removeClass("sel");
		$("#pkgA").addClass("sel");
	});
	$("#pmtA").click(function(){
		$("#bio").hide();
		$("#pmt").show();
		$("#pkg").hide();
		$("#bioA").removeClass("sel");
		$("#pkgA").removeClass("sel");
		$("#pmtA").addClass("sel");
	});
	$("#bioA").click(function(){
		$("#bio").show();
		$("#pmt").hide();
		$("#pkg").hide();
		$("#pkgA").removeClass("sel");
		$("#pmtA").removeClass("sel");
		$("#bioA").addClass("sel");
	});
});
</script>
</body>
</html>