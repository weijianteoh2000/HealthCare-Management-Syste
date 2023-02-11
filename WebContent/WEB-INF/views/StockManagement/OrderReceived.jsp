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
    function successUpdate(value) {
        alert(value);
    }
</script>  
<c:if test="${successUpdate != null}" >
	 <script> successUpdate('${successUpdate.toString()}') </script>
	</c:if>
	<%@ include file="../shareFiles/header.jsp"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
					<h1>ORDER RECEIVE DOCUMENTS</h1>
					<form action="paid">
	
	<input type="hidden" name="id" value="${id}"/>
						<div>
						<!-- input receipt file statement -->
						   <label for="receipt">Upload Your Receipt File : </label><br>
						<input type="file"
       id="receipt" name="receipt"
       accept="image/png, image/jpeg, .pdf, .doc">
       <text>${os.getReceipt()}</text>
       <br></br>
						<!-- input invoice file statement -->
						   <label for="invoice">Upload Your Invoice File : </label><br>
							<input type="file"
       id="invoice" name="invoice" 
       accept="image/png, image/jpeg, .pdf, .doc">
       <text>${os.getInvoice()}</text>
						</div>
						<div class="justify-content-center d-flex">
							<button class="btn btn-primary m-3 mb-5 shadow-lg"
								>Submit</button>
						</div>
						</form>
						<!--  <script>
                            function deleteRow(btn){
                            	document.getElementsByTagName("tr")[i].remove();
                           };
                            </script> -->
					</div>
			</div>
	<%@ include file="../shareFiles/footer.jsp"%>
</body>
</html>