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
<%@ include file="../shareFiles/header.html" %>
<div class="content">
<%@ include file="../shareFiles/sideMenu.jsp" %>   
 <div class="content-item page">
                <div class="main-content-container">
                    <div class="main-content-item main-title">
                        <!--Put your Page Title here-->
                        <h1>UPDATE SUPPLIER</h1>
                    </div>
                    <div class="main-content-item main-content">
                        <!--Put your Page Content here-->
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

    <input class="inputButton"type="submit" onclick="successUpdate()" value="Update">
  </form>
                            <script>
    function successUpdate() {
        alert("This supplier detail was successfully updated !!");
    }
</script>  
            </div>
            </div>
            </div></div></div>
<%@ include file="../shareFiles/footer.html" %>
</body>
</html>