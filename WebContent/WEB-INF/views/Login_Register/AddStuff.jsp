<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare | Add Stuff</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/addStuff.css"/>">
</head>
<body>
	<%@ include file="../shareFiles/header.jsp"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
			<h1>Add Stuff</h1>
			<br>
			<div class="bg-white rounded-3 p-3 py-2 mb-3 shadow">
					
						<form action="../profile/addStuff" method="post">
							<!-- Name input -->
							<div class="form-outline mb-4">
								<input type="text" name="firstName" class="form-control" required/>
								<label class="form-label" for="firstName">First Name</label>
							</div>

							<div class="form-outline mb-4">
								<input type="text" name="lastName" class="form-control" required/>
								<label class="form-label" for="lastName">Last
									Name</label>
							</div>
							
							<div class="form-outline mb-4">
								<input type="text" name="age" class="form-control" required/>
								<label class="form-label" for="age">Age</label>
							</div>
							
							<div class="form-outline mb-4">
								<input type="text" name="gender" class="form-control" required/>
								<label class="form-label" for="gender">Gender</label>
							</div>
							
							<div class="form-outline mb-4">
								<input type="text" name="phone" class="form-control" required/>
								<label class="form-label" for="phone">Phone Number</label>
							</div>
							
							<div class="form-outline mb-4">
								<input type="text" name="occupation" class="form-control" required/>
								<label class="form-label" for="occupation">Occupation</label>
							</div>
							
							<div class="form-outline mb-4">
								<input type="text" name="ic" class="form-control" required/>
								<label class="form-label" for="ic">IC Number</label>
							</div>
							
							<div class="form-outline mb-4">
								<input type="text" name="address" class="form-control" required/>
								<label class="form-label" for="address">Address</label>
							</div>

							<!-- Email input -->
							<div class="form-outline mb-4">
								<input type="email" name="email" class="form-control" required/>
								<label class="form-label" for="email">Email</label>
							</div>
							
							<!-- User Name input -->
							<div class="form-outline mb-4">
								<input type="text" name="username" class="form-control" required/>
								<label class="form-label" for="username">User Name</label>
							</div>
							
							<!-- Password input -->
							<div class="form-outline mb-4">
								<input type="password" name="password"
									class="form-control" /> <label class="form-label"
									for="registerPassword" required>Password</label>
							</div>

							<!-- Repeat Password input -->
							<div class="form-outline mb-4">
								<input type="password" name="confirmPassword"
									class="form-control" /> <label class="form-label"
									for="registerConfirmPassword" required>Confirm password</label>
							</div>
							
							<!-- Repeat Password input -->
							<div class="form-outline mb-4">
								<select name="userType"
									id="quantity" class="dropbtn">
										<option value="customer">customer</option>
										<option value="doctor">doctor</option>
										<option value="pharmacist">pharmacist</option>
										<option value="admin">admin</option>
								</select>
								 <label class="form-label"
									for="registerConfirmPassword">User Type</label>
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

	<script>
		function alertMessage() {
			alert("Your account has successfully registered !!");
		}
	</script>
</body>
</html>