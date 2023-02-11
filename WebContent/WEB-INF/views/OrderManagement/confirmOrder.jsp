<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="<c:url value="//resources/css/order.css"/>">
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
								<th class="w-25 text-dark ps-5">Name</th>
								<th class="text-dark">:</th>
								<td class="text-start"><c:out value="${custDetails.getName()}" /></td>
							</tr>
							<tr>
								<th class="text-dark ps-5">Address</th>
								<th class="text-dark">:</th>
								<td class="text-start"><c:out value="${custDetails.getAddress()}" /></td>
							</tr>
							<tr>
								<th class="text-dark ps-5">Phone No.</th>
								<th class="text-dark">:</th>
								<td class="text-start"><c:out value="${custDetails.getPhone()}" /></td>
							</tr>
							<tr>
								<th class="text-dark ps-5">Email</th>
								<th class="text-dark">:</th>
								<td class="text-start"><c:out value="${custDetails.getEmail()}" /></td>
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
							<c:forEach items="${oList}" var="customerOrder" varStatus="loop">
							
							<c:set var="i" value="${i + 1 }"/>
							<tr>
								<td><c:out value="${i}" /></td>
								<td id="confirmOrder_orderList_item"><c:out value="${customerOrder.getItem()}" /></td>
								<td id="confirmOrder_orderList_quantity"><c:out value="${customerOrder.getQuantity()}" /></td>
						
								<td id="confirmOrder_orderList_price">RM <fmt:formatNumber
												value="${customerOrder.getUnitPrice()}"
												minFractionDigits="2" maxFractionDigits="2" /></td>
							</tr>
							<c:set var="total" value="${total + customerOrder.getUnitPrice() * customerOrder.getQuantity()}"/>
						
							<c:set var="custID" value="${customerOrder.getId()}" />
							</c:forEach>
							<tr id="total_price_table">
								<th></th>
								<th></th>
								<th class="text-dark text-end">Total</th>
								<td class="text-dark">RM <fmt:formatNumber
												value="${total}"
												minFractionDigits="2" maxFractionDigits="2" /></td>
							</tr>
							</tbody>
						</table>
					</div>
					<div class="justify-content-center d-flex">
					<form style="float: left; margin-right: 10px" name="modifyForm"
						action="../order/custCheckOrder" method="POST">
						<input type="hidden" name="id" value="${custID}">
						<button class="btn btn-primary m-3 mb-5 shadow-lg " onClick="cfOrder()">Confirm Order</button>
					</form>
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