<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>HealthCare | Details</title>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="prescription.css">
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
                        <h1>UPDATE PRESCRIPTION</h1>
                    </div>
                    <div class="main-content-item main-content">
                        <!--Put your Page Content here-->
                      <div class="inputContainer">
 <form action="allHistory.jsp">
    <label for="stockname">Name</label>
    <input type="text" id="stockname" name="stockname" required value="Lim Ah Beng">

    <label for="stockquantity">Illness</label>
    <input type="text" id="stockquantity" name="stockquantity"  value="Fever / Coughing" required>

    <label for="origin">Symptoms</label>
    <input type="text" id="origin" name="origin" value="Headache / Coughing at night" required>
  
      <label for="refNo">Reference No</label>
    <input type="text" id="refNo" name="referenceNo" value="R00023" required>
    
        <label for="adate">Date Visited</label>
    <input type="date" id="adate" name="arrivalDate" value="2022-02-02"  required>
        <label for="edate">Next Visit</label>
    <input type="date" id="edate" name="expiryDate" value="2022-03-02" required>
    
    <input class="inputButton" type="submit" onClick="successUpdate()" value="Update">
  </form>
                          <script>
    function successUpdate() {
        alert("This prescription was successfully updated !!");
    }
</script>  
            </div>
            </div>
            </div></div></div>
<%@ include file="../shareFiles/footer.html" %>
</body>
</html>