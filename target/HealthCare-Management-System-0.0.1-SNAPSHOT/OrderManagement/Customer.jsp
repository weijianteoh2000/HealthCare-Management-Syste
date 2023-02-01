<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css">
<link rel="stylesheet" type="text/css" href="order.css">
<title>HealthCare | Customer Management</title>
</head>
<body>
	<%@ include file="../shareFiles/header.jsp"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
					<h1>Customer List</h1>
						<div class="bg-white rounded-3 p-3 py-2 mb-3 shadow mb-5">
							<table class="table table-striped table-hover">
							<thead>
								<tr class="text-dark text-center">
									<th>No.</th>
									<th>Name</th>
									<th>Registered Date</th>
									<th>Last Order Date</th>
									<th>Number of Order</th>
									<th></th>
								</tr>
								</thead>
								<tbody class="align-middle text-secondary">
								<tr id="row1">
									<td class="text-dark">1.</td>
									<td>Ali Saifuddin Bin Mohd Yassir</td>
									<td id="customer_details_table_rgtDate">01/02/2021</td>
									<td id="customer_details_table_lastOrderDate">10/11/2022</td>
									<td id="customer_details_table_numOrder">19</td>
									<td><a href="EditCustomer.jsp"><button class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark">
											<ion-icon name="create-outline"></ion-icon>
										</button></a></td>
									<td id="customer_details_table_trashBtn"><button class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark" onClick="dltCustomer()">
											<ion-icon name="trash-outline"></ion-icon>
										</button></ion-icon></td>
								</tr>
								<tr>
									<td class="text-dark">2.</td>
									<td>Lim Ah Beng</td>
									<td id="customer_details_table_rgtDate">23/04/2021</td>
									<td id="customer_details_table_lastOrderDate">13/11/2022</td>
									<td id="customer_details_table_numOrder">5</td>
									<td><a href="EditCustomer.jsp"><button class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark">
											<ion-icon name="create-outline"></ion-icon>
										</button></a></td>
									<td><button class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark" onClick="dltCustomer()">
											<ion-icon name="trash-outline"></ion-icon>
										</button></ion-icon></td>
								</tr>
								<tr>
									<td class="text-dark">3.</td>
									<td>Siti Nur Aisyah Binti Salahudin</td>
									<td id="customer_details_table_rgtDate">23/04/2022</td>
									<td id="customer_details_table_lastOrderDate">14/11/2022</td>
									<td id="customer_details_table_numOrder">10</td>
									<td><a href="EditCustomer.jsp"><button class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark">
											<ion-icon name="create-outline"></ion-icon>
										</button></a></td>
									<td><button class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark" onClick="dltCustomer()">
											<ion-icon name="trash-outline"></ion-icon>
										</button></td>
								</tr>
								<tr>
									<td class="text-dark">4.</td>
									<td>Ramesh Sashi A/L Sashi Kumar</td>
									<td id="customer_details_table_rgtDate">10/10/2022</td>
									<td id="customer_details_table_lastOrderDate">01/11/2022</td>
									<td id="customer_details_table_numOrder">1</td>
									<td><a href="EditCustomer.jsp"><button class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark">
											<ion-icon name="create-outline"></ion-icon>
										</button></a></td>
									<td><button class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark" onClick="dltCustomer()">
											<ion-icon name="trash-outline"></ion-icon>
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
	<%@ include file="../shareFiles/footer.jsp"%>
	<script type="module"
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
		<script type="text/javascript">
		function dltCustomer() {
			alert("Are you sure to delete this customer?")
		}
	</script>
</body>
</html>