<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css">
<link rel="stylesheet" type="text/css" href="order.css">
<title>Health Care Management | Customer Management</title>
</head>
<body>
	<%@ include file="../shareFiles/header.html"%>
	<div class="content">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="content-item page">
			<div class="main-content-container">
				<div class="main-content-item main-title">
					<!--Put your Page Title here-->
					<h1>CUSTOMER LIST</h1>
				</div>
				<div class="main-content-item main-content">
					<div class="main">
					<h1 id="main_header">Customer Details</h1>
						<div class="customer_details_table">
							<table id="customer_details_table">
								<tr>
									<th>No.</th>
									<th>Name</th>
									<th>Registered Date</th>
									<th>Last Order Date</th>
									<th>Number of Order</th>
									<th></th>
								</tr>
								<tr id="row1">
									<td>1.</td>
									<td>Ali Saifuddin Bin Mohd Yassir</td>
									<td id="customer_details_table_rgtDate">01/02/2021</td>
									<td id="customer_details_table_lastOrderDate">10/11/2022</td>
									<td id="customer_details_table_numOrder">19</td>
									<td><a href="EditCustomer.jsp"><button class="customer_details_table_editBtn">
											<ion-icon name="create-outline"></ion-icon>
										</button></a></td>
									<td id="customer_details_table_trashBtn"><button class="customer_details_table_trashBtn" onClick="dltCustomer()">
											<ion-icon name="trash-outline"></ion-icon>
										</button></ion-icon></td>
								</tr>
								<tr>
									<td>2.</td>
									<td>Lim Ah Beng</td>
									<td id="customer_details_table_rgtDate">23/04/2021</td>
									<td id="customer_details_table_lastOrderDate">13/11/2022</td>
									<td id="customer_details_table_numOrder">5</td>
									<td><a href="EditCustomer.jsp"><button class="customer_details_table_editBtn">
											<ion-icon name="create-outline"></ion-icon>
										</button></a></td>
									<td><button class="customer_details_table_trashBtn" onClick="dltCustomer()">
											<ion-icon name="trash-outline"></ion-icon>
										</button></ion-icon></td>
								</tr>
								<tr>
									<td>3.</td>
									<td>Siti Nur Aisyah Binti Salahudin</td>
									<td id="customer_details_table_rgtDate">23/04/2022</td>
									<td id="customer_details_table_lastOrderDate">14/11/2022</td>
									<td id="customer_details_table_numOrder">10</td>
									<td><a href="EditCustomer.jsp"><button class="customer_details_table_editBtn">
											<ion-icon name="create-outline"></ion-icon>
										</button></a></td>
									<td><button class="customer_details_table_trashBtn" onClick="dltCustomer()">
											<ion-icon name="trash-outline"></ion-icon>
										</button></td>
								</tr>
								<tr>
									<td>4.</td>
									<td>Ramesh Sashi A/L Sashi Kumar</td>
									<td id="customer_details_table_rgtDate">10/10/2022</td>
									<td id="customer_details_table_lastOrderDate">01/11/2022</td>
									<td id="customer_details_table_numOrder">1</td>
									<td><a href="EditCustomer.jsp"><button class="customer_details_table_editBtn">
											<ion-icon name="create-outline"></ion-icon>
										</button></a></td>
									<td><button class="customer_details_table_trashBtn" onClick="dltCustomer()">
											<ion-icon name="trash-outline"></ion-icon>
										</button></td>
								</tr>
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
		function dltCustomer() {
			alert("Are you sure to delete this customer?")
		}
	</script>
</body>
</html>