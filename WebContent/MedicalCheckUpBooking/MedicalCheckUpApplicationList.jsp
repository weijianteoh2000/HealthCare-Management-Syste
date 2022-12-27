<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare|Booking Waiting List</title>
<link rel="stylesheet" type="text/css" href="MedicalCheckUp.css">
<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

table {
	width: 100%;
}
</style>
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
					<h1>Booking</h1>
				</div>

				<div class="main-content-item main-content">
					<!--Put your Page Content here-->
					This page will shows the booking status of each of your medical
					check up application <br>
					<div class="tableList">
						<table>
							<tr>
								<th>1.</th>
								<th class="date">19/11/2022 Morning</th>
								<th>Pending</th>
								<th><button>Details</button></th>
							</tr>
							<tr>
								<th>2.</th>
								<th class="date">18/11/2022 Morning 11.00am</th>
								<th><label class="accept">Approve</label></th>
								<th><button>Details</button></th>
							</tr>
							<tr>
								<th>3.</th>
								<th class="date">17/11/2022 Morning</th>
								<th><label class="reject">Reject</label></th>
								<th><button>Details</button></th>
							</tr>
						</table>
						<a href="MedicalCheckUpApplicationAdding.jsp"><button>Add New Booking Application</button></a>
					</div>

				</div>
			</div>
			<%@ include file="../shareFiles/footer.html"%>


		</div>
	</div>
</body>
</html>