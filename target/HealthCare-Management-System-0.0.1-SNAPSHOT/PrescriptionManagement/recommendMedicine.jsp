<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>HealthCare | Details</title>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="prescription.css">
</head>
<body>
<%@ include file="../shareFiles/header.jsp" %>
<div class="row g-0">
<%@ include file="../shareFiles/sideMenu.jsp" %>  
 <div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
               <h1>RECOMMEND MEDICINE</h1>
                   <div class="inputContainer">
 <form action="prescription.jsp">
    <label for="stockname">Name</label>
    <input type="text" id="stockname" name="stockname" required value="Lim Ah Beng">

    <label for="stockquantity">Illness</label>
    <input type="text" id="stockquantity" name="stockquantity"  value="Fever / Coughing" required>

    <label for="origin">Medicine</label>
    <input type="text" id="origin" name="origin" value="Panadol Malaysia" required>
  
      <label for="refNo">Reference No</label>
    <input type="text" id="refNo" name="referenceNo" value="M000022" required>
    
    <label for="refNo">Quantity</label>
    <input type="number" id="refNo" name="referenceNo" value="10" required>
    
        <label for="adate">Date Visited</label>
    <input type="date" id="adate" name="arrivalDate" value="2022-03-02"  required>
         
    
    <input class="inputButton" type="submit"   value="Update">
    <input class="inputButton mb-5" type="submit"  value="Generate">
  </form>
                          <script>
    function successUpdate() {
        alert("This stock was successfully updated !!");
    }
</script>  
            </div>
            </div>
            </div></div></div>
<%@ include file="../shareFiles/footer.jsp" %>
</body>
</html>