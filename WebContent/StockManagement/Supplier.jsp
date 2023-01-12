<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HealthCare | Supplier</title>
<link rel="stylesheet" type="text/css" href="stock.css">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css"> 
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body>
<%@ include file="../shareFiles/header.html" %>
<div class="row g-0">
<%@ include file="../shareFiles/sideMenu.jsp" %> 
 <div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
                        <h1>SUPPLIER DETAILS</h1>
                    <div class="main-content-item main-content">
                        <!--Put your Page Content here-->
                   <div class="content-table">
                            <div id="myTable">
                               <script src="Supplier.js"></script>
                            </div>
                            <div class="justify-content-center d-flex">
                            <button class="btn btn-primary m-3 mb-5 shadow-lg" onClick="location.href = 'AddNewSupplier.jsp';">Add new</button></div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
<%@ include file="../shareFiles/footer.html" %>
</body>
</html>