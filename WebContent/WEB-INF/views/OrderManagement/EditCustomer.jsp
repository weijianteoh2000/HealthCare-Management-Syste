<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css">
<link rel="stylesheet" type="text/css" href="<c:url value="//resources/css/order.css"/>">
<title>HealthCare | Edit Customer</title>
</head>
<body>
	<%@ include file="../shareFiles/header.jsp"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
					<h1>Edit Customer Details</h1>
					<div class="w-50 mx-auto">
					<form action="../customer/update" method="post">
						<table id="customer_info_table">
							<tr>
								<th id="customer_info_table_header">Name</th>
								<th>:</th>
								<td id="customer_info_table_data"><input name="name" id="edit_input"
									type="text" value="${customer.getName()}" /></td>
							</tr>
							<tr>
								<th id="customer_info_table_header">Address</th>
								<th>:</th>
								<td id="customer_info_table_data">
								<textarea name="address" rows="4" cols="50" />${customer.getAddress()}</textarea>
								</td>
							</tr>
							<tr>
								<th id="customer_info_table_header">Phone No.</th>
								<th>:</th>
								<td id="customer_info_table_data"><input name="phone" id="edit_input"
									type="tel" id="phone" name="phone"
									pattern="[0-9]{3}-[0-9]{7-8}" value="${customer.getPhone()}" /></td>
							</tr>
							<tr>
								<th id="customer_info_table_header">Email</th>
								<th>:</th>
								<td id="customer_info_table_data"><input name="email" id="edit_input"
									type="text" value="${customer.getEmail() }" /></td>
							</tr>
							<input type="hidden" name="id" value="${customer.getId()}">
						</table>
					</div>
					<div class="justify-content-center d-flex">
						<button class="btn btn-primary m-3 mb-5 shadow-lg" onClick="saveChanges()">Save Changes</button>
					</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../shareFiles/footer.jsp"%>
	<script type="text/javascript">
		function saveChanges() {
			alert("Are you sure to save the changes?")
		}
	</script>
</body>
</html>