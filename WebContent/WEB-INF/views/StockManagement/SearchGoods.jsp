<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>HealthCare | Details</title>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="<c:url value="//resources/css/OrderStock.css"/>">
</head>
<body>
<%@ include file="../shareFiles/header.jsp" %>
<div class="row g-0">
<%@ include file="../shareFiles/sideMenu.jsp" %>   
 <div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
                        <h1>Order a new stock</h1>
                      <div class="inputContainer">
  <form action="addOrderStockForm">  
 <select name="supplierName" id="supplierName" required>
 	<option value="default">Select a supplier</option>
	<c:forEach items="${sList}" var="currentSupplier" varStatus="loop">
		<option value="${currentSupplier}">${currentSupplier}</option>
	</c:forEach>
</select>
<input type="submit" value="search"/>
</form>

            </div>
            </div>
            </div>
<%@ include file="../shareFiles/footer.jsp" %>
</body>
</html>