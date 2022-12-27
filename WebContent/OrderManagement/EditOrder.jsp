<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css">
<link rel="stylesheet" type="text/css" href="order.css">
<title>Health Care Management | Edit Order</title>
</head>
<body>
	<%@ include file="../shareFiles/header.html"%>
	<div class="content">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="content-item page">
			<div class="main-content-container">
				<div class="main-content-item main-title">
					<!--Put your Page Title here-->
					<h1>MODIFY ORDER</h1>
				</div>
				<div class="main-content-item main-content">
					<!--Put your Page Content here-->
					<h1 id="main_header_edit_order">Update Your Order</h1>
					<div class="edit_order_table">
						<table id="edit_order_table">
							<tr>
								<th id="edit_order_table_header">Receiver Name</th>
								<th>:</th>
								<td id="edit_order_table_data"><input id="edit_input"
									type="text" value="Lim Ah Beng" /></td>
							</tr>
							<tr>
								<th id="edit_order_table_header">Delivery Address</th>
								<th>:</th>
								<td id="edit_order_table_data"><textarea rows="4" cols="50" />123-B Sec.10 Kampung Bunga, Jalan Bunga 45635 Dengkil Selangor.</textarea></td>
							</tr>
							<tr>
								<th id="edit_order_table_header">Phone No.</th>
								<th>:</th>
								<td id="edit_order_table_data"><input id="edit_input"
									type="tel" id="phone" name="phone"
									pattern="[0-9]{3}-[0-9]{7-8}" value="012-3452366" /></td>
							</tr>
							<tr id="row4">
								<th id="edit_order_table_header">Product Name</th>
								<th>:</th>
								<td id="edit_order_table_data">Panodol Actifast 10s Compack</td>
							</tr>
							<tr>
								<th id="edit_order_table_header">Quantity</th>
								<th>:</th>
								<td id="edit_order_table_data"><input id="edit_input"
									type="number" value="1" /></td>
							</tr>
						</table>
					</div>
					<div class="submit_button_box">
						<button class="edit_order_submit_button" onClick="modifyOrder()">Modify Order</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../shareFiles/footer.html"%>
	<script type="text/javascript">
		function modifyOrder() {
			alert("Are you sure to save the changes?")
		}
	</script>
</body>
</html>