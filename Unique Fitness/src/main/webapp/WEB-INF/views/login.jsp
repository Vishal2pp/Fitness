<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>Unique Fitness</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='//fonts.googleapis.com/css?family=Sofia' rel='stylesheet'
	type='text/css'>
<link href="/uniqueFitness/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="/uniqueFitness/resources/css/util.css">
<link rel="stylesheet" type="text/css" href="/uniqueFitness/resources/css/main.css">
<!--slider-->
<link href="/uniqueFitness/resources/css/camera.css" rel="stylesheet" type="text/css" media="all" />
<script type='text/javascript' src="/uniqueFitness/resources/js/jquery.min.js"></script>
<script type='text/javascript' src="/uniqueFitness/resources/js/jquery.easing.1.3.js"></script>
<script type='text/javascript' src="/uniqueFitness/resources/js/camera.min.js"></script>
<script>
	jQuery(function() {

		jQuery('#camera_wrap_4').camera({
			height : 'auto',
			loader : 'bar',
			pagination : false,
			thumbnails : true,
			hover : false,
			opacityOnGrid : false,
			imagePath : '/uniqueFitness/resources/images/'
		});

	});
</script>
</head>

<body>
	<div class="h_bg">
		<div class="wrap">
			<div class="logo">
				<h1>
					<a href="/uniqueFitness/login"><img src="/uniqueFitness/resources/images/logo.png" alt=""></a>
				</h1>
			</div>
		</div>
	</div>
	
	<div class="fluid_container">
		<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-50 p-r-50 p-t-77 p-b-30">
				<form class="login100-form validate-form" action="/uniqueFitness/home" method="POST">
					<span class="login100-form-title p-b-55">
						Login
					</span>

					<div class="wrap-input100 validate-input m-b-16" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email" placeholder="Username">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-envelope"></span>
						</span>
					</div>

					<div class="wrap-input100 validate-input m-b-16" data-validate = "Password is required">
						<input class="input100" type="password" name="pass" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-lock"></span>
						</span>
					</div>
					<div class="container-login100-form-btn p-t-25">
						<button class="login100-form-btn">
							Login
						</button>
					</div>

				
				</form>
			</div>
		</div>
	</div>
	</div>
	<div class="clear"></div>
	
	
	
	<div class="ftr-bg">
		<div class="wrap">
			<div class="footer">
				<div class="social-icons">
					<ul>
						<li class="facebook"><!-- <a href="#" target="_blank"> </a> --></li>
						<li class="twitter"><!-- <a href="#" target="_blank">  </a>--></li>
						<li class="googleplus"><!-- <a href="#" target="_blank"> </a> --></li>
						<li class="contact"><!-- <a href="#" target="_blank"> </a> --></li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="copy">
					<p class="w3-link">
						© 2018 Unique Fitness . All Rights Reserved | Design by Vishal Patil
					</p>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
</body>

</html>