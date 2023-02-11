<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HealthCare | Order Stock</title>
<link rel="stylesheet" type="text/css" href="<c:url value="//resources/css/Order Stock.css"/>">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css"> 
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body>
<script>
    function successAdd(value) {
        alert(value);
    }
</script>  
<c:if test="${successAdd != null}" >
	 <script> successAdd('${successAdd.toString()}') </script>
	</c:if>
	<%@ include file="../shareFiles/header.jsp"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
					<h1>STOCK ORDER DETAILS</h1>
					<div class="content-table">
						<div>
						<a href="history">Order History</a>
							<table class="table table-striped table-hover" border="0" cellpadding="0" width="100%" bgcolor="#FFFFFF">
       	<tr>
		<td><b>NO.</b></td>
		<td><b>ORDER ID</b></td>
        <td><b>COMPANY NAME</b></td>
		<td><b>ORDER STATUS</b></td>
		<td><b>ACTION</b></td>
		<td></td>
		</tr>
<c:forEach items="${sList}" var="currentOrder" varStatus="loop">

<tr>
	<td><c:out value="${loop.index +1}"/></td>
	<td><c:out value="${currentOrder.getId()}"/></td>
	<td><c:out value="${currentOrder.getSupplierName()}"/></td>
	<td><c:out value="${currentOrder.getStatus()}"/></td>

	<td>
	<div style="display:flex">
			<!-- View transaction button -->
			<form style="float:left; margin-right:10px" name="tracking" action="trackingView" method="POST">
       		<input type="hidden" name="courier" value="${currentOrder.getCourier()}">
       			<input type="hidden" name="trackingNumber" value="${currentOrder.getTrackingNumber()}">
       		<button title="View Transaction" class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark"><div class="fas fa-truck"></button>
       		</form>
       		<!-- Update order button -->
       		<form style="float:left; margin-right:10px" name="modifyForm" action="updateOrderStockForm" method="POST">
       		<input type="hidden" name="updateindex" value="${currentOrder.getId()}">
       		<button title="update" class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark"><div class="fas fa-edit"></button>
       		</form>
       		<!-- Delete order button -->
       		<form style="float:left; margin-right:10px" name="modifyForm" action="deleteOrderStock" method="POST">
       		<input type="hidden" name="delindex" value="${currentOrder.getId()}">
       		  	<button title="delete" class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark"><div class="fas fa-trash-alt"/></button>
       		</form>
       	<%-- 	<!-- Email order button -->
       		<form style="float:left; margin-right:10px" name="email" action="deleteOrderStock" method ="POST">
       				<input type="hidden" name="supplier" value="${currentOrder.getSupplierName()}">
       		  		<button title="email"class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark"><div class="fas fa-share-square"/></button>
       		</form>  --%>
       		<!-- Receive&Paid order button -->
       		<form style="float:left; margin-right:10px" name="paid" action="received" method="POST">
       				<input type="hidden" name="orderID" value="${currentOrder.getId()}">
       		  		<button title="receive"class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark"><div class="fas fa-clipboard-check"/></button>
       		</form>
     </div>
       	</td>
</tr></c:forEach>
</table>
						</div>
						<div class="justify-content-center d-flex">
							<button class="btn btn-primary m-3 mb-5 shadow-lg"
								onClick="location.href = 'searchSupplier';">Add new</button>
						</div>
						<!--  <script>
                            function deleteRow(btn){
                            	document.getElementsByTagName("tr")[i].remove();
                           };
                            </script> -->
					</div>
				</div>
			</div>
	<%@ include file="../shareFiles/footer.jsp"%>
</body>
</html>