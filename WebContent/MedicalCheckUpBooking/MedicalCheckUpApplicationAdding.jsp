<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare | Add Booking</title>
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css">
<link rel="stylesheet" type="text/css" href="MedicalCheckUp.css">
<link rel="stylesheet" type="text/css"
	href="../OrderManagement/order.css">
</head>
<body>
	<%@ include file="../shareFiles/header.html"%>
	<div class="content">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="content-item page">
			<div class="main-content-container">
				<div class="main-content-item main-title">
					<!--Put your Page Title here-->
					<h1>BOOKING</h1>
				</div>

				<div class="main-content-item main-content">
					<!--Put your Page Content here-->
					<h1 id="main_header_makeNewBooking">Make New Booking</h1>
					<div class="newApplication_table">
						<form action="MedicalCheckUpApplicationList.jsp" method="post">
							<table id="newApplication_table">
								<tr>
									<th>Date 1:</th>
									<td><input type="date" name="date1"></td>
								</tr>
								<tr id="newApplication_time">
									<th>Time 1:</th>
									<td><input type="radio" name="time1">Morning<input
										type="radio" name="time1">Afternoon<input type="radio"
										name="time1">Night</td>
								</tr>
								<tr>
									<th>Date 2:</th>
									<td><input type="date" name="date2"></td>
								</tr>
								<tr id="newApplication_time">
									<th>Time 2:</th>
									<td><input type="radio" name="time2">Morning<input
										type="radio" name="time2">Afternoon<input type="radio"
										name="time2">Night</td>
								</tr>
								<tr>
									<th>Date 3:</th>
									<td><input type="date" name="date3"></td>
								</tr>
								<tr id="newApplication_time">
									<th>Time 3:</th>
									<td><input type="radio" name="time3">Morning<input
										type="radio" name="time3">Afternoon<input type="radio"
										name="time3">Night</td>
								</tr>

							</table>
						</form>
					</div>
					<div style="display: flex; justify-content: center;">
						<div class="centerBtn">
							<a href="MedicalCheckUpApplicationList.jsp"><button
									class="cancelNewApplication_submit_button">Cancel</button></a> <a
								href="MedicalCheckUpApplicationList.jsp"><button
									class="submitNewApplication_submit_button">Submit</button></a>
						</div>
					</div>
				</div>
			</div>
			<%@ include file="../shareFiles/footer.html"%>
		</div>


	</div>
	</div>
</body>
</html>