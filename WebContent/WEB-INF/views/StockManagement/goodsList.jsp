<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HealthCare | Details</title>
<link rel="stylesheet" type="text/css" href="<c:url value="//resources/stock.css"/>">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<style>
</style>
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
					<h1>GOODS LIST</h1>
					<div class="content-table">
						<div>
							<table class="table table-striped table-hover" border="0" cellpadding="0" width="100%" bgcolor="#FFFFFF">
       	<tr>
		<td><b>NO.</b></td>
        <td><b>NAME</b></td>
		<td><b>QUANTITY</b></td>
		</tr>
<c:forEach items="${sList}" var="currentStock" varStatus="loop">

<tr>
	<td><c:out value="${loop.index +1}"/></td>
	<td><c:out value="${currentStock.getName()}"/></td>
	<td><c:out value="${currentStock.getQuantity()}"/></td>
</tr></c:forEach>
</table>
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