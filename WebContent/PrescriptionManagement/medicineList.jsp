<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css">
<link rel="stylesheet" type="text/css" href="prescription.css">
<title>Health Care Management | Manage Pending Order</title>
<style>
.order_info_table {
	width: 1000px;
	padding-left: 100px;
	margin-bottom:20px;
}

#order_info_table table, th, td {
	padding: 8px;
	border-style: none;
}

#order_info_table_header,
	#order_info_table_data {
	width:150px;
	text-align: left;
}

#order_info_table_data_column2 {
text-align: left;
width: 400px;
}

.edit_order_pending_table {
	position: relative;
	background-color: white;
	padding: 10px 15px 17px;
	margin: 0px 0px 20px 40px;
	border-radius: 10px;
	box-shadow: 0 7px 25px rgba(0, 0, 0, 0.2);
}

#edit_order_pending_table tr {
	text-align: center;
	padding: 8px;
	border-bottom: 1px solid #C0C2C8;
}

#edit_order_pending_table #row1 {
	border-bottom: 2px solid black;
	border-collapse: collapse;
	padding: 0px 0px 10px;
}

#edit_order_pending_table #row1 #edit_order_pending_table_rejectBtn {
	border-top: 1px solid black;
	border-collapse: collapse;
}

.edit_order_pending_table_editBtn, .edit_order_pending_table_rejectBtn {
	border: none;
	background-color: inherit;
	cursor: pointer;
	font-size: 18px;
}
</style>
</head>
<body>
	<%@ include file="../shareFiles/header.html"%>
	<div class="content">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="content-item page">
			<div class="main-content-container">
				<div class="main-content-item main-title">
					<!--Put your Page Title here-->
					<h1>MEDICINE LIST</h1>
				</div>
				<div class="main-content-item main-content">
					<div class="main">
 						<div class="order_info_table">
						<table id="order_info_table">
								<tr>
									<th id="order_info_table_header">ID</th>
									<th>:</th>
									<td id="order_info_table_data_column2">M00001</td>
									<th id="order_info_table_header">Patient ID</th>
									<th>:</th>
									<td id="order_info_table_data">PA0001</td>
								</tr><tr>
									<th id="order_info_table_header">Doctor</th>
									<th>:</th>
									<td id="order_info_table_data_column2">Dr Lim</td>
									<th id="order_info_table_header">Customer Name</th>
									<th>:</th>
									<td id="order_info_table_data">Lim Ah Beng</td>
								</tr>
								<tr>
									<th id="order_info_table_header">Date / Time</th>
									<th>:</th>
									<td id="order_info_table_data_column2">10/11/2022  19:37</td>
									<th id="order_info_table_header">Contact No</th>
									<th>:</th>
									<td id="order_info_table_data">012-3452366</td>
								</tr>
								<tr>
							</table>
						</div>
						<div class="edit_order_pending_table">
							<table id="edit_order_pending_table">
								<tr id="row1">
									<th>No.</th>
									<th>Item</th>
									<th>Quantity</th>
									<th>Price</th>
 								</tr>
								<tr>
									<td>1.</td>
									<td>PANADOL ACTIFAST 10S COMPACK</td>
									<td>1</td>
									<td>+  RM 15.00</td>
									 
								</tr>
								<tr>
									<td>2.</td>
									<td>NewGene - Saliva/nasal 2-in-1 Covid-19 Home Self Antigen Test Kit (RTK)</td>
									<td>2</td>
									<td>   RM 12.00</td>
									 
								</tr>
								<tr>
									<td>3.</td>
									<td>WOODS'Peppermint Cough Syrup for Adult 100 ML</td>
									<td>1</td>
									<td>   RM  9.50</td>
									 
								</tr>
								<tr>
									<td>4.</td>
									<td>Listerine Sakura & Peach Zest 500 ML</td>
									<td>1</td>
									<td>   RM 11.70</td>
								 </tr>
								 <tr id="row1">
									<th> </th>
									<th> </th>
									<th>Total : </th>
									<th>   RM 999.00</th>
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
		function rejectOrder() {
			alert("Are you sure to reject this order?")
		}
		function completeOrder() {
			alert("Are you sure to complete this order?")
		}
	</script>
</body>
</html>