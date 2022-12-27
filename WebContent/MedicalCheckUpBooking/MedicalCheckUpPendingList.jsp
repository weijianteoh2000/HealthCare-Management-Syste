<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare | Pending Booking List</title>
<link rel="stylesheet" type="text/css" href="MedicalCheckUp.css">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css">
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
					<h1>PENDING BOOKING</h1>
				</div>

				<div class="main-content-item main-content">
					<!--Put your Page Content here-->
					<h1 id="main_header">Booking Status List</h1>
					<div class="pendingList_table">
						<table id="pendingList_table">
						<tr>
						<th>No.</th>
						<th>Date</th>
						<th>Status</th>
						<th></th>
						</tr>
							<tr>
								<td>1. </td>
								<td class="date">19/11/2022 Morning</td>
								<td>Pending</td>
								<td><button class="modifyButton">Details</button></td>
							</tr>
							<tr>
								<td>2. </td>
								<td class="date">18/11/2022 Morning</td>
								<td>Pending</td>
								<td><a href="MedicalCheckUpPendingDetail.jsp"><button class="modifyButton">Details</button></a></td>
							</tr>
							<tr>
								<td>3. </td>
								<td class="date">17/11/2022 Morning</td>
								<td>Pending</td>
								<td><button class="modifyButton">Details</button></td>
							</tr>
						</table>
					</div>
					
				</div>
			</div>
			<%@ include file="../shareFiles/footer.html"%>
		</div>
	</div>
</body>
</html>