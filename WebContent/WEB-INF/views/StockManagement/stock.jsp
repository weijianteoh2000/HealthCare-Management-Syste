<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare | Stock</title>
<link rel="stylesheet" type="text/css" href="<c:url value="//resources/css/stock.css"/>">
</head>
<body>
<%@ include file="../shareFiles/header.jsp" %>
<div class="row g-0">
<%@ include file="../shareFiles/sideMenu.jsp" %> 
 <div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
                        <h1>STOCK MANAGEMENT</h1>
                      <div class="container mb-5">
  <div class="column">
    <div class="card rounded-3">
      <h4 class="mt-4 mb-0">ASSETS <img width=100 height=100 src="<c:url value="//resources/img/stock.png"/>"></img></h4><br></br>
      <a href="../stock/details"><p class="mb-0">More Info -> </p></a>
    </div>
  </div>
  <div class="column">
    <div class="card rounded-3"> <h4 class="mt-4 mb-0">SUPPLIER  <img width=100 height=100 src="<c:url value="//resources/img/supplier.png"/>"></img></h4><br></br>
    <a href="../Supplier/details"> <p class="mb-0">More Info -> </p></a></div>
  </div>
  <div class="column">
    <div class="card rounded-3"> <h4 class="mt-4 mb-0">ORDER <img width=100 height=100 src="<c:url value="//resources/img/transition.png"/>"></h4><br></br>
     <div class="moreInfo"> <a href="../OrderStock/details"><p class="mb-0">More Info -> </p></a></div></div>
  </div>
</div>
                    </div>
                </div>
<%@ include file="../shareFiles/footer.jsp" %>
</body>
</html>