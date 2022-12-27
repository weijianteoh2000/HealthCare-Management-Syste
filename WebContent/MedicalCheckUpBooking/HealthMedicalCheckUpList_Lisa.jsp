<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare | Health Medical Check Up List</title>
<link rel="stylesheet" type="text/css" href="MedicalCheckUp.css">
<link rel="stylesheet" type="text/css" href="../OrderManagement/order.css">
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
					<h1>PATIENT LIST</h1>
				</div>

				<div class="main-content-item main-content">
					<!--Put your Page Content here-->
					<form class="searchContainer" method="" action="">
						<input type="text" placeholder="Search Patient..." name="search">
						<button type="submit" onclick="searchItem()">
							<i class="fa fa-search"></i>
						</button>
					</form>
					<div class="Patient_tableList">
						<table id="Patient_tableList">
							<tr>
								<td>Lisa</td>
								<td>000111-01-0101</td>
								<td><a href="HealthMedicalCheckUpForm.jsp"><button class="modifyButton">Details</button></a></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<%@ include file="../shareFiles/footer.html"%>


		</div>
	</div>
</body>
</html>