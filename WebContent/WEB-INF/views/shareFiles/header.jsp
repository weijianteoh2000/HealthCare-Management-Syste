<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
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

<link href="<c:url value="//resources/lib/animate/animate.min.css"/>" rel="stylesheet">
<link href="<c:url value="//resources/lib/owlcarousel/assets/owl.carousel.min.css"/>"
	rel="stylesheet">
<link href="<c:url value="//resources/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"/>"
	rel="stylesheet" />

<!-- Customized Bootstrap Stylesheet -->
<link href="<c:url value="//resources/css/bootstrap.min.css"/>" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="<c:url value="//resources/css/style.css"/>" rel="stylesheet">

</head>
<body >

<!-- Spinner Start -->
	<div id="spinner"
		class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner-grow text-primary"
			style="width: 3rem; height: 3rem;" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>
	<!-- Spinner End -->

	<!-- Navbar Start -->
	<nav
		class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0 wow fadeIn"
		data-wow-delay="0.1s">
		<a href="../shareFiles/HomePage.jsp"
			class="navbar-brand d-flex align-items-center pe-4 pe-lg-5 ps-3">
			<h1 class="m-0 text-primary">
				<img style='margin-right: 20px;' width="50px" height="50px"
					src="<c:url value="//resources/img/logo-black-bigger-removebg-preview.png"/>">Health Era
			</h1>
		</a>
		<button type="button" class="navbar-toggler me-4"
			data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<div class="navbar-nav ms-auto p-4 p-lg-0">
				<div class="nav-item dropdown">
					<a href="#" class="nav-link dropdown-toggle py-1 h1"
						data-bs-toggle="dropdown"><i class="bi bi-person fa-lg h1"></i></a>
					<div class="dropdown-menu rounded-0 rounded-bottom m-0">
						<a href="<c:url value="/pages/userProfile"/>" class="dropdown-item">Profile</a> <a
							href="../index.jsp" class="dropdown-item">Logout</a>
					</div>
				</div>
			</div>
		</div>
	</nav>
	<!-- Navbar End -->

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="<c:url value="../resources/lib/wow/wow.min.js"/>"></script>
	<script src="<c:url value="../resources/lib/easing/easing.min.js"/>"></script>
	<script src="<c:url value="../resources/lib/waypoints/waypoints.min.js"/>"></script>
	<script src="<c:url value="../resources/lib/counterup/counterup.min.js"/>"></script>
	<script src="<c:url value="../resources/lib/owlcarousel/owl.carousel.min.js"/>"></script>
	<script src="<c:url value="../resources/lib/tempusdominus/js/moment.min.js"/>"></script>
	<script src="<c:url value="../resources/lib/tempusdominus/js/moment-timezone.min.js"/>"></script>
	<script src="<c:url value="../resources/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"/>"></script>

	<!-- Template Javascript -->
	<script src="<c:url value="../resources/js/main.js"/>"></script>

</body>
</html>