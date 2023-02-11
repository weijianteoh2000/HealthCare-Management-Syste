<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>HealthCare | Details</title>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="<c:url value="//resources/css/stock.css"/>">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css"> 
</head>
<body>
  <script>
	function alertDupErrorMessage(value) {
		console.log(value);
		let position = value.search("ViolationException:");
		let result = value.substring(position);
		alert(result+"!! Please make sure it is unqiue!");
	}
	</script>
<c:set var="duplicateError" value="${duplicateError}"/>
<c:out value="${duplcateError}"/>
<c:if test="${duplicateError != null}" >
	 <script> alertDupErrorMessage("${duplicateError.toString()}") </script>
	</c:if>
  <script>
		function alertNegativeErrorMessage(value) {
			console.log(value);
			alert("Please make sure the input quantity is a positive integer !!!");
		}
	</script>
<c:set var="negativeValue" value="${negativeValue}"/>
<c:if test="${negativeValue != null}" >
	 <script> alertNegativeErrorMessage("${negativeValue.toString()}") </script>
	</c:if>

<%@ include file="../shareFiles/header.jsp" %>
<div class="row g-0">
<%@ include file="../shareFiles/sideMenu.jsp" %>   
 <div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
                        <h1>ADD NEW OrderStock</h1>
                      <div class="inputContainer">
 <form action="displayGoods">  
  <div style="display:float">
 <select style="float: left" name="supplierName" id="supplierName">
	<c:forEach items="${supplierNames}" var="currentSupplier" varStatus="loop">
			<c:choose>
			<c:when test="${currentSupplier == supplier}">
				<option value="${currentSupplier}" selected>${currentSupplier}</option>
			</c:when>
			<c:otherwise>
				<option value="${currentSupplier}">${currentSupplier}</option>
			</c:otherwise>
		</c:choose>	 
	</c:forEach>
</select>
<input style="float: right; width:30%; height:50%;" type="submit" value="search"/>
</div>
</form>
 <form action="addOrderStock">
 <input type="hidden" name="supplierName" value="${supplier}"/>
    	<table class="table table-striped table-hover" border="0" cellpadding="0" width="100%" bgcolor="#FFFFFF">
       	<tr>
		<td><b>NO.</b></td>
		<td><b>STOCK</b></td>
        <td><b>QUANTITY</b></td>
		<td></td>
		</tr>
<c:forEach items="${sList}" var="currentStock" varStatus="loop">
<jsp:useBean id="list" class="java.util.ArrayList"/>
<c:set var="myorders" value=""/>
<tr>
	<td><c:out value="${loop.index +1}"/></td>
	<td><input name="name" type="text" value="${currentStock.getName()}" readonly/></td>
	<td><input name="quantity" type="number" value="${currentStock.getQuantity()}"/></td>
</tr>
	<input type="hidden" name="id" value="${currentStock.getGoodsID()}"/>
</c:forEach>
</table>
<input type="submit"/>
  </form>

            </div>
            </div>
            </div>
<%@ include file="../shareFiles/footer.jsp" %>
</body>
</html>