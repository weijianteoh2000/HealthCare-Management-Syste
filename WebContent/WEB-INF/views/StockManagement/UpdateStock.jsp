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
<%@ include file="../shareFiles/header.jsp" %>
<div class="row g-0">
<%@ include file="../shareFiles/sideMenu.jsp" %>  
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
                        <h1>UPDATE STOCK</h1>
                      <div class="inputContainer">
 <form action="updateStock">
    <label for="stockname">Name</label>
    <input type="text" id="stockname" name="name" value="${sDetails.getName()}" required>

    <label for="stockquantity">Quantity</label>
    <input type="number" id="stockquantity" name="quantity" value="${sDetails.getQuantity()}" required>

    <label for="origin">Origin</label>
    <input type="text" id="origin" name="origin" value="${sDetails.getOrigin()}" required>
  
      <label for="refNo">Reference No</label>
    <input type="text" id="refNo" name="refNo"value="${sDetails.getRefNo()}" required>
    
        <label for="adate">Arrival Date</label>
    <input type="date" id="adate" name="arrDate"value="${sDetails.getArrDate()}" required>
        <label for="edate">Expiry Date</label>
    <input type="date" id="edate" name="expDate"value="${sDetails.getExpDate()}" required>
    <input type="hidden" name="id" value="${sDetails.getId()}">
    <input class="inputButton btn-primary mb-5"type="submit" onClick="successUpdate()" value="Update">
  </form>
                          <script>
    function successUpdate() {
        alert("This stock was successfully updated !!");
    }
</script>  
            </div>
            </div>
            </div>
<%@ include file="../shareFiles/footer.jsp" %>
</body>
</html>