<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HealthCare | Details</title>
<link rel="stylesheet" type="text/css" href="stock.css">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css"> 
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body>
<%@ include file="../shareFiles/header.html" %>
<div class="content">
<%@ include file="../shareFiles/sideMenu.jsp" %>
 <div class="content-item page">
                <div class="main-content-container">
                    <div class="main-content-item main-title">
                        <!--Put your Page Title here-->
                        <h1>STOCK DETAILS</h1>
                    </div>
                    <div class="main-content-item main-content">
                        <!--Put your Page Content here-->
                   <div class="content-table">
                            <div id="myTable">
                               <script src="Details.js"></script>
                            </div>
                            <div class="container">
                            <button class="button" onClick="location.href = 'AddNewStock.jsp';">Add new</button></div>
                           <!--  <script>
                            function deleteRow(btn){
                            	document.getElementsByTagName("tr")[i].remove();
                           };
                            </script> -->
                        </div>
                    </div>
                </div>
            </div>
            </div>
<%@ include file="../shareFiles/footer.html" %>
</body>
</html>