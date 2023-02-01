<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare | Add Booking</title>
<link rel="stylesheet" type="text/css" href="MedicalCheckUp.css">
<link rel="stylesheet" type="text/css"
	href="../OrderManagement/order.css">
</head>
<body>
	<%@ include file="../shareFiles/header.jsp"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded" data-wow-delay="0.1s">
					<h1 id="main_header_makeNewBooking">Make New Booking</h1>
					<div class="d-flex justify-content-center">
					<div class="bg-white rounded-3 p-3 py-2 mb-3 shadow w-auto d-flex justify-content-around">
						<form action="MedicalCheckUpApplicationList.jsp" method="post">
							<table class="table table-borderless">
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
					</div>
					<div class="d-flex justify-content-center">
						<div class="centerBtn">
							<a href="MedicalCheckUpApplicationList.jsp"><button
									class="btn btn-primary m-3 mb-5 shadow-lg ">Cancel</button></a> <a
								href="MedicalCheckUpApplicationList.jsp"><button
									class="btn btn-primary m-3 mb-5 shadow-lg ">Submit</button></a>
						</div>
					</div>
			</div>
			</div>
			<%@ include file="../shareFiles/footer.jsp"%>
</body>
</html>