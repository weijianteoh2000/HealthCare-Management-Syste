<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare | Health Medical Check Up List</title>
<link rel="stylesheet" type="text/css" href="<c:url value="//resources/css/MedicalCheckUp.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="//resources/css/order.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="//resources/css/stock.css"/>">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%@ include file="../shareFiles/header.jsp"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
		<h1>PATIENT LIST</h1>
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
								<td><a href="HealthMedicalCheckUpForm.jsp"><button class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark">Details</button></a></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<%@ include file="../shareFiles/footer.jsp"%>


		</div>
	</div>
</body>
</html>