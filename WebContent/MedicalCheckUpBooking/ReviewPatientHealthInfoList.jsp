<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare|Review Patient Health Info Detail</title>
<link rel="stylesheet" type="text/css" href="MedicalCheckUp.css">
<style>
table{
	border: 1px solid gray;
	width: 100%;

}
table, th, td{
	padding: 20px;
}
</style>
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
					<form action="" method="">
						<input type="text" name="patient_name" value="Lisa"> <input
							type="submit" name="submit" value="submit">
					</form>
					<div class="tableList">
					<table>
						<tr>
							<th>Lisa</th>
							<td>000111-01-0101</td>
							<th><button>Details</button></th>
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