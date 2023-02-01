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
<%@ include file="../shareFiles/header.jsp"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
			<h1>Booking Status List</h1>
					<div class="bg-white rounded-3 p-3 py-2 mb-3 shadow w-75 mx-auto">
						<table class="table table-striped table-hover">
						<thead class="text-dark text-center">
						<tr>
						<th>No.</th>
						<th>Date</th>
						<th>Status</th>
						<th></th>
						</tr>
						</thead>
						<tbody>
							<tr>
								<td>1. </td>
								<td class="date">19/11/2022 Morning</td>
								<td>Pending</td>
								<td><button class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark">Details</button></td>
							</tr>
							<tr>
								<td>2. </td>
								<td class="date">18/11/2022 Morning</td>
								<td>Pending</td>
								<td><a href="MedicalCheckUpPendingDetail.jsp"><button class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark">Details</button></a></td>
							</tr>
							<tr>
								<td>3. </td>
								<td class="date">17/11/2022 Morning</td>
								<td>Pending</td>
								<td><button class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark">Details</button></td>
							</tr>
							</tbody>
						</table>
					</div>
					
				</div>
			</div>
			<%@ include file="../shareFiles/footer.jsp"%>
		</div>
	</div>
</body>
</html>