<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css">
<link rel="stylesheet" type="text/css" href="order.css">
<title>Health Care Management | Edit Customer</title>
<style>
.customer_info_table {
	width: 550px;
	margin-left: auto;
	margin-right: auto;
	padding-bottom: 40px;
}

#customer_info_table #customer_info_table_header {
	width: 80px;
}

#customer_info_table table, th, td {
	padding: 8px;
	border-style: none;
}

#customer_info_table_header, #customer_info_table_data {
	text-align: left;
}

#edit_input, textarea, select {
	width: 400px;
	padding: 8px 12px;
	margin: 8px 0;
	display: inline-block;
	border: 1.5px solid #89AFFF;
	border-radius: 4px;
	box-sizing: border-box;
	font-size: 15px;
}

#main_header_customer_info {
	margin: 20px;
	margin-left: 40px;
	text-align: center;
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
					<h1>MANAGE CUSTOMER</h1>
				</div>
				<div class="main-content-item main-content">
					<!--Put your Page Content here-->
					<h1 id="main_header_customer_info">Edit Customer Details</h1>
					<div class="customer_info_table">
						<table id="customer_info_table">
							<tr>
								<th id="customer_info_table_header">Name</th>
								<th>:</th>
								<td id="customer_info_table_data"><input id="edit_input"
									type="text" value="Lim Ah Beng" /></td>
							</tr>
							<tr>
								<th id="customer_info_table_header">Address</th>
								<th>:</th>
								<td id="customer_info_table_data">
								<textarea rows="4" cols="50" />123-B Sec.10 Kampung Bunga, Jalan Bunga 45635 Dengkil Selangor.</textarea>
								</td>
							</tr>
							<tr>
								<th id="customer_info_table_header">Phone No.</th>
								<th>:</th>
								<td id="customer_info_table_data"><input id="edit_input"
									type="tel" id="phone" name="phone"
									pattern="[0-9]{3}-[0-9]{7-8}" value="012-3452366" /></td>
							</tr>
							<tr>
								<th id="customer_info_table_header">Email</th>
								<th>:</th>
								<td id="customer_info_table_data"><input id="edit_input"
									type="text" value="ahbeng332@gmail.com" /></td>
							</tr>
						</table>
					</div>
					<div class="submit_button_box">
						<button class="customer_info_submit_button" onClick="saveChanges()">Save Changes</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../shareFiles/footer.html"%>
	<script type="text/javascript">
		function saveChanges() {
			alert("Are you sure to save the changes?")
		}
	</script>
</body>
</html>