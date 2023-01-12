<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css">
<link rel="stylesheet" type="text/css" href="history.css">
<title>Health Care Management | Manage Order</title>
</head>
<body>
	<%@ include file="../shareFiles/header.html"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
						<h1>HISTORY</h1>
						<div class="bg-white rounded-3 p-3 py-2 mb-3 shadow mb-5">
							<table class="table table-striped table-hover">
							<thead>
								<tr class="text-dark text-center">
									<th>No.</th>
									<th>Name</th>
									<th>Last Visit Date</th>
									<th>Category</th>
									<th>Doctor Assigned</th>
									<th></th>
									<th></th>
									<th></th>
								</tr>
								</thead>
								<tbody class="align-middle text-secondary">
								<tr id="row1">
									<td>1.</td>
									<td>Ali Saifuddin Bin Mohd Yasir</td>
									<td>11/02/2021</td>
									<td>Emergency</td>
									<td>Dr Lee</td>
									<td><a href="history.jsp"><button
												class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark">
												<ion-icon name="search-sharp"></ion-icon>
											</button></a></td>
								 	<td><a href="updatePrescription.jsp"><button
												class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark">
												<ion-icon name="create-outline"></ion-icon>
											</button></a></td>
									<td id="phar_manage_order_table_rejectBtn"><button
											class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark"
											onClick="rejectPrescription()">
											<ion-icon name="trash-bin-outline"></ion-icon>
										</button> </ion-icon></td>
								</tr>
								<tr>
									<td>2.</td>
									<td>Lim Ah Beng</td>
									<td>23/04/2021</td>
									<td>Specialty</td>
									<td>Dr Ahmad</td>
									<td><a href="history.jsp"><button
												class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark">
												<ion-icon name="search-sharp"></ion-icon>
											</button></a></td>
									<td><a href="updatePrescription.jsp"><button
												class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark">
												<ion-icon name="create-outline"></ion-icon>
											</button></a></td>
									<td><button class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark"
											onClick="rejectPrescription()">
											<ion-icon name="trash-bin-outline"></ion-icon>
										</button> </ion-icon></td>
								</tr>
								<tr>
									<td>3.</td>
									<td>Siti Nur Aisyah Binti Salahudin</td>
									<td>23/04/2021</td>
									<td>Emergency</td>
									<td>Dr Ahmad</td>
									<td><a href="updatePrescription.jsp"><button
												class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark">
												<ion-icon name="search-sharp"></ion-icon>
											</button></a></td>
									<td><a href="EditOrderPending.jsp"><button
												class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark">
												<ion-icon name="create-outline"></ion-icon>
											</button></a></td>
									<td><button class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark"
											onClick="rejectPrescription()">
											<ion-icon name="trash-bin-outline"></ion-icon>
										</button></td>
								</tr>
								<tr>
									<td>4.</td>
									<td>Ramesh Sashi A/L Sashi Kumar</td>
									<td>10/10/2022</td>
									<td>Primary</td>
									<td>Dr Jane</td>
									<td><a href="updatePrescription.jsp"><button
												class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark">
												<ion-icon name="search-sharp"></ion-icon>
											</button></a></td>
									<td><a href="EditOrderPending.jsp"><button
												class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark">
												<ion-icon name="create-outline"></ion-icon>
											</button></a></td>
									<td><button class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark"
											onClick="rejectPrescription()">
											<ion-icon name="trash-bin-outline"></ion-icon>
										</button></td>
								</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../shareFiles/footer.html"%>
	<script type="module"
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
	<script type="text/javascript">
		function rejectPrescription() {
			alert("Are you sure to delete this prescription?")
		}
	</script>
</body>
</html>
