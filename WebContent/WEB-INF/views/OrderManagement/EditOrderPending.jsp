<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css">
<link rel="stylesheet" type="text/css"
	href="<c:url value="//resources/css/order.css"/>">
<title>HealthCare | Manage Pending Order</title>
</head>
<body>
	<script>
    function successUpdate(value) {
        alert(value);
    }
	</script>
	<c:if test="${successUpdate != null}">
		<script> successUpdate('${successUpdate.toString()}') </script>
	</c:if>
	<script>
    function successDelete(value) {
        alert(value);
    }
	</script>
	<c:if test="${successDelete != null}">
		<script> successDelete('${successDelete.toString()}') </script>
	</c:if>
	<%@ include file="../shareFiles/header.jsp"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
			<h1>Check Customer Order</h1>
			<table class="table table-borderless w-75 ms-5">
				<tr>
					<th class="text-dark">Order ID</th>
					<th class="text-dark">:</th>
					<td id="order_info_table_data_column2"><c:out
							value="OP${custDetails.getId()}" /></td>
					<th class="text-dark" id="order_info_table_header">Customer ID</th>
					<th class="text-dark">:</th>
					<td id="order_info_table_data"><c:out
							value="CUS${custDetails.getId()}" /></td>
				</tr>
				<tr>
					<th class="text-dark">Address</th>
					<th class="text-dark">:</th>
					<td id="order_info_table_data_column2"><c:out
							value="${custDetails.getAddress()}" /></td>
					<th class="text-dark" id="order_info_table_header">Customer
						Name</th>
					<th class="text-dark">:</th>
					<td id="order_info_table_data"><c:out
							value="${custDetails.getName()}" /></td>
				</tr>
				<tr>
					<th class="text-dark">Order Date/Time</th>
					<th class="text-dark">:</th>
					<td id="order_info_table_data_column2"><c:out
							value="${custDetails.getLastOrderDate()}" /></td>
					<th class="text-dark" id="order_info_table_header">Contact No.</th>
					<th class="text-dark">:</th>
					<td id="order_info_table_data"><c:out
							value="${custDetails.getPhone()}" /></td>
				</tr>
				<tr>
					<c:set var="customerId" value="${custDetails.getId()}" />
			</table>
			<div class="bg-white rounded-3 p-3 py-2 mb-3 shadow">
				<table class="table table-striped table-hover">
					<thead>
						<tr class="text-dark text-center" id="row1">
							<th>No.</th>
							<th>Item</th>
							<th>Quantity</th>
							<th>Unit Price</th>
							<th></th>
						</tr>
					</thead>
					<tbody class="align-middle text-secondary">
						<c:forEach items="${oList}" var="customerOrder" varStatus="loop">
							<c:if test="${customerOrder.getStatus() != null}">
								<c:if test="${customerOrder.getStatus() == 'Preparing'}">
								<c:set var="s" value="${customerOrder.getStatus()}" />
									<c:set var="i" value="${i + 1 }" />
									<tr>
										<td><c:out value="${i}" /></td>
										<td id="edit_order_pending_table_item"><c:out
												value="${customerOrder.getItem()}" /></td>
										<td id="edit_order_pending_table_quantity"><c:out
												value="${customerOrder.getQuantity()}" /></td>
										<td id="edit_order_pending_table_unitPrice">RM <fmt:formatNumber
												value="${customerOrder.getUnitPrice()}"
												minFractionDigits="2" maxFractionDigits="2" /></td>
										<td></td>
									</tr>
								</c:if>
								<c:if test="${customerOrder.getStatus() == 'Shipping'}">
									<c:set var="i" value="${i + 1 }" />
									<tr>
										<td><c:out value="${i}" /></td>
										<td id="edit_order_pending_table_item"><c:out
												value="${customerOrder.getItem()}" /></td>
										<td id="edit_order_pending_table_quantity"><c:out
												value="${customerOrder.getQuantity()}" /></td>
										<td id="edit_order_pending_table_unitPrice">RM <fmt:formatNumber
												value="${customerOrder.getUnitPrice()}"
												minFractionDigits="2" maxFractionDigits="2" /></td>
										<td></td>
									</tr>
								</c:if>
							</c:if>
							<c:set var="custID" value="${customerOrder.getCustomerID()}" />
							<c:set var="orderID" value="${customerOrder.getId()}" />
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="justify-content-center d-flex">
				<c:if test="${s != 'Preparing'}">
					<form style="float: left; margin-right: 10px" name="modifyForm"
						action="../order/updateStatusShipping" method="POST">
						<input type="hidden" name="id"
							value="${custID}"> <input
							type="hidden" name="orderId" value="${orderID}">
						<button class="btn btn-primary m-3 mb-5 shadow-lg"
							onClick="completeOrder()">Complete Order</button>
					</form>
				</c:if>
				<c:if test="${s == 'Preparing'}">
				<form style="float: left; margin-right: 10px" name="modifyForm"
						action="../order/updateStatusPreparing" method="POST">
						<input type="hidden" name="id"
							value="${custID}"> <input
							type="hidden" name="orderId" value="${orderID}">
						<button class="btn btn-primary m-3 mb-5 shadow-lg"
						onClick="shipOrder()">Ship Order</button>
					</form>
				</c:if>
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
		function shipOrder() {
			alert("Are you sure to ship this order?")
		}
	</script>
</body>
</html>