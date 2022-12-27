<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare|Add Booking</title>
<link rel="stylesheet" type="text/css" href="MedicalCheckUp.css">
<style>
table,th,td{
	padding:10px;
}
</style>
</head>
<body>
	<%@ include file="../shareFiles/header.html"%>
	<div class="content">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="content-item page">
			<div class="main-content-container">
				<div class="main-content-item main-title">
					<!--Put your Page Title here-->
					<h1>Booking</h1>
				</div>

				<div class="main-content-item main-content">
					<!--Put your Page Content here-->
					Please input at least one set of date and time that you wish to
					make the appointment <br>
					<form action="MedicalCheckUpApplicationList.jsp" method="post">
						<table>
							<tr>
								<th>Date 1:</th>
								<td><input type="date" name="date1"></td>
							</tr>
							<tr>
								<th>Time 1:</th>
								<td><input type="radio" name="time1">Morning<input
									type="radio" name="time1">Afternoon<input type="radio"
									name="time1">Night</td>
							</tr>
							<tr>
								<th>Date 2:</th>
								<td><input type="date" name="date2"></td>
							</tr>
							<tr>
								<th>Time 2:</th>
								<td><input type="radio" name="time2">Morning<input
									type="radio" name="time2">Afternoon<input type="radio"
									name="time2">Night</td>
							</tr>
							<tr>
								<th>Date 3:</th>
								<td><input type="date" name="date3"></td>
							</tr>
							<tr>
								<th>Time 3:</th>
								<td><input type="radio" name="time3">Morning<input
									type="radio" name="time3">Afternoon<input type="radio"
									name="time3">Night</td>
							</tr>

						</table>
						<div class="centerBtn">
						<input type="submit" value="cancel">
						<input type="submit" value="submit">
						</div>
					</form>


				</div>
			</div>
			<%@ include file="../shareFiles/footer.html"%>


		</div>
	</div>
</body>
</html>