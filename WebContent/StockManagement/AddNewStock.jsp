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
<div class="content">
<%@ include file="../shareFiles/sideMenu.jsp" %>   
 <div class="content-item page">
                <div class="main-content-container">
                    <div class="main-content-item main-title">
                        <!--Put your Page Title here-->
                        <h1>ADD NEW STOCK</h1>
                    </div>
                    <div class="main-content-item main-content">
                        <!--Put your Page Content here-->
                      <div class="inputContainer">
 <form action="Details.jsp">
    <label for="stockname">Name</label>
    <input type="text" id="stockname" name="stockname" placeholder="Stock name.." required>

    <label for="stockquantity">Quantity</label>
    <input type="number" id="stockquantity" name="stockquantity"placeholder="10" required>

    <label for="origin">Origin</label>
    <input type="text" id="origin" name="origin" placeholder="Origin Address.." required>
  
      <label for="refNo">Reference No</label>
    <input type="text" id="refNo" name="referenceNo" placeholder="reference No.." required>
    
        <label for="adate">Arrival Date</label>
    <input type="date" id="adate" name="arrivalDate"  required>
        <label for="edate">Expiry Date</label>
    <input type="date" id="edate" name="expiryDate" required>
    <input class="inputButton" type="submit" onClick="successAdd()" value="Save">
  </form>
                        <script>
    function successAdd() {
        alert("New stock was successfully added !!");
    }
</script>  
            </div>
            </div>
            </div></div></div>
<%@ include file="../shareFiles/footer.html" %>
</body>
</html>