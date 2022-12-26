<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare|Review Patient Health Info</title>
<link rel="stylesheet" type="text/css" href="MedicalCheckUp.css">
</head>
<body>
	<%@ include file="../shareFiles/header.html"%>
	<div class="content">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="content-item page">
			<div class="main-content-container">
				<div class="main-content-item main-title">
					<!--Put your Page Title here-->
					<h1>Review Patient Health Info</h1>
				</div>

				<div class="main-content-item main-content">
					<!--Put your Page Content here-->
					Please input the patient name to review the health medical check up
					result for the patient
					<form action="ReviewPatientHealthInfoList.jsp" method="">
						<input type="text" name="patient_name"> <input
							type="submit" name="submit" value="submit">
					</form>
				</div>
				
			</div>
			<%@ include file="../shareFiles/footer.html"%>

		</div>
	</div>
</body>
</html>