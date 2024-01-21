<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String staffICNumber = (String) session.getAttribute("staffICNumber");
boolean login;

if (staffICNumber != null) {
	//response.sendRedirect("");
	login = true;
} else {
	login = false;
}

System.out.println(login);
System.out.println(staffICNumber);
%>

<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="Ansonika">
<title>D Chalet Ombak Biru</title>

<!-- Favicons-->
<link rel="shortcut icon" href="img/favicon.png" type="image/x-icon">
<link rel="apple-touch-icon" type="image/x-icon"
	href="img/apple-touch-icon-57x57-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="72x72"
	href="img/apple-touch-icon-72x72-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="114x114"
	href="img/apple-touch-icon-114x114-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="144x144"
	href="img/apple-touch-icon-144x144-precomposed.png">

<!-- GOOGLE WEB FONT-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Caveat:wght@400;500&family=Montserrat:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">

<!-- BASE CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/vendors.min.css" rel="stylesheet">

<!-- SEPCIFIC CSS -->
<link href="css/flex_slider.css" rel="stylesheet">

<!-- YOUR CUSTOM CSS -->
<link href="css/custom.css" rel="stylesheet">
</head>
<style>
.margin_20_0 {
	padding-top: 20px;
	padding-bottom: 20px;
}
</style>

<body class="datepicker_mobile_full">
	<div id="preloader">
		<div data-loader="circle-side"></div>
	</div>
	<!-- /Page Preload -->

	<div class="layer"></div>
	<!-- Opacity Mask -->

	<header class="reveal_header" style="background-color: #24262d;">
		<div class="container-fluid">
			<div class="row align-items-center">
				<div class="col-6">
					<a href="index.html" class="logo_normal"><img
						src="img/logo.png" width="135" height="45" alt=""></a> <a
						href="../index.jsp" class="logo_sticky"><img
						src="img/logo_sticky.png" width="135" height="45" alt=""></a>
				</div>
				<div class="col-6">
					<nav>
						<ul>

							<li>
								<div class="hamburger_2 open_close_nav_panel">
									<div class="hamburger__box">
										<div class="hamburger__inner"></div>
									</div>
								</div>
							</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
		<!-- /container -->
	</header>
	<!-- /Header -->

	<!-- -------------------- sidebar panel ------------------------- -->
	<div class="nav_panel">
		<a href="#" class="closebt open_close_nav_panel"><i
			class="bi bi-x"></i></a>
		<div class="logo_panel">
			<img src="img/logo_sticky.png" width="135" height="45" alt="">
		</div>
		<div class="sidebar-navigation">
			<nav>
				<ul class="level-1">
					<li class=""><a href="SidebarController?action=staffHome&user=staff&staffICNumber=${staff.staffICNumber}"><i class="bi bi-house" style="font-size: 25px;"></i>
                    		        &nbsp;Home</a></li>
                    		<li class=""><a href="SidebarController?action=staffProfile&user=staff&staffICNumber=${staff.staffICNumber}"><i class="bi bi-clipboard-check"
                    	            style="font-size: 25px;"></i>&nbsp; View Profile</a></li>
                    		<li><a href="SidebarController?action=staffRoomList&user=staff&staffICNumber=${staff.staffICNumber}"><i class="bi bi-person-badge"
                    	            style="font-size: 25px;"></i>&nbsp; Manage Room</a></li>
                    		<li><a href="SidebarController?action=staffReservationList&user=staff&staffICNumber=${staff.staffICNumber}"><i class="bi bi-pencil-square"
                        	        style="font-size: 25px;"></i>&nbsp; Reservation List</a></li>
                    		<li><a href="SidebarController?action=staffGuestList&user=staff&staffICNumber=${staff.staffICNumber}"><i class="bi bi-nut" style="font-size: 25px;"></i>&nbsp;
                        		    Manage Guest</a></li>
                    		<li class="mt-5"><a href="LoginController?action=logout" class="btn btn-danger pt-3"
                        		    style="color: white; border-radius: 10px 10px 10px 10px; height: 50px;">Logout</a></li>
				</ul>
				<div class="panel_footer">
					<div class="copy">
						<div class="container py-3">© Ombak Biru Chalet Malaysia</div>
					</div>
				</div>
				<!-- /panel_footer -->
			</nav>
		</div>
		<!-- /sidebar-navigation -->
	</div>
	<!-- /nav_panel -->

	<div class>
		<div class="container margin_120_95" id="first_section">
			<div
				class="row justify-content-between flex-lg-row-reverse align-items-center">
				<div class="card card-body p-4">
					<h2>
						Welcome,
						<c:out value="${staff.staffName}" />
					</h2>

					<div class="clearFix"></div>
					<h1>Room availability for today</h1>

					<div class="margin_20_0">
						<div class="row">
							<div class="col-lg-4">
								<div class="card">
									<div class="card-body">
										<div id="creditSales" class="progressBar"></div>
										<h3>6</h3>
										<span class="progressTitle">Standard Room</span>
									</div>
								</div>
							</div>

							<div class="col-lg-4">
								<div class="card">
									<div class="card-body">
										<div id="channelSales" class="progressBar"></div>
										<h3>6</h3>
										<span class="progressTitle">Deluxe Room</span>
									</div>
								</div>
							</div>

							<div class="col-lg-4">
								<div class="card">
									<div class="card-body">
										<div id="directSales" class="progressBar"></div>
										<h3>0</h3>
										<span class="progressTitle">Already check-in</span>
									</div>
								</div>
							</div>
						</div>
					</div>

					<br> <br>

				</div>
			</div>
		</div>
		<!-- /Pattern  -->



		<div class="progress-wrap">
			<svg class="progress-circle svg-content" width="100%" height="100%"
				viewBox="-1 -1 102 102">
        <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" />
      </svg>
		</div>
		<!-- /back to top -->

		<!-- COMMON SCRIPTS -->
		<script src="js/common_scripts.js"></script>
		<script src="js/common_functions.js"></script>
		<script src="js/datepicker_inline.js"></script>
		<script src="phpmailer/validate.js"></script>

		<!-- SPECIFIC SCRIPTS -->
		<script src="js/jquery.flexslider.min.js"></script>
		<script src="js/slider_func.js"></script>
</body>
<footer class="revealed">
	<div class="footer_bg">
		<div class="gradient_over"></div>

	</div>
	<div class="container">
		<div class="row move_content">
			<div class="col-lg-4 col-md-12">
				<h5>Contacts</h5>
				<ul>
					<li>Jalan Telok Gong / Pengkalan Balak, Kampung Sungai Tuang<br>78300
						Masjid Tanah, Melaka<br>
					<br></li>
					<li><strong><a href="#0">dchaletombakbiru@gmail.com</a></strong></li>
					<li><strong><a href="#0">016-2115359/012-2431337</a></strong></li>
				</ul>
				<div class="social">
					<ul>
						<li><a href="#0"><i class="bi bi-instagram"></i></a></li>
						<li><a href="#0"><i class="bi bi-whatsapp"></i></a></li>
						<li><a href="#0"><i class="bi bi-facebook"></i></a></li>
						<li><a href="#0"><i class="bi bi-twitter"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!--/container-->
	<div class="copy">
		<div class="container">
			© Ombak Biru Chalet - by <a href="#">Ocean Blue Lemond</a>
		</div>
	</div>
</footer>

</html>
