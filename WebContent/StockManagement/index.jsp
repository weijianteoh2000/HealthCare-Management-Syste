<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Health Care Management System</title>
<link rel="stylesheet" type="text/css" href="stock.css">
<link rel="stylesheet" type="text/css" href="../index.css">
</head>
<body>
<%@ include file="header.html" %>
<div class="content">
<%@ include file="sideMenu.jsp" %> 
 <div class="content-item page">
                <div class="main-content-container">
                    <div class="main-content-item main-title">
                        <!--Put your Page Title here-->
                        <h1>Welcome to Health Care Management System</h1>
                    </div>
                    <div class="main-content-item main-content">
                        <!--Put your Page Content here-->
                      <div class="row">
  <div class="column">
    <div class="card">
      <h3>DETAILS  <img width=100 height=100 src="../img/stock.png"></img></h3><br></br>
      <a href="Details.jsp"><p>More Info -> </p></a>
    </div>
  </div>
  <div class="column">
    <div class="card"> <h3>SUPPLIER  <img width=100 height=100 src="../img/supplier.png"></img></h3><br></br>
     <a href="Supplier.jsp"> <p>More Info -> </p></a></div>
  </div>
  <div class="column">
    <div class="card"> <h3>TRANSITION  <img width=100 height=100 src="../img/transition.png"></img></h3><br></br>
      <a href="Transition.jsp"><p>More Info -> </p></a></div>
  </div>
</div>
                    </div>
                </div>
            </div>
            </div>
<%@ include file="footer.html" %>
</body>
</html>