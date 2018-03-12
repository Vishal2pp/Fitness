<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>All Members</title>


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
    <link href="/uniqueFitness/resources/css/dataTables.bootstrap.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="/uniqueFitness/resources/css/style.css" rel="stylesheet">

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
          <li class="menu-active"><a href="home">Home</a></li>
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
  <br><br><br>
	<table id="data" border="1" class="table table-striped table-dark">
  <thead>
  <tr>
  	<th>Registration NO.</th>
  	<th>Name</th>
  	<th>Age</th>
  	<th>Email</th>
  	<th>Number</th>
  	<th>Birthdate</th>
  	<th>Registration Date</th>
  	<th>Status</th>
  	<th>Photo</th>
  	<th>View Details</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach items="${data}" var="member">
  <tr>
  <td>${member.id}</td>
  <td>${member.name}</td>
  <td>${member.age}</td>
  <td>${member.email}</td>
  <td>${member.number}</td>
  <td>${member.dob}</td>
  <td>${member.regDate}</td>
  <td>${member.memberStatus}</td>
  <td><img src="data:image/jpg;base64,${member.imagePath}" height="50px" width="50px"/></td>
  <td><button type="button" class="btn btn-info" id="${member.id}" onclick="clickedMe('${member.id}')">Details</button></td>
  </tr>
  </c:forEach>
  <tbody>
</table>
<div class="modal-body">

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
   <script src="/uniqueFitness/resources/js/dataTable.min.js"></script>
    <script src="/uniqueFitness/resources/js/dataTables.bootstrap.min.js"></script>
 
 <script type="text/javascript">
  $(document).ready(function() {
    $('#data').DataTable();
    
    
   /*  $('.btn-info').click(function(){
    	
    }); */
} );
  
  function clickedMe(id){
  	alert(id);
  }
  </script>
</body>
</html>





























<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
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
<link href="/uniqueFitness/resources/css/camera.css" rel="stylesheet"
	type="text/css" media="all" />
	<link href="/uniqueFitness/resources/css/allMemberTable.css" rel="stylesheet"
	type="text/css" media="all" />
<script type='text/javascript'
	src="/uniqueFitness/resources/js/jquery.min.js"></script>
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

<table border="1">
  <tr>
  	<th>Registration NO.</th>
  	<th>Name</th>
  	<th>Age</th>
  	<th>Email</th>
  	<th>Number</th>
  	<th>Birthdate</th>
  	<th>Registration Date</th>
  	<th>Status</th>
  	<th>Photo</th>
  </tr>
  <c:forEach items="${data}" var="member">
  <tr>
  <td>${member.id}</td>
  <td>${member.name}</td>
  <td>${member.age}</td>
  <td>${member.email}</td>
  <td>${member.number}</td>
  <td>${member.dob}</td>
  <td>${member.regDate}</td>
  <td>${member.memberStatus}</td>
  <td><img src="data:image/jpg;base64,${member.imagePath}" height="50px" width="50px"/></td>
  </tr>
  </c:forEach>
</table>


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
</html> --%>