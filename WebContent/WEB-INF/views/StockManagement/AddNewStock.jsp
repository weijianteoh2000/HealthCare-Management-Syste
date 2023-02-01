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
                        <h1>ADD NEW STOCK</h1>
                      <div class="inputContainer">
 <form action="addStock">
    <label for="stockname">Name</label>
    <input type="text" id="stockname" name="name" placeholder="Stock name.." required>

    <label for="stockquantity">Quantity</label>
    <input type="number" id="stockquantity" name="quantity"placeholder="10" required>

    <label for="origin">Origin</label>
    <input type="text" id="origin" name="origin" placeholder="Origin Address.." required>
  
      <label for="refNo">Reference No</label>
    <input type="text" id="refNo" name="refNo" placeholder="reference No.." required>
    
        <label for="adate">Arrival Date</label>
    <input type="date" id="adate" name="arrDate"  required>
        <label for="edate">Expiry Date</label>
    <input type="date" id="edate" name="expDate" required>
    <input class="inputButton btn-primary mb-5" type="submit" onClick="successAdd()" value="Save">
  </form>

            </div>
            </div>
            </div>
<%@ include file="../shareFiles/footer.jsp" %>
</body>
</html>