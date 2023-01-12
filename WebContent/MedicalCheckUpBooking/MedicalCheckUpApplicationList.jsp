<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare | Booking Waiting List</title>
<link rel="stylesheet" type="text/css" href="MedicalCheckUp.css">
<link rel="stylesheet" type="text/css" href="../OrderManagement/order.css">
</head>
<body>
	<%@ include file="../shareFiles/header.html"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
				<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded" data-wow-delay="0.1s">
					<h1>Application List</h1>
					<div class="bg-white rounded-3 p-3 py-2 mb-3 shadow">
						<table class="table table-striped table-hover">
						<thead>
						<tr class="text-dark">
						<th>No.</th>
						<th>Date</th>
						<th>Status</th>
						<th></th>
						</tr>
						</thead>
						<tbody class="align-middle text-secondary">
							<tr>
								<td>1.</td>
								<td class="date">19/11/2022 Morning</td>
								<td class="pending">Pending</td>
								<td><button class="btn btn-outline-dark rounded p-1 border border-2 border-dark">Details</button></td>
							</tr>
							<tr>
								<td>2.</td>
								<td class="date">18/11/2022 Morning 11.00am</td>
								<td><label class="accept">Approve</label></td>
								<td><button class="btn btn-outline-dark rounded p-1 border border-2 border-dark">Details</button></td>
							</tr>
							<tr>
								<td>3.</td>
								<td class="date">17/11/2022 Morning</td>
								<td><label class="reject">Reject</label></td>
								<td><button class="btn btn-outline-dark rounded p-1 border border-2 border-dark">Details</button></td>
							</tr>
							</tbody>
						</table>
					</div>
					<div class="justify-content-center d-flex">
						<a href="MedicalCheckUpApplicationAdding.jsp"><button class="btn btn-primary m-3 mb-5 shadow-lg ">Add New Application</button></a>
					</div>
				</div>
			</div>
	<%@ include file="../shareFiles/footer.html"%>
</body>
</html>