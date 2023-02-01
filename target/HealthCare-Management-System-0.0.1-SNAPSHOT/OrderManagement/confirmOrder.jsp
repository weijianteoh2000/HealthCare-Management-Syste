<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="order.css">
<title>HealthCare | Confirm Order</title>
</head>
<body>
	<%@ include file="../shareFiles/header.jsp"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
				<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded" data-wow-delay="0.1s">
					<h1>Check Your Details</h1><br>
						<table class="table table-borderless">
							<tr>
								<th class="text-dark ps-5">Name</th>
								<th class="text-dark">:</th>
								<td class="text-start">Lim Ah Beng</td>
							</tr>
							<tr>
								<th class="text-dark ps-5">Address</th>
								<th class="text-dark">:</th>
								<td class="text-start">123-B Sec.10
									Kampung Bunga, Jalan Bunga 45635 Dengkil Selangor.</td>
							</tr>
							<tr>
								<th class="text-dark ps-5">Phone No.</th>
								<th class="text-dark">:</th>
								<td class="text-start">012-3452366</td>
							</tr>
							<tr>
								<th class="text-dark ps-5">Email</th>
								<th class="text-dark">:</th>
								<td class="text-start">ahbeng332@gmail.com</td>
							</tr>
						</table>

					<div class="confirmOrder_orderList_table">
						<table id="confirmOrder_orderList_table">
							<h3 class="text-center">-- RECEIPT --<h3>
							<thead>
							<tr class="text-dark" id="row1">
								<th>No.</th>
								<th>Item</th>
								<th>Quantity</th>
								<th>Unit Price</th>
								<th></th>
							</tr>
							</thead>
							<tbody class="align-middle text-secondary">
							<tr>
								<td>1.</td>
								<td id="confirmOrder_orderList_item">Panodol Actifast 10s
									Compack</td>
								<td id="confirmOrder_orderList_quantity">1</td>
								<td id="confirmOrder_orderList_price">RM 13.50</td>
							</tr>
							<tr>
								<td>2.</td>
								<td id="confirmOrder_orderList_item">NewGene-Saliva/Nasal
									2-in-1 Covid-19 Home Self Antigen Test Kit(RTK)</td>
								<td id="confirmOrder_orderList_quantity">5</td>
								<td id="confirmOrder_orderList_price">RM 10.70</td>
							</tr>
							<tr>
								<td>3.</td>
								<td id="confirmOrder_orderList_item">WOODS' Peppermint
									Cough Syrup for Adult 100ml</td>
								<td id="confirmOrder_orderList_quantity">1</td>
								<td id="confirmOrder_orderList_price">RM 9.50</td>
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
								<th class="text-dark">Total</th>
								<td class="text-dark">RM 88.20</td>
							</tr>
							</tbody>
						</table>
					</div>
					<div class="justify-content-center d-flex">
						<button class="btn btn-primary m-3 mb-5 shadow-lg " onClick="cfOrder()">Confirm Order</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../shareFiles/footer.jsp"%>
	<script type="text/javascript">
		function cfOrder() {
			alert("Are you sure to confirm this order?")
		}
	</script>
</body>
</html>