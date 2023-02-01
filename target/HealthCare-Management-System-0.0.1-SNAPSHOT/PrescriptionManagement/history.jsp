<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
	<%@ include file="../shareFiles/header.jsp"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
			<h1>PATIENT HISTORY</h1>
						<table class="table table-borderless w-75 ms-5">
								<tr>
									<th class="text-dark" id="order_info_table_header">Patient ID</th>
									<th class="text-dark">:</th>
									<td id="order_info_table_data_column2">PO001</td>
									<th class="text-dark" id="order_info_table_header">Patient Name</th>
									<th class="text-dark">:</th>
									<td id="order_info_table_data">Lim Ah Beng</td>
								</tr>
								<tr>
									<th class="text-dark" id="order_info_table_header">Doctor</th>
									<th class="text-dark">:</th>
									<td id="order_info_table_data_column2">Dr Ahmad</td>
									<th class="text-dark" id="order_info_table_header">Category</th>
									<th class="text-dark">:</th>
									<td id="order_info_table_data">Specialty</td>
								</tr>
								<tr>
							</table>
						<div class="bg-white rounded-3 p-3 py-2 mb-3 shadow w-75 mx-auto">
							<table class="table">
							<thead>
								<tr class="text-dark text-center" id="row1">
									<th>No.</th>
									<th>Details</th>
									<th>Medicine</th>
									<th>Date</th>
 								</tr>
 								</thead>
 								<tbody class="align-middle text-secondary">
								<tr>
									<td>1.</td>
									<td>Fever / Coughing</td>
									<td>Panadol Malaysia</td>
									<td>21/11/2022</td>
									 
								</tr>
								<tr>
									<td>2.</td>
									<td>Gastric</td>
									<td>Gaviscon</td>
									<td>10/10/2021</td>
									 
								</tr>
								</tbody>
							</table>
						</div>
						<div class="justify-content-center d-flex">
                            <button class="btn btn-primary m-3 mb-5 shadow-lg" onClick="location.href = 'allHistory.jsp';">Update</button>
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
		function rejectOrder() {
			alert("Are you sure to reject this order?")
		}
		function completeOrder() {
			alert("Are you sure to complete this order?")
		}
	</script>
</body>
</html>