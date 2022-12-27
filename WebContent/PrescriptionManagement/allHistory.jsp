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
	<div class="content">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="content-item page">
			<div class="main-content-container">
				<div class="main-content-item main-title">
					<!--Put your Page Title here-->
					<h1>PRESCRIPTION HISTORY</h1>
				</div>
				<div class="main-content-item main-content">
					<div class="main">
						<h1 id="main_header">HISTORY</h1>
						<div class="phar_manage_order_table">
							<table id="phar_manage_order_table">
								<tr>
									<th>No.</th>
									<th>Name</th>
									<th>Last Visit Date</th>
									<th>Category</th>
									<th>Doctor Assigned</th>
									<th></th>
									<th></th>
									<th></th>
								</tr>
								<tr id="row1">
									<td>1.</td>
									<td>Ali Saifuddin Bin Mohd Yasir</td>
									<td>11/02/2021</td>
									<td>Emergency</td>
									<td>Dr Lee</td>
									<td><a href="history.jsp"><button
												class="phar_manage_order_table_editBtn">
												<ion-icon name="search-sharp"></ion-icon>
											</button></a></td>
								 	<td><a href="updatePrescription.jsp"><button
												class="phar_manage_order_table_editBtn">
												<ion-icon name="create-outline"></ion-icon>
											</button></a></td>
									<td id="phar_manage_order_table_rejectBtn"><button
											class="phar_manage_order_table_rejectBtn"
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
												class="phar_manage_order_table_editBtn">
												<ion-icon name="search-sharp"></ion-icon>
											</button></a></td>
									<td><a href="updatePrescription.jsp"><button
												class="phar_manage_order_table_editBtn">
												<ion-icon name="create-outline"></ion-icon>
											</button></a></td>
									<td><button class="phar_manage_order_table_rejectBtn"
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
												class="phar_manage_order_table_editBtn">
												<ion-icon name="search-sharp"></ion-icon>
											</button></a></td>
									<td><a href="EditOrderPending.jsp"><button
												class="phar_manage_order_table_editBtn">
												<ion-icon name="create-outline"></ion-icon>
											</button></a></td>
									<td><button class="phar_manage_order_table_rejectBtn"
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
												class="phar_manage_order_table_editBtn">
												<ion-icon name="search-sharp"></ion-icon>
											</button></a></td>
									<td><a href="EditOrderPending.jsp"><button
												class="phar_manage_order_table_editBtn">
												<ion-icon name="create-outline"></ion-icon>
											</button></a></td>
									<td><button class="phar_manage_order_table_rejectBtn"
											onClick="rejectPrescription()">
											<ion-icon name="trash-bin-outline"></ion-icon>
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
		function rejectPrescription() {
			alert("Are you sure to delete this prescription?")
		}
	</script>
</body>
</html>
