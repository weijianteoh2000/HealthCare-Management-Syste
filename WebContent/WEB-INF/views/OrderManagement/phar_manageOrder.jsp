<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="<c:url value="//resources/css/order.css"/>">
<title>HealthCare | Manage Order</title>
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
						<h1>Manage Customer Order</h1>
						<div class="bg-white rounded-3 p-3 py-2 mb-3 shadow mb-5">
							<table class="table table-striped table-hover">
							<thead>
								<tr class="text-dark text-center">
									<th>No.</th>
									<th>Item</th>
									<th>Quantity</th>
									<th>Unit Price</th>
									<th>Status</th>
									<th></th>
								</tr>
								</thead>
								<tbody class="align-middle text-secondary">
								<c:forEach items="${oList}" var="customerOrder" varStatus="loop">
								<c:if test="${customerOrder.getStatus() != null}">
								<c:if test="${customerOrder.getStatus() != 'Delivered'}">
									<c:set var="i" value="${i + 1 }" />
								</c:if>
								<c:if test="${customerOrder.getStatus() == 'Shipping'}">
								<tr id="row1">
									<td>${i}</td>
									<td id="phar_manage_order_table_item">${customerOrder.getItem()}</td>
									<td id="phar_manage_order_table_quantity">${customerOrder.getQuantity()}</td>
									<td id="phar_manage_order_table_unitPrice">RM <fmt:formatNumber
												value="${customerOrder.getUnitPrice()}"
												minFractionDigits="2" maxFractionDigits="2" /></td>
									<td id="phar_manage_order_table_status"><button
											class="phar_manage_order_table_statusBtn_Shipping">${customerOrder.getStatus()}</button></td>
									<form style="float: left; margin-right: 10px"
											name="modifyForm" action="../order/manageOrder"
											method="POST">
											<input type="hidden" name="id"
												value="${customerOrder.getCustomerID()}">
											<input type="hidden" name="orderId"
												value="${customerOrder.getId()}">
											<td><button
												class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark">
												<ion-icon name="create-outline"></ion-icon>
											</button></td>
										</form>
										<form style="float: left; margin-right: 10px"
											name="modifyForm" action="../order/pharManageOrderPage" method="POST">
											<input type="hidden" name="id"
												value="${customerOrder.getId()}">
											<td id="phar_manage_order_table_rejectBtn"><button
											class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark"
											onClick="rejectShippingFailed()">
											<ion-icon name="trash-bin-outline"></ion-icon>
										</button> </ion-icon></td>
										</form>
								</tr>
								</c:if>
								<c:if test="${customerOrder.getStatus() == 'Preparing'}">
								<tr id="row1">
									<td>${i}</td>
									<td id="phar_manage_order_table_item">${customerOrder.getItem()}</td>
									<td id="phar_manage_order_table_quantity">${customerOrder.getQuantity()}</td>
									<td id="phar_manage_order_table_unitPrice">RM <fmt:formatNumber
												value="${customerOrder.getUnitPrice()}"
												minFractionDigits="2" maxFractionDigits="2" /></td>
									<td id="phar_manage_order_table_status"><button
											class="phar_manage_order_table_statusBtn_Preparing">${customerOrder.getStatus()}</button></td>
									<form style="float: left; margin-right: 10px"
											name="modifyForm" action="../order/manageOrder"
											method="POST">
											<input type="hidden" name="id"
												value="${customerOrder.getCustomerID()}">
											<input type="hidden" name="orderId"
												value="${customerOrder.getId()}">
											<td><button
												class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark">
												<ion-icon name="create-outline"></ion-icon>
											</button></td>
										</form>
										<form style="float: left; margin-right: 10px"
											name="modifyForm" action="../order/rejectOrder" method="POST">
											<input type="hidden" name="id"
												value="${customerOrder.getId()}">
											<td id="phar_manage_order_table_rejectBtn"><button
											class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark"
											onClick="rejectOrder()">
											<ion-icon name="trash-bin-outline"></ion-icon>
										</button> </ion-icon></td>
										</form>
								</tr>
								</c:if>
								</c:if>
								</c:forEach>
								</tbody>
							</table>
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
		function rejectShippingFailed(){
			alert("Reject Order Failed! The order has been shipped!")
		}
	</script>
</body>
</html>
