<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare | Pending Booking Detail</title>
<link rel="stylesheet" type="text/css" href="<c:url value="//resources/css/MedicalCheckUp.css"/>">
</head>
<body>
	<%@ include file="../shareFiles/header.jsp"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
			<h1>PENDING BOOKING</h1>
			<div class="checkUp_form">
						<h1 id="main_header_patient"
							style="text-align: center; margin-top: 10px;">Patient
							Information</h1>
						<div class="details">
							Name: Lisa<br> Age: 25<br> Gender: Female<br>
							Phone Number: 010-1234567<br> IC Number: 000111-01-0101<br>
							<br>
							<br>
						</div>
							<h1 id="main_header_patient"
								style="text-align: center; margin-top: 10px;">Booking
								Information</h1>
						<div class="details">	
							Request Date: 18/11/2022<br> Request Time: Morning<br>
							<form action="" method="">
								Assign appointment time: <input type="time" name="time"><br>
								<br>
								<br>
							</form>
						</div>
					</div>
					<div style="display: flex; justify-content: center;">
						<div class="centerBtn">
							<a href=""><button class="btn btn-primary m-3 mb-5 shadow-lg">Reject</button></a>
							<a href=""><button class="btn btn-primary m-3 mb-5 shadow-lg">Accept</button></a>
						</div>

					</div>
				</div>
			</div>
		</div></div>
		<%@ include file="../shareFiles/footer.jsp"%>
</body>
</html>