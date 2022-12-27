<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare | Review Patient Health Info</title>
<link rel="stylesheet" type="text/css" href="MedicalCheckUp.css">
<link rel="stylesheet" type="text/css" href="../StockManagement/stock.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<%@ include file="../shareFiles/header.html"%>
	<div class="content">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="content-item page">
			<div class="main-content-container">
				<div class="main-content-item main-title">
					<!--Put your Page Title here-->
					<h1>REVIEW PATIENT</h1>
				</div>

				<div class="main-content-item main-content">
					<!--Put your Page Content here-->
					<form class="searchContainer"
						action="ReviewPatientHealthInfoList.jsp">
						<input type="text" placeholder="Search Patient..." name="search">
						<button type="submit" onclick="searchItem()">
							<i class="fa fa-search"></i>
						</button>
					</form>
				</div>

			</div>
			<%@ include file="../shareFiles/footer.html"%>

		</div>
	</div>

	<script type="module"
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>