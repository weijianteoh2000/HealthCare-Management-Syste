<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="order.css">
<title>HealthCare | Manage Order</title>
</head>
<body>
	<%@ include file="../shareFiles/header.jsp"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
				<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded" data-wow-delay="0.1s">
						<h1>Manage Order</h1>
						<div class="bg-white rounded-3 p-3 py-2 mb-3 shadow mb-5">
							<table class="table table-striped table-hover">
							<thead>
								<tr class="text-dark">
									<th class="text-center">No.</th>
									<th class="text-center">Item</th>
									<th class="text-center">Quantity</th>
									<th class="text-center">Unit Price</th>
									<th class="text-center">Status</th>
									<th></th>
								</tr>
								</thead>
								<tbody class="align-middle text-secondary">
								<tr class="border-top" id="row1">
									<td>1.</td>
									<td class="text-start">Panodol Actifast 10s Compack</td>
									<td id="cust_manage_order_table_quantity">1</td>
									<td id="cust_manage_order_table_unitPrice">RM 13:50</td>
									<td id="cust_manage_order_table_status"><button
											class="cust_manage_order_table_statusBtn_Delivered">Delivered</button></td>
									<td><a href="EditOrder.jsp"><button
												class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark">
												<ion-icon name="create-outline"></ion-icon>
											</button></a></td>
									<td id="cust_manage_order_table_cancelOrderBtn"><button
											class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark"
											onClick="cancelOrder()">
											<ion-icon name="bag-remove-outline"></ion-icon>
										</button> </ion-icon></td>
								</tr>
								<tr>
									<td>2.</td>
									<td class="text-start">NewGene-Saliva/Nasal 2-in-1 Covid-19 Home Self Antigen
										Test Kit(RTK)</td>
									<td id="cust_manage_order_table_quantity">5</td>
									<td id="cust_manage_order_table_unitPrice">RM 10:70</td>
									<td id="cust_manage_order_table_status"><button
											class="cust_manage_order_table_statusBtn_Shipping">Shipping</button></td>
									<td><a href="EditOrder.jsp"><button
												class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark">
												<ion-icon name="create-outline"></ion-icon>
											</button></a></td>
									<td><button class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark"
											onClick="cancelOrder()">
											<ion-icon name="bag-remove-outline"></ion-icon>
										</button> </ion-icon></td>
								</tr>
								<tr>
									<td>3.</td>
									<td class="text-start">WOODS' Peppermint Cough Syrup for Adult 100ml</td>
									<td id="cust_manage_order_table_quantity">1</td>
									<td id="cust_manage_order_table_unitPrice">RM 9:50</td>
									<td id="cust_manage_order_table_status"><button
											class="cust_manage_order_table_statusBtn_Preparing">Preparing</button></td>
									<td><a href="EditOrder.jsp"><button
												class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark">
												<ion-icon name="create-outline"></ion-icon>
											</button></a></td>
									<td><button class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark"
											onClick="cancelOrder()">
											<ion-icon name="bag-remove-outline"></ion-icon>
										</button></td>
								</tr>
								<tr>
									<td>4.</td>
									<td class="text-start">Listerine Sakura & Peach Zest 500ml</td>
									<td id="cust_manage_order_table_quantity">1</td>
									<td id="cust_manage_order_table_unitPrice">RM 11:70</td>
									<td id="cust_manage_order_table_status"><button
											class="cust_manage_order_table_statusBtn_Preparing">Preparing</button></td>
									<td><a href="EditOrder.jsp"><button
												class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark">
												<ion-icon name="create-outline"></ion-icon>
											</button></a></td>
									<td><button class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark"
											onClick="cancelOrder()">
											<ion-icon name="bag-remove-outline"></ion-icon>
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
		function cancelOrder() {
			alert("Are you sure to cancel this order?")
		}
	</script>
</body>
</html>