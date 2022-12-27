<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare|Pending Booking Detail</title>
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
					<h1>Pending medical check up booking</h1>
				</div>

				<div class="main-content-item main-content">
					<!--Put your Page Content here-->
					This page will shows the booking status of each of your medical check up application <br>
					<h3>Patient Information</h3>
					Name: Lisa<br>
					Age: 25<br>
					Gender: Female<br>
					Phone Number: 010-1234567<br>
					IC Number: 000111-01-0101<br>
					<h3>Booking Information</h3>
					Request Date: 18/11/2022<br>
					Request Time: Morning<br>
					<form action="" method="">
					Assign appointment time:<input type="time" name="time"><br>
					Assign doctor:
					<select name="assigned_doctor">
					<option value="Alice">Alice</option>
					<option value="Millie">Milli</option>
					<option value="Brandon">Brandon</option>
					</select>
					<br><br><br>
					<div class="centerBtn">
					<input type="submit" value="Reject">
					<input type="submit" value="Accept">
					</div>
					</form>
				</div>
			</div>
			<%@ include file="../shareFiles/footer.html"%>
		</div>
	</div>
</body>
</html>