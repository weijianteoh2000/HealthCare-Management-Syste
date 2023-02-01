<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>HealthCare Management | Welcome</title>
<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Roboto:wght@500;700;900&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="<c:url value="/resources/lib/animate/animate.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/lib/owlcarousel/assets/owl.carousel.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" />" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
</head>
<body>
	<!-- Spinner Start -->
	<div id="spinner"
		class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner-grow text-primary"
			style="width: 3rem; height: 3rem;" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>
	<!-- Spinner End -->

	<!-- Topbar Start -->
	<div class="container-fluid bg-light p-0 wow fadeIn"
		data-wow-delay="0.1s">
		<div class="row gx-0 d-none d-lg-flex">
			<div class="col-lg-7 px-5 text-start">
				<div class="h-100 d-inline-flex align-items-center py-3 me-4">
					<small class="fa fa-map-marker-alt text-primary me-2"></small> <small>Pusat
						Pentadbiran Universiti Teknologi Malaysia, 80990 Skudai, Johor</small>
				</div>
				<div class="h-100 d-inline-flex align-items-center py-3">
					<small class="far fa-clock text-primary me-2"></small> <small>Mon
						- Fri : 09.00 AM - 09.00 PM</small>
				</div>
			</div>
			<div class="col-lg-5 px-5 text-end">
				<div class="h-100 d-inline-flex align-items-center py-3 me-4">
					<small class="fa fa-phone-alt text-primary me-2"></small> <small>+6012
						345 6789</small>
				</div>
				<div class="h-100 d-inline-flex align-items-center">
					<a
						class="btn btn-sm-square rounded-circle bg-white text-primary me-1"
						href=""><i class="fab fa-facebook-f"></i></a> <a
						class="btn btn-sm-square rounded-circle bg-white text-primary me-1"
						href=""><i class="fab fa-twitter"></i></a> <a
						class="btn btn-sm-square rounded-circle bg-white text-primary me-1"
						href=""><i class="fab fa-linkedin-in"></i></a> <a
						class="btn btn-sm-square rounded-circle bg-white text-primary me-0"
						href=""><i class="fab fa-instagram"></i></a>
				</div>
			</div>
		</div>
	</div>
	<!-- Topbar End -->

	<!-- Navbar Start -->
	<nav
		class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0 wow fadeIn"
		data-wow-delay="0.1s">
		<a href="index.jsp"
			class="navbar-brand d-flex align-items-center px-4 px-lg-5">
			<h1 class="m-0 text-primary">
				<img style='margin-right: 20px;' width="50px" height="50px"
					src="<c:url value="/resources/img/logo-black-bigger-removebg-preview.png"/>">Health Era
			</h1>
		</a>
		<button type="button" class="navbar-toggler me-4"
			data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<div class="navbar-nav ms-auto p-4 p-lg-0">
				<a href="index.html" class="nav-item nav-link active">Home</a> <a
					href="about.html" class="nav-item nav-link">About</a> <a
					href="service.html" class="nav-item nav-link">Service</a>
				<div class="nav-item dropdown">
					<a href="#" class="nav-link dropdown-toggle"
						data-bs-toggle="dropdown">Pages</a>
					<div class="dropdown-menu rounded-0 rounded-bottom m-0">
						<a href="feature.html" class="dropdown-item">Feature</a> <a
							href="team.html" class="dropdown-item">Our Doctor</a> <a
							href="appointment.html" class="dropdown-item">Appointment</a> <a
							href="testimonial.html" class="dropdown-item">Testimonial</a> <a
							href="404.html" class="dropdown-item">404 Page</a>
					</div>
				</div>
				<a href="contact.html" class="nav-item nav-link">Contact</a>
			</div>
			<a href="login/loginForm"
				class="btn btn-primary rounded-0 py-4 px-lg-5 d-none d-lg-block">Login / Register<i
				class="fa fa-arrow-right ms-3"></i></a>
		</div>
	</nav>
	<!-- Navbar End -->

	<!-- Header Start -->
	<div class="container-fluid header bg-primary p-0 mb-5">
		<div
			class="row g-0 align-items-center flex-column-reverse flex-lg-row">
			<div class="col-lg-6 p-5 wow fadeIn" data-wow-delay="0.1s">
				<h1 class="display-4 text-white mb-5">Good Health Is The Best
					Way To Enjoy Your Life</h1>
				<div class="row g-4">
					<div class="col-sm-4">
						<div class="border-start border-light ps-4">
							<h2 class="text-white mb-1" data-toggle="counter-up">6</h2>
							<p class="text-light mb-0">Expert Doctors</p>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="border-start border-light ps-4">
							<h2 class="text-white mb-1" data-toggle="counter-up">12</h2>
							<p class="text-light mb-0">Medical Stuff</p>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="border-start border-light ps-4">
							<h2 class="text-white mb-1" data-toggle="counter-up">20</h2>
							<p class="text-light mb-0">Total Patients</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
				<div class="owl-carousel header-carousel">
					<div class="owl-carousel-item position-relative">
						<img class="img-fluid" src="<c:url value="/resources/img/health-check-up-landing.jpg"/>"
							alt="">
						<div class="owl-carousel-text">
							<h1 class="display-1 text-white mb-0">Medical Check Up</h1>
						</div>
					</div>
					<div class="owl-carousel-item position-relative">
						<img class="img-fluid" src="<c:url value="/resources/img/pharmacy-service-landing.jpg"/>"
							alt="">
						<div class="owl-carousel-text">
							<h1 class="display-1 text-white mb-0">Pharmacy</h1>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Header End -->
	
	<!-- Footer Start -->
	<div
		class="container-fluid bg-dark text-light footer mt-5 pt-5 wow fadeIn"
		data-wow-delay="0.1s">
		<div class="container py-5">
			<div class="row g-5">
				<div class="col-lg-3 col-md-6">
					<h5 class="text-light mb-4">Address</h5>
					<p class="mb-2">
						<i class="fa fa-map-marker-alt me-3"></i>Pusat Pentadbiran
						Universiti Teknologi Malaysia, 80990 Skudai, Johor
					</p>
					<p class="mb-2">
						<i class="fa fa-phone-alt me-3"></i>+6012 345 6789
					</p>
					<p class="mb-2">
						<i class="fa fa-envelope me-3"></i>weijianteoh2000@graduate.utm.my
					</p>
					<div class="d-flex pt-2">
						<a class="btn btn-outline-light btn-social rounded-circle" href=""><i
							class="fab fa-twitter"></i></a> <a
							class="btn btn-outline-light btn-social rounded-circle" href=""><i
							class="fab fa-facebook-f"></i></a> <a
							class="btn btn-outline-light btn-social rounded-circle" href=""><i
							class="fab fa-youtube"></i></a> <a
							class="btn btn-outline-light btn-social rounded-circle" href=""><i
							class="fab fa-linkedin-in"></i></a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<h5 class="text-light mb-4">Services</h5>
					<a class="btn btn-link" href="">Pharmacy</a> <a
						class="btn btn-link" href="">Medical Check Up</a>
				</div>
				<div class="col-lg-3 col-md-6">
					<h5 class="text-light mb-4">Quick Links</h5>
					<a class="btn btn-link" href="">About Us</a> <a
						class="btn btn-link" href="">Contact Us</a> <a
						class="btn btn-link" href="">Our Services</a> <a
						class="btn btn-link" href="">Terms & Condition</a> <a
						class="btn btn-link" href="">Support</a>
				</div>
				<div class="col-lg-3 col-md-6">
					<h5 class="text-light mb-4">Newsletter</h5>
					<p>To Know More, Join Us Now</p>
					<div class="position-relative mx-auto" style="max-width: 400px;">
						<input class="form-control border-0 w-100 py-3 ps-4 pe-5"
							type="text" placeholder="Your email">
						<button type="button"
							class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="copyright">
				<div class="row">
					<div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
						&copy; <a class="border-bottom" href="#">Health Era</a>, All Right
						Reserved.
					</div>
					<div class="col-md-6 text-center text-md-end">
						<!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer End -->

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="<c:url value="/resources/lib/wow/wow.min.js"/>"></script>
	<script src="<c:url value="/resources/lib/easing/easing.min.js"/>"></script>
	<script src="<c:url value="/resources/lib/waypoints/waypoints.min.js"/>"></script>
	<script src="<c:url value="/resources/lib/counterup/counterup.min.js"/>"></script>
	<script src="<c:url value="/resources/lib/owlcarousel/owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/resources/lib/tempusdominus/js/moment.min.js"/>"></script>
	<script src="<c:url value="/resources/lib/tempusdominus/js/moment-timezone.min.js"/>"></script>
	<script src="<c:url value="/resources/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"/>"></script>

	<!-- Template Javascript -->
	<script src="<c:url value="/resources/js/main.js"/>"></script>
</body>
</html>