<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>Pending Payments</title>


  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="/uniqueFitness/resources/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="/uniqueFitness/resources/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="/uniqueFitness/resources/lib/animate/animate.min.css" rel="stylesheet">
  <link href="/uniqueFitness/resources/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="/uniqueFitness/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="/uniqueFitness/resources/lib/magnific-popup/magnific-popup.css" rel="stylesheet">
  <link href="/uniqueFitness/resources/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
    <link href="/uniqueFitness/resources/css/dataTables.bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="/uniqueFitness/resources/css/style1.css">
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
        <h1><a href="home" class="scrollto">Unique <span>Fitness</span></a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="#body"><img src="img/logo.png" alt="" title="" /></a>-->
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li><a href="home">Home</a></li>
          <li class="menu-has-children"><a href="#">Manage Members</a>
            <ul>
              <li><a href="addMember">Add Member</a></li>
              <li><a href="updateMember">Update Member Bio</a></li>
              <li class="menu-active"><a href="allMembers">All Members</a></li>
              <li><a href="activeMembers">Active Members</a></li>
              <li><a href="deactiveMembers">Deactive Members</a></li>
              <li><a href="expiredMembers">Expired Members</a></li>
              <li><a href="#">Renew Member</a></li>
            </ul>
          </li>
         <li class="menu-has-children"><a href="#">Manage Payment</a>
            <ul>
              <li><a href="pendingPayments">Pending Payments</a></li>
              <li><a href="getPaymentHistory">Payment History</a></li>
              <li><a href="#">Temp</a></li>
            </ul>
          </li>
          <li class="menu-has-children"><a href="#">Package Manager</a>
            <ul>
              <li><a href="pendingPayments">Add Package</a></li>
              <li><a href="updateMember">Modify Package</a></li>
              <li><a href="allMembers">View Packages</a></li>
            </ul>
          </li>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->
</section>
 

  <main id="main">
  <center><h2>Pending Payment List</h2></center>
	<table id="data" border="1" class="table table-striped table-dark">
  <thead>
  <tr>
  	<th>Reg.No.</th>
  	<th>Name</th>
  	<!-- <th>Email</th> -->
  	<th>Number</th>
  	<!-- <th>Age</th>
  	<th>DOB</th>
  	<th>Reg. Date</th> -->
  	<th>Package</th>
  	<th>Start Date</th>
  	<th>End Date</th>
  	<th>Receipt No.</th>
  	<th>Pkg Amt</th>
  	<th>Paid Amt</th>
  	<th>Pending Amt</th>
  	<th>Due Date</th>
  	<th>Status</th>
  	<th>Photo</th>
  	<th>View Details</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach items="${data}" var="member">
   <c:choose>
    <c:when test="${member.memberStatus=='Deactive'}">
          <tr style="background-color:#f35b5b6b;">
    </c:when>  
    <c:when test="${member.memberStatus=='Expired'}">
          <tr style="background-color:#FF6347;">
    </c:when>   
    <c:otherwise>
        <tr>
    </c:otherwise>
</c:choose>
  <td>${member.id}</td>
  <td>${member.name}</td>
  <td>${member.number}</td>
  <td>${member.pkgName}</td>
  <td>${member.pkgStartDate}</td>
  <td>${member.pkgEndDate}</td>
  
  <td>${member.receiptNo}</td>
  <td>${member.pkgAmount}</td>
  <td>${member.paidAmount}</td>
  <td>${member.pendingAmount}</td>
  <td>${member.dueDate}</td>
  <%--  
   <td>${member.email}</td>
  <td>${member.age}</td>
  <td>${member.dob}</td>
  <td>${member.regDate}</td> --%>
  <td>${member.memberStatus}</td>
  <td><img src="data:image/jpg;base64,${member.imagePath}" height="50px" width="50px"/></td>
  <td><button type="button" class="btn btn-info" id="${member.id}" data-toggle="modal" data-target="#myModal" onclick="clickedMe('${member.id}')">Make Payment</button></td>
  </tr>
  </c:forEach>
  <tbody>
</table>

</main>



<div class="container">

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h2 class="modal-title text-center"><span class="label label-success">Make Payment</span></h2>
        </div>
        <div class="modal-body">
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>
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
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
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
} );
  
  function clickedMe(id){
	  alert(id);
	  $.post('getPendingMember', { mid: ""+id+""}, 
		  		function(data1){
		  			var data = JSON.parse(data1);
		  			console.log(data);
		  			var modal = $('.modal-body');
		  	  		var str = '	<div class="form">\
		  					<form id="paymentForm" action="updateMemberData" method="POST">\
		  					<input type="text" readonly="readonly" name="paymentId" value="'+data.paymentId+'" hidden>\
		  					<input type="text" readonly="readonly" name="pkgId" value="'+data.pkgId+'" hidden>\
		  						<table cellspacing="10">\
		  							<tr><td>Reg.Id</td><td><input type="text" readonly="readonly" name="id" value="'+data.id+'" tabindex="1"></td></tr>\
		  							<tr>\
		  								<td>Package-</td>\
		  								<td><br><input name="pkg" readonly="readonly" value="'+data.pkgName+'" tabindex="2" type="text"></td>\
		  							</tr><br>\
		  							<tr>\
		  								<td>Package Amount-</td>\
		  								<td><br><input name="amount" readonly="readonly" value="'+data.pkgAmount+'" tabindex ="3" type="email"/></td>\
		  							</tr>\
		  							<tr>\
		  								<td>Paid Amount-</td>\
		  								<td><br><input name="paidAmt" readonly="readonly" value="'+data.paidAmt+'" tabindex="4" type="number"/></td>\
		  							</tr>\
		  							<tr>\
		  								<td>Pending Amount-</td>\
		  								<td><br><input type="number" id="pending" readonly="readonly" name="pendingAmt" value="'+data.pendingAmt+'"tabindex="5" /></td>\
		  							</tr>\
		  							<tr>\
		  								<td>Pay-</td>\
		  								<td><br><input type="number" id="paid" name="currentPay" tabindex="6"/></td>\
		  							</tr>\
		  							<tr>\
	  								<td>Balance-</td>\
	  								<td><br><input type="number" id="balance" name="balance" readonly="readonly" value="'+data.pendingAmt+'"tabindex="7"/></td>\
	  								</tr>\
	  								<tr><td>Payment Date</td><td><input type="date" name="dueDate" tabindex="8"/></td></tr>\
		  							<tr>\
	  								<td>Receipt No.-</td>\
	  								<td><br><input type="number"  name="receipt" tabindex="9"/></td>\
	  								</tr>\
		  							<tr><td><br><br></td></tr>\
		  							<tr><td></td><td><input class="btn btn-lg" name="submit" id="submit" tabindex="9" value="Make Payment" type="submit"></td></tr>\
		  						</table></form>\
		  					</div>';
		  					modal.html(str);
		  					
		  					$("#paid").keyup(function(){
		  						var amt = parseInt($("#pending").val());
		  						var paid = parseInt($(this).val());
		  						$("#balance").val(amt-paid);
		  					});
		  					
		  					$("#paymentForm").submit(function(e) {
		  				        e.preventDefault(); // avoid to execute the actual submit of the form.
		  				        $.ajax({
		  				               type: "POST",
		  				               url: "updatePendingMember",
		  				               data: $("#paymentForm").serialize(),
		  				               success: function(data)
		  				               {
		  				                   if(data === "DONE"){
		  				                	 alert("Payment Successful!!");
		  				                	location.reload();
		  				                   }else{
		  				                	   alert("Payment Failed!!");
		  				                   }
		  				                		
		  				                	
		  				               }
		  				             }); 
		  				    });
		  		});
  }
  </script>
</body>
</html>