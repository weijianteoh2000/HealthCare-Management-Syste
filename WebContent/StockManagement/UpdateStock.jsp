<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>HealthCare | Details</title>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="stock.css">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css"> 
</head>
<body>
<%@ include file="../shareFiles/header.html" %>
<div class="row g-0">
<%@ include file="../shareFiles/sideMenu.jsp" %>  
 <div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
                        <h1>UPDATE STOCK</h1>
                      <div class="inputContainer">
 <form action="Details.jsp">
    <label for="stockname">Name</label>
    <input type="text" id="stockname" name="stockname" required>

    <label for="stockquantity">Quantity</label>
    <input type="number" id="stockquantity" name="stockquantity"required>

    <label for="origin">Origin</label>
    <input type="text" id="origin" name="origin" required>
  
      <label for="refNo">Reference No</label>
    <input type="text" id="refNo" name="referenceNo" required>
    
        <label for="adate">Arrival Date</label>
    <input type="date" id="adate" name="arrivalDate" required>
        <label for="edate">Expiry Date</label>
    <input type="date" id="edate" name="expiryDate" required>
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
<%@ include file="../shareFiles/footer.html" %>
</body>
</html>