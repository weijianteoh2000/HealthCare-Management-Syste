<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare | Pending Booking Detail</title>
<link rel="stylesheet" type="text/css" href="MedicalCheckUp.css">
</head>
<body>
	<%@ include file="../shareFiles/header.html"%>
	<div class="content">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="content-item page">
			<div class="main-content-container">
				<div class="main-content-item main-title">
					<!--Put your Page Title here-->
					<h1>PENDING BOOKING</h1>
				</div>

				<div class="main-content-item main-content">
					<!--Put your Page Content here-->
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
							<a href=""><button class="submitNewApplication_submit_button">Reject</button></a>
							<a href=""><button class="cancelNewApplication_submit_button">Accept</button></a>
						</div>
					</div>
				</div>
				<%@ include file="../shareFiles/footer.html"%>
			</div>
		</div>
</body>
</html>