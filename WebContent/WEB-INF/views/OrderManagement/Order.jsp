<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="<c:url value="//resources/css/order.css"/>">
<title>HealthCare | Order</title>
</head>
<body>
	<script>
		function successDelete(value) {
			alert(value);
		}
	</script>
	<c:if test="${successDelete != null}">
		<script>
			successDelete('${successDelete.toString()}')
		</script>
	</c:if>
	<%@ include file="../shareFiles/header.jsp"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
			<h1>My Order</h1>
			<form  name="modifyForm" action="../order/placeOrder" method="POST">
			<br>
			<div class="bg-white rounded-3 p-3 py-2 mb-3 shadow">
				<table class="table table-striped table-hover">
					<thead>
						<tr class="text-dark">
							<th class="text-center" scope="col">No.</th>
							<th class="text-center" scope="col">Item</th>
							<th class="text-center" scope="col">Quantity</th>
							<th class="text-center" scope="col">Unit Price</th>
							<th scope="col"></th>
						</tr>
					</thead>
					<tbody class="align-middle text-secondary">
						<c:forEach items="${oList}" var="customerOrder" varStatus="loop">
							<c:if test="${customerOrder.getStatus() == ''}">
								<c:set var="i" value="${i + 1 }" />
								<tr>
									<td><c:out value="${i}" /></td>
									<td id="order_item"><c:out
											value="${customerOrder.getItem()}" /></td>
									<input type="hidden" name="orderName"
												value="${customerOrder.getItem()}">
									<td id="order_quantity"><input type="number" name="qty" value="${customerOrder.getQuantity()}"/></td>
									<td>RM <fmt:formatNumber
											 value="${customerOrder.getUnitPrice()}" minFractionDigits="2"
											maxFractionDigits="2" /></td>
											<input type="hidden" name="price"
												value="${customerOrder.getUnitPrice()}">
									<td><form
											id="delForm" action="../order/deleteOrder" method="POST">
											<input type="hidden" name="id" 
												value="${customerOrder.getId()}">
											<button
												class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark"
												onClick="dltOrder()"form="delForm">
												<ion-icon name="trash-outline"></ion-icon>
											</button>
										</form></td>
									<input type="hidden" name="id"
												value="${customerOrder.getId()}">
								</tr>
							</c:if>
						
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="justify-content-center d-flex">
				<c:if test="${i != 0}">
					
						<input type="hidden" name="id" value="${custID}">
						<button class="btn btn-primary m-3 mb-5 shadow-lg">Place
							Order</button>
					</form>
				</c:if>
				<c:if test="${i == 0}">
					<a href="../order/getByCustID"><button
							class="btn btn-primary m-3 mb-5 shadow-lg">Place Order</button></a>
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
		function dltOrder() {
			alert("Are you sure to delete your order?")
		}

		let btn = document.getElementById("sidebar-order");
		btn.classList.add("bg-primary");
		btn.classList.add("text-white");
		btn.classList.add("wow");
		btn.classList.add("fadeIn");
	</script>
</body>
</html>