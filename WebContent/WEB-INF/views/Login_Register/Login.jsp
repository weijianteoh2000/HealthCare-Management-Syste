<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare | Login</title>
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
					src="<c:url value="//resources/img/logo-black-bigger-removebg-preview.png"/>">Health Era
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
			<a href="Login.jsp"
				class="btn btn-primary rounded-0 py-4 px-lg-5 d-none d-lg-block">Login
				/ Register<i class="fa fa-arrow-right ms-3"></i>
			</a>
		</div>
	</nav>
	<!-- Navbar End -->
	
	<div class="mt-1 wow fadeInUp mx-auto" style="width: 500px;"
		data-wow-delay="0.5s">
		<div class="bg-light mt-5 center rounded h-100 align-items-center p-5 mb-5">
			<div class="row">
				<div class="mb-5 d-flex justify-content-center gap-5">
					<button type="button" data-bs-target="#carouselExampleDark"
						data-bs-slide-to="0" class="btn btn-primary w-25"
						aria-current="true" aria-label="Slide 1">Login</button>
					<button type="button" data-bs-target="#carouselExampleDark"
						data-bs-slide-to="1" class="btn btn-primary w-25"
						aria-label="Slide 2">Register</button>
				</div>
			</div>
			<div id="carouselExampleDark" class="carousel carousel-dark slide">
				<div class="carousel-inner">
					<div class="carousel-item active" data-bs-interval="10000">
						<form name="login" method="POST" action="../login/validate">

							<!-- Email input -->
							<div class="form-outline mb-4">
								<input type="text" name="username" id="loginName"
									class="form-control" required /> <label class="form-label"
									for="loginName">Username</label>
							</div>

							<!-- Password input -->
							<div class="form-outline mb-4">
								<input type="password" name="password" id="loginPassword"
									class="form-control" required /> <label class="form-label"
									for="loginPassword">Password</label>
							</div>

							<!-- 2 column grid layout -->
							<div class="row mb-4">
								<div class="col-md-6 d-flex justify-content-center">
									<!-- Checkbox -->
									<div class="form-check mb-3 mb-md-0">
										<input class="form-check-input" type="checkbox" value=""
											id="loginCheck" checked /> <label class="form-check-label"
											for="loginCheck"> Remember me </label>
									</div>
								</div>

								<div class="col-md-6 d-flex justify-content-center">
									<!-- Simple link -->
									<a href="#!">Forgot password?</a>
								</div>
							</div>

							<!-- Submit button -->
							<button type="submit"
								class="btn btn-primary btn-block mb-4 w-100 py-3">Log
								in</button>
						</form>
					</div>
					<div class="carousel-item" data-bs-interval="2000">
						<form action="../profile/add" method="post">
							<!-- Name input -->
							<div class="form-outline mb-4">
								<input type="text" name="firstName" class="form-control" />
								<label class="form-label" for="firstName">First Name</label>
							</div>

							<div class="form-outline mb-4">
								<input type="text" name="lastName" class="form-control" />
								<label class="form-label" for="lastName">Last
									Name</label>
							</div>
							
							<div class="form-outline mb-4">
								<input type="text" name="age" class="form-control" />
								<label class="form-label" for="age">Age</label>
							</div>
							
							<div class="form-outline mb-4">
								<input type="text" name="gender" class="form-control" />
								<label class="form-label" for="gender">Gender</label>
							</div>
							
							<div class="form-outline mb-4">
								<input type="text" name="phone" class="form-control" />
								<label class="form-label" for="phone">Phone Number</label>
							</div>
							
							<div class="form-outline mb-4">
								<input type="text" name="occupation" class="form-control" />
								<label class="form-label" for="occupation">Occupation</label>
							</div>
							
							<div class="form-outline mb-4">
								<input type="text" name="ic" class="form-control" />
								<label class="form-label" for="ic">IC Number</label>
							</div>
							
							<div class="form-outline mb-4">
								<input type="text" name="address" class="form-control" />
								<label class="form-label" for="address">Address</label>
							</div>

							<!-- Email input -->
							<div class="form-outline mb-4">
								<input type="email" name="email" class="form-control" />
								<label class="form-label" for="email">Email</label>
							</div>
							
							<!-- User Name input -->
							<div class="form-outline mb-4">
								<input type="text" name="username" class="form-control" />
								<label class="form-label" for="username">User Name</label>
							</div>
							
							<!-- Password input -->
							<div class="form-outline mb-4">
								<input type="password" name="password"
									class="form-control" /> <label class="form-label"
									for="registerPassword">Password</label>
							</div>

							<!-- Repeat Password input -->
							<div class="form-outline mb-4">
								<input type="password" name="confirmPassword"
									class="form-control" /> <label class="form-label"
									for="registerConfirmPassword">Confirm password</label>
							</div>

							<!-- Checkbox -->
							<div class="form-check d-flex justify-content-center mb-4">
								<input class="form-check-input me-2" type="checkbox" value=""
									id="registerCheck" checked
									aria-describedby="registerCheckHelpText" /> <label
									class="form-check-label" for="registerCheck"> I have
									read and agree to the terms </label>
							</div>

							<!-- Submit button -->
							<button type="submit"
								class="btn btn-primary btn-block mb-3 w-100 py-3"
								onclick="alertMessage()">Sign in</button>
						</form>
					</div>
				</div>
			</div>

		</div>
	</div>
	<%@ include file="../shareFiles/footer.jsp"%>

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="<c:url value="//resources/lib/wow/wow.min.js"/>"></script>
	<script src="<c:url value="//resources/lib/easing/easing.min.js"/>"></script>
	<script src="<c:url value="//resources/lib/waypoints/waypoints.min.js"/>"></script>
	<script src="<c:url value="//resources/lib/counterup/counterup.min.js"/>"></script>
	<script src="<c:url value="//resources/lib/owlcarousel/owl.carousel.min.js"/>"></script>
	<script src="<c:url value="//resources/lib/tempusdominus/js/moment.min.js"/>"></script>
	<script src="<c:url value="//resources/lib/tempusdominus/js/moment-timezone.min.js"/>"></script>
	<script src="<c:url value="//resources/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"/>"></script>

	<!-- Template Javascript -->
	<script src="<c:url value="//resources/js/main.js"/>"></script>
<script>
		function alertErrorMessage(value) {
			console.log(value);
			alert("Your username and password are not found !!");
		}
	</script>
<c:set var="EmptyResult" value="${EmptyResult}"/>
<c:if test="${EmptyResult != null}" >
	 <script> alertErrorMessage('${EmptyResult.toString()}') </script>
	</c:if>
	<script>
		function alertMessage() {
			alert("Your account has successfully registered !!");
		}
</script>
</body>
</html>