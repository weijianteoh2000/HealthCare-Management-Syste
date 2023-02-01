<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HealthCare | Details</title>
<link rel="stylesheet" type="text/css" href="stock.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<style>
</style>
</head>
<body>
	<%@ include file="../shareFiles/header.jsp"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
					<h1>STOCK DETAILS</h1>
					<div class="content-table">
						<div class="table table-striped table-hover" id="myTable">
							<script src="Details.js"></script>
						</div>
						<div class="justify-content-center d-flex">
							<button class="btn btn-primary m-3 mb-5 shadow-lg"
								onClick="location.href = 'AddNewStock.jsp';">Add new</button>
						</div>
						<!--  <script>
                            function deleteRow(btn){
                            	document.getElementsByTagName("tr")[i].remove();
                           };
                            </script> -->
					</div>
				</div>
			</div>
	<%@ include file="../shareFiles/footer.jsp"%>
</body>
</html>