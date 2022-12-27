<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css">
<link rel="stylesheet" type="text/css" href="order.css">
<title>HealthCare | Manage Order</title>
</head>
<body>
	<%@ include file="../shareFiles/header.html"%>
	<div class="content">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="content-item page">
			<div class="main-content-container">
				<div class="main-content-item main-title">
					<!--Put your Page Title here-->
					<h1>ORDER LIST</h1>
				</div>
				<div class="main-content-item main-content">
					<div class="main">
						<h1 id="main_header">Manage Order</h1>
						<div class="cust_manage_order_table">
							<table id="cust_manage_order_table">
								<tr>
									<th>No.</th>
									<th>Item</th>
									<th>Quantity</th>
									<th>Unit Price</th>
									<th>Status</th>
									<th></th>
								</tr>
								<tr id="row1">
									<td>1.</td>
									<td>Panodol Actifast 10s Compack</td>
									<td id="cust_manage_order_table_quantity">1</td>
									<td id="cust_manage_order_table_unitPrice">RM 13:50</td>
									<td id="cust_manage_order_table_status"><button
											class="cust_manage_order_table_statusBtn_Delivered">Delivered</button></td>
									<td><a href="EditOrder.jsp"><button
												class="cust_manage_order_table_editBtn">
												<ion-icon name="create-outline"></ion-icon>
											</button></a></td>
									<td id="cust_manage_order_table_cancelOrderBtn"><button
											class="cust_manage_order_table_cancelOrderBtn"
											onClick="cancelOrder()">
											<ion-icon name="bag-remove-outline"></ion-icon>
										</button> </ion-icon></td>
								</tr>
								<tr>
									<td>2.</td>
									<td>NewGene-Saliva/Nasal 2-in-1 Covid-19 Home Self Antigen
										Test Kit(RTK)</td>
									<td id="cust_manage_order_table_quantity">5</td>
									<td id="cust_manage_order_table_unitPrice">RM 10:70</td>
									<td id="cust_manage_order_table_status"><button
											class="cust_manage_order_table_statusBtn_Shipping">Shipping</button></td>
									<td><a href="EditOrder.jsp"><button
												class="cust_manage_order_table_editBtn">
												<ion-icon name="create-outline"></ion-icon>
											</button></a></td>
									<td><button class="cust_manage_order_table_cancelOrderBtn"
											onClick="cancelOrder()">
											<ion-icon name="bag-remove-outline"></ion-icon>
										</button> </ion-icon></td>
								</tr>
								<tr>
									<td>3.</td>
									<td>WOODS' Peppermint Cough Syrup for Adult 100ml</td>
									<td id="cust_manage_order_table_quantity">1</td>
									<td id="cust_manage_order_table_unitPrice">RM 9:50</td>
									<td id="cust_manage_order_table_status"><button
											class="cust_manage_order_table_statusBtn_Preparing">Preparing</button></td>
									<td><a href="EditOrder.jsp"><button
												class="cust_manage_order_table_editBtn">
												<ion-icon name="create-outline"></ion-icon>
											</button></a></td>
									<td><button class="cust_manage_order_table_cancelOrderBtn"
											onClick="cancelOrder()">
											<ion-icon name="bag-remove-outline"></ion-icon>
										</button></td>
								</tr>
								<tr>
									<td>4.</td>
									<td>Listerine Sakura & Peach Zest 500ml</td>
									<td id="cust_manage_order_table_quantity">1</td>
									<td id="cust_manage_order_table_unitPrice">RM 11:70</td>
									<td id="cust_manage_order_table_status"><button
											class="cust_manage_order_table_statusBtn_Preparing">Preparing</button></td>
									<td><a href="EditOrder.jsp"><button
												class="cust_manage_order_table_editBtn">
												<ion-icon name="create-outline"></ion-icon>
											</button></a></td>
									<td><button class="cust_manage_order_table_cancelOrderBtn"
											onClick="cancelOrder()">
											<ion-icon name="bag-remove-outline"></ion-icon>
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
		function cancelOrder() {
			alert("Are you sure to cancel this order?")
		}
	</script>
</body>
</html>