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
<title>HealthCare | Order History</title>
</head>
<body>
	<%@ include file="../shareFiles/header.jsp"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
			<h1>Order History</h1>
			<div class="bg-white rounded-3 p-3 py-2 mb-3 shadow mb-5">
				<table class="table table-striped">
					<thead>
						<tr class="text-dark">
							<th class="text-center">No.</th>
							<th class="text-center">Item</th>
							<th class="text-center">Quantity</th>
							<th class="text-center">Unit Price</th>
							<th class="text-center">Order Date</th>
							<th class="text-center">Status</th>
						</tr>
					</thead>
					<tbody class="align-middle text-secondary">
						<c:forEach items="${oList}" var="customerOrder" varStatus="loop">
							<c:if test="${customerOrder.getStatus() != ''}">
								<c:set var="i" value="${i + 1 }" />
								<c:if test="${customerOrder.getStatus() == 'Delivered'}">
									<tr class="border-top" id="row1">
										<td><c:out value="${i}" /></td>
										<td class="text-start"><c:out
												value="${customerOrder.getItem()}" /></td>
										<td id="cust_manage_order_table_quantity"><c:out
												value="${customerOrder.getQuantity()}" /></td>
										<td id="cust_manage_order_table_unitPrice">RM <fmt:formatNumber
												value="${customerOrder.getUnitPrice()}"
												minFractionDigits="2" maxFractionDigits="2" /></td>
										<td id="cust_manage_order_table_orderDate">${dList[i-1]}</td>
										<td id="cust_manage_order_table_status"><button
											class="cust_manage_order_table_statusBtn_Delivered"><c:out value="${customerOrder.getStatus()}" /></button></td>
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
</body>
</html>