<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css">
<link rel="stylesheet" type="text/css" href="order.css">
<title>HealthCare | Confirm Order</title>
</head>
<body>
	<%@ include file="../shareFiles/header.html"%>
	<div class="content">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="content-item page">
			<div class="main-content-container">
				<div class="main-content-item main-title">
					<!--Put your Page Title here-->
					<h1>CONFIRM ORDER</h1>
				</div>
				<div class="main-content-item main-content">
					<h1 id="main_header">Check Your Details</h1>
					<div class="confirmOrder_customer_info_table">
						<table id="confirmOrder_customer_info_table">
							<tr>
								<th id="confirmOrder_customer_info_table_header">Name</th>
								<th>:</th>
								<td id="confirmOrder_customer_info_table_data">Lim Ah Beng</td>
							</tr>
							<tr>
								<th id="confirmOrder_customer_info_table_header">Address</th>
								<th>:</th>
								<td id="confirmOrder_customer_info_table_data">123-B Sec.10
									Kampung Bunga, Jalan Bunga 45635 Dengkil Selangor.</td>
							</tr>
							<tr>
								<th id="confirmOrder_customer_info_table_header">Phone No.</th>
								<th>:</th>
								<td id="confirmOrder_customer_info_table_data">012-3452366</td>
							</tr>
							<tr>
								<th id="confirmOrder_customer_info_table_header">Email</th>
								<th>:</th>
								<td id="confirmOrder_customer_info_table_data">ahbeng332@gmail.com</td>
							</tr>
						</table>
					</div>

					<div class="confirmOrder_orderList_table">
						<table id="confirmOrder_orderList_table">
							<caption id="caption">-- RECEIPT --</caption>
							<tr id="row1">
								<th>No.</th>
								<th>Item</th>
								<th>Quantity</th>
								<th>Unit Price</th>
								<th></th>
							</tr>
							<tr>
								<td>1.</td>
								<td id="confirmOrder_orderList_item">Panodol Actifast 10s
									Compack</td>
								<td id="confirmOrder_orderList_quantity">1</td>
								<td id="confirmOrder_orderList_price">RM 13.50</td>
							</tr>
							</tr>
							<tr>
								<td>2.</td>
								<td id="confirmOrder_orderList_item">NewGene-Saliva/Nasal
									2-in-1 Covid-19 Home Self Antigen Test Kit(RTK)</td>
								<td id="confirmOrder_orderList_quantity">5</td>
								<td id="confirmOrder_orderList_price">RM 10.70</td>
							</tr>
							</tr>
							<tr>
								<td>3.</td>
								<td id="confirmOrder_orderList_item">WOODS' Peppermint
									Cough Syrup for Adult 100ml</td>
								<td id="confirmOrder_orderList_quantity">1</td>
								<td id="confirmOrder_orderList_price">RM 9.50</td>
							</tr>
							</tr>
							<tr>
								<td>4.</td>
								<td id="confirmOrder_orderList_item">Listerine Sakura &
									Peach Zest 500ml</td>
								<td id="confirmOrder_orderList_quantity">1</td>
								<td id="confirmOrder_orderList_price">RM 11.70</td>
							</tr>
							<tr id="total_price_table">
								<th></th>
								<th></th>
								<th>Total</th>
								<td>RM 88.20</td>
							</tr>
						</table>
					</div>
					<!-- <div class="total_price_table">
						<table id="total_price_table">
							<tr>
								<th>Total</th>
								<th>:</th>
								<td>RM 88.20</td>
							</tr>
						</table>
					</div> -->
					<div class="submit_button_box">
						<button class="confirmOrder_submit_button" onClick="cfOrder()">Confirm Order</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../shareFiles/footer.html"%>
	<script type="text/javascript">
		function cfOrder() {
			alert("Are you sure to confirm this order?")
		}
	</script>
</body>
</html>