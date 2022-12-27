<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare | Health Medical Check Up List</title>
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
					<h1>HEALTH MEDICAL</h1>
				</div>

				<div class="main-content-item main-content">
					<!--Put your Page Content here-->
					<form class="searchContainer" method="" action="HealthMedicalCheckUpList_Lisa.jsp">
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
</body>
</html>