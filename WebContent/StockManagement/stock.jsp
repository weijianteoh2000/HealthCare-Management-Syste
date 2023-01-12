<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare | Stock</title>
<link rel="stylesheet" type="text/css" href="stock.css">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css">
</head>
<body>
<%@ include file="../shareFiles/header.html" %>
<div class="row g-0">
<%@ include file="../shareFiles/sideMenu.jsp" %> 
 <div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
                        <h1>STOCK MANAGEMENT</h1>
                      <div class="container mb-5">
  <div class="column">
    <div class="card rounded-3">
      <h4 class="mt-4 mb-0">DETAILS  <img width=100 height=100 src="../img/stock.png"></img></h4><br></br>
      <a href="Details.jsp"><p class="mb-0">More Info -> </p></a>
    </div>
  </div>
  <div class="column">
    <div class="card rounded-3"> <h4 class="mt-4 mb-0">SUPPLIER  <img width=100 height=100 src="../img/supplier.png"></img></h4><br></br>
    <a href="Supplier.jsp"> <p class="mb-0">More Info -> </p></a></div>
  </div>
  <div class="column">
    <div class="card rounded-3"> <h4 class="mt-4 mb-0">TRANSITION  <img width=100 height=100 src="../img/transition.png"></img></h4><br></br>
     <div class="moreInfo"> <a href="Transition.jsp"><p class="mb-0">More Info -> </p></a></div></div>
  </div>
</div>
                    </div>
                </div>
<%@ include file="../shareFiles/footer.html" %>
</body>
</html>