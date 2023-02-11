<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="<c:url value="//resources/css/order.css"/>">
<title>HealthCare | Customer Management</title>
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
			<h1>Customer List</h1>
			<div class="bg-white rounded-3 p-3 py-2 mb-3 shadow mb-5">
				<table class="table table-striped table-hover">
					<thead>
						<tr class="text-dark text-center">
							<th>No.</th>
							<th>Name</th>
							<th>Registered Date</th>
							<th>Last Order Date</th>
							<th>Number of Order</th>
							<th></th>
						</tr>
					</thead>
					<tbody class="align-middle text-secondary">
						<c:forEach items="${pList}" var="customer" varStatus="loop">
							<tr id="row1">
								<td class="text-dark"><c:out value="${loop.index + 1}" /></td>
								<td><c:out value="${customer.getName()}" /></td>
								<td id="customer_details_table_rgtDate">${rList[loop.index]}</td>
								<td id="customer_details_table_lastOrderDate">${dList[loop.index]}</td>
								<td id="customer_details_table_numOrder"><c:out
										value="${customer.getNumOrder()}" /></td>
								<td><form style="float: left; margin-right: 10px"
										name="modifyForm" action="editCustomer" method="POST">
										<input type="hidden" name="id" value="${customer.getId()}">
										<button
											class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark">
											<div class="fas fa-edit">
										</button>
									</form></td>
								<td id="customer_details_table_trashBtn"><form style="float: left; margin-right: 10px"
										name="modifyForm" action="../customer/deleteCustomer" method="POST">
										<input type="hidden" name="id" value="${customer.getId()}">
										<button
										class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark"
										onClick="dltCustomer()">
										<ion-icon name="trash-outline"></ion-icon>
									</button>
									</form></td>
							</tr>
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
		function dltCustomer() {
			alert("Are you sure to delete this customer?")
		}
	</script>
</body>
</html>