<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare | Patient Profile Search</title>
<link rel="stylesheet" type="text/css" href="MedicalCheckUp.css">
</head>
<body>
	<%@ include file="../shareFiles/header.jsp"%>
	<div class="content">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="content-item page">
			<div class="main-content-container">
				<div class="main-content-item main-title">
					<!--Put your Page Title here-->
					<h1>Search Patient Profile</h1>
				</div>

				<div class="main-content-item main-content">
					<!--Put your Page Content here-->
					Please input the patient name to review the profile information of patient
					<form action="PatientProfileSearchList.jsp" method="">
						<input type="text" name="patient_name"> <input
							type="submit" name="submit" value="submit">
					</form>
				</div>
				
			</div>
			<%@ include file="../shareFiles/footer.jsp"%>

		</div>
	</div>
</body>
</html>