<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<!-- <link rel="stylesheet" type="text/css" href="../shareFiles/index.css"> -->
<title>Health Care | HomePage</title>

<style>
#home{
	background:  linear-gradient(rgba(18, 15, 45, .5), rgba(18, 15, 45, .5)), url("<c:url value="//resources/img/healthCare-background.jpg"/>");
	background-repeat: no-repeat;
	width: 100%;
	margin: 10px 5px;
	border-radius: 5px;
	padding: 5px;
	min-height: 650px;
}

</style>

</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="row g-0">
		<%@ include file="sideMenu.jsp"%>
		<div class="col-lg ps-5 pe-3 bg-light wow fadeIn rounded" data-wow-delay="0.1s">
		<div id="home" class="mt-3 mb-5 rounded text-center align-items-center justify-content-center d-flex">
		<div>
		<h1 class="text-white">HEALTHIER YOU. <br>HEALTHIER COMMUNITIES.</h1><br><br>
					<p class="text-white" style="font-size:25px;'">Be a part of the Afflatus</p><br>
					<p class="text-white">Everyone deserves access to affordable, quality health care coverage and services. </p><br>
		</div>
		</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
	

  </body>
</body>
</html>