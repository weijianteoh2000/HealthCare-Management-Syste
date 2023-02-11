<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HealthCare | Supplier</title>
<link rel="stylesheet" type="text/css" href="<c:url value="//resources/css/Supplier.css"/>">
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
					<h1>SUPPLIER DETAILS</h1>
					<div class="content-table">
						<div>
							<table class="table table-striped table-hover" border="0" cellpadding="0" width="100%" bgcolor="#FFFFFF">
       	<tr>
		<td><b>NO.</b></td>
		<td><b>ID</b></td>
        <td><b>COMPANY NAME</b></td>
		<td><b>CONTACT PERSON</b></td>
		<td><b>ACTION</b></td>
		<td></td>
		</tr>
<c:forEach items="${sList}" var="currentSupplier" varStatus="loop">

<tr>
	<td><c:out value="${loop.index +1}"/></td>
	<td><c:out value="${currentSupplier.getId()}"/></td>
	<td><c:out value="${currentSupplier.getCompanyName()}"/></td>
	<td><c:out value="${currentSupplier.getContact()}"/></td>

	<td>
	<div style="display:flex">
       		<form style="float:left; margin-right:10px" name="modifyForm" action="updateSupplierForm" method="POST">
       		<input type="hidden" name="updateindex" value="${currentSupplier.getId()}">
       		<button class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark"><div class="fas fa-edit"></button>
       		</form>
       			<form style="float:right" name="modifyForm" action="deleteSupplier" method="POST">
       		<input type="hidden" name="delindex" value="${currentSupplier.getId()}">
       		  		<button class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark"><div class="fas fa-trash-alt"/></button>
       		</form>
     </div>
       	</td>
</tr></c:forEach>
</table>
						</div>
						<div class="justify-content-center d-flex">
							<button class="btn btn-primary m-3 mb-5 shadow-lg"
								onClick="location.href = 'addSupplierForm';">Add new</button>
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