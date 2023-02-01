<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>HealthCare | Supplier</title>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="stock.css">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css"> 
</head>
<body>
<%@ include file="../shareFiles/header.jsp" %>
<div class="row g-0">
<%@ include file="../shareFiles/sideMenu.jsp" %>   
 <div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
                        <h1>UPDATE SUPPLIER</h1>
                      <div class="inputContainer">
 <form action="Supplier.jsp">
    <label for="companyName">Company Name</label>
    <input type="text" id="companyName" name="companyName"  required>

    <label for="suppliedGood">Supplied Good</label>
    <input type="text" id="suppliedGood" name="suppliedGood" required>

    <label for="contact">Contact Person</label>
    <input type="text" id="contact" name="contact"  required>
  
      <label for="email">Email</label>
    <input type="text" id="email" name="email" required>
    
     <label for="phoneNo">Phone Number</label>
    <input type="tel" id="phoneNo" name="phoneNo" required>
    
        <label for="address">Address</label>
    <input type="text" id="address" name="address" required>

    <input class="inputButton btn-primary mb-5"type="submit" onclick="successUpdate()" value="Update">
  </form>
                            <script>
    function successUpdate() {
        alert("This supplier detail was successfully updated !!");
    }
</script>  
            </div>
            </div>
            </div></div></div>
<%@ include file="../shareFiles/footer.jsp" %>
</body>
</html>