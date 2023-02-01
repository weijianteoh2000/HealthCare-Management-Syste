<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css">
<link rel="stylesheet" type="text/css" href="order.css">
<title>HealthCare | Edit Order</title>
</head>
<body>
	<%@ include file="../shareFiles/header.jsp"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded" data-wow-delay="0.1s">
					<h1>Update Your Order</h1>
					<div class="edit_order_table">
						<table id="edit_order_table">
							<tr>
								<th class="text-dark" id="edit_order_table_header">Receiver Name</th>
								<th class="text-dark">:</th>
								<td id="edit_order_table_data"><input id="edit_input"
									type="text" value="Lim Ah Beng" /></td>
							</tr>
							<tr>
								<th class="text-dark" id="edit_order_table_header">Delivery Address</th>
								<th class="text-dark">:</th>
								<td id="edit_order_table_data"><textarea rows="4" cols="50" />123-B Sec.10 Kampung Bunga, Jalan Bunga 45635 Dengkil Selangor.</textarea></td>
							</tr>
							<tr>
								<th class="text-dark" id="edit_order_table_header">Phone No.</th>
								<th class="text-dark">:</th>
								<td id="edit_order_table_data"><input id="edit_input"
									type="tel" id="phone" name="phone"
									pattern="[0-9]{3}-[0-9]{7-8}" value="012-3452366" /></td>
							</tr>
							<tr id="row4">
								<th class="text-dark" id="edit_order_table_header">Product Name</th>
								<th class="text-dark">:</th>
								<td id="edit_order_table_data">Panodol Actifast 10s Compack</td>
							</tr>
							<tr>
								<th class="text-dark" id="edit_order_table_header">Quantity</th>
								<th class="text-dark">:</th>
								<td id="edit_order_table_data"><input id="edit_input"
									type="number" value="1" /></td>
							</tr>
						</table>
					</div>
					<div class="justify-content-center d-flex">
						<button class="btn btn-primary m-3 mb-5 shadow-lg" onClick="modifyOrder()">Modify Order</button>
					</div>
				</div>
			</div>
	<%@ include file="../shareFiles/footer.jsp"%>
	<script type="text/javascript">
		function modifyOrder() {
			alert("Are you sure to save the changes?")
		}
	</script>
</body>
</html>