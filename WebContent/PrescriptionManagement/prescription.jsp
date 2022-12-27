<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare | Stock</title>
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
                        <h1>PRESCRIPTION MANAGEMENT</h1>
                    </div>
                    <div class="main-content-item main-content">
                        <!--Put your Page Content here-->
                      <div class="container">
  <div class="column">
    <div class="card">
      <h3>HISTORY  <img width=100 height=100 src="../img/prescrip.png"></img></h3><br></br>
      <a href="allHistory.jsp"><p>More Info -> </p></a>
    </div>
  </div>
  <div class="column">
    <div class="card"> <h3>RECOM MEDICINE <img width=100 height=100 src="../img/medic.png"></img></h3><br></br>
    <a href="recommendMedicine.jsp"> <p>More Info -> </p></a></div>
  </div>
  <div class="column">
    <div class="card"> <h3>MEDICINE LIST  <img width=100 height=100 src="../img/list.png"></img></h3><br></br>
     <div class="moreInfo"> <a href="medicineList.jsp"><p>More Info -> </p></a></div></div>
  </div>
</div>
                    </div>
                </div>
            </div>
            </div>
<%@ include file="../shareFiles/footer.html" %>
</body>
</html>