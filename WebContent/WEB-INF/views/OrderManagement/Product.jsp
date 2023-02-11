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
<title>HealthCare | View Product</title>
</head>
<body>
	<%@ include file="../shareFiles/header.jsp"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
			<h1>View Product</h1>
			<div class="product_category">
				Category: <select name="product_category" id="product_category"
					class="btn btn-secondary dropdown-toggle w-25"
					data-toggle="dropdown">
					<option value="All">All</option>
					<option value="Pregnancy Kit">Pregnancy Kit</option>
					<option value="Prescription Drugs">Prescription Drugs</option>
					<option value="Supplement">Supplement</option>
					<option value="Blood Cholesterol Testing">Blood
						Cholesterol Testing</option>
					<option value="Oral Care">Oral Care</option>
				</select>
			</div>
			<div class="d-flex w-100 p-2">
				<c:forEach items="${productList}" var="pList" varStatus="loop">
					<c:set var="custOrders" value="" />
					<div class="mx-2 p-3 rounded shadow bg-white">
						<div class="product_pic">
							<img id="product_pic"
								src="<c:url value="//resources/img/${pList.getImage()}"/>"><br>
							<br>
						</div>
						<div class="product_name">
							<c:out value="${pList.getName()}" />
						</div>
						<br> <br>
						<div class="product_descp">
							<c:out value="${pList.getDescription()}" />
						</div>
						<br> <br>
						<div class="product_price">
							<div class=product_price_text>
								RM
								<fmt:formatNumber value="${pList.getUnitPrice()}"
									minFractionDigits="2" maxFractionDigits="2" />
							</div>
							<form style="float: left; margin-right: 10px" name="modifyForm"
								action="../product/addToCart" method="POST">
								<div class="button_container">
									<!-- <button class="cart_qty_minus" type="button" value="-">-</button> -->
									<input type="number" name="qty" class="cart_quantity"/>
									<!-- <button class="cart_qty_add" type="button" value="+">+</button> -->
								</div>
						</div>
						<c:set var="arrId" value="${pList.getId()}" />
						<c:set var="arrUnitPrice" value="${pList.getUnitPrice()}" />
						<c:set var="looping" value="${loop.index + 1}" />
						<c:set var="arrName" value="${pList.getName()}" />
						<c:set var="arrQuantity" value="${pList.getQuantity()}" />
						<input name="arrId" type="hidden" value="${arrId}" /> <input
							name="arrName" type="hidden" value="${arrName}" /> <input
							name="arrUnitPrice" type="hidden" value="${arrUnitPrice}" /> <input
							name="arrQuantity" type="hidden" value="${arrQuantity}" />
					</div>
				</c:forEach>
			</div>

			<div class="justify-content-center d-flex">
				<input name="looping" type="hidden" value="${looping}" />
				<button class="btn btn-primary m-3 mb-5 shadow-lg "
					onClick="confirmSubmit()">Add to Order</button>
				</form>
			</div>
		</div>
	</div>
	<%@ include file="../shareFiles/footer.jsp"%>
	<script type="text/javascript">
		/* For quantity increment or decreament */
		var incrementBtn = document.getElementsByClassName("cart_qty_add");
		var decrementBtn = document.getElementsByClassName("cart_qty_minus");

		/* Increment Quantity */
		for (var i = 0; i < incrementBtn.length; i++) {
			var button = incrementBtn[i];
			button.addEventListener('click', function(event) {
				var buttonClicked = event.target;
				var input = buttonClicked.parentElement.children[1];
				var inputValue = input.value;
				var newValue = parseInt(inputValue) + 1;
				input.value = newValue;
			})
		}

		/* Decrement Quantity */
		for (var i = 0; i < decrementBtn.length; i++) {
			var button = decrementBtn[i];
			button.addEventListener('click', function(event) {
				var buttonClicked = event.target;
				var input = buttonClicked.parentElement.children[1];
				var inputValue = input.value;
				var newValue = parseInt(inputValue) - 1;
				if (newValue >= 0) {
					input.value = newValue;
				}
			})
		}

		function confirmSubmit() {
			alert("Are you confirm to add this order into cart?");
		}
	</script>
</body>
</html>