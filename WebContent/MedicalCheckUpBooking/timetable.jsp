<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="MedicalCheckUp.css">
<style>
table, th, td{
	border: 1px solid grey;
	border-collapse: collapse;
	padding:10px;
}
table{
	margin:20px;
}
.timeRow{
	background-color:#8bcbe1;
}
.oddRow{
	background-color:#d2ebf3;
}
</style>
</head>
<body>
	<%@ include file="../shareFiles/header.html"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
			<h1>TimeTable</h1>
				<div class="main-content-item main-content">
					<div class="tableList d-flex justify-content-center">
						<table>
							<%
								String[][] patient = new String[7][8];
								for (int i = 0; i < 7; i++)
									for (int j = 0; j < 8; j++)
										patient[i][j] = "";
								
								patient[4][2] = "lisa";
								String[] days = { "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday" };

								for (int i = 0; i < 8; i++) {
									if (i == 0) {
										out.println(
												"<tr class='timeRow'><th></th><th>9:00-9:40</th><th>10:00-10:40</th><th>11:00-11:40</th>"
														+ "<th>12:00-12:40</th><th>13:00-13:40</th><th>14:00-14:40</th><th>15:00-15:40</th><th>16:00-16:40</th></tr>");
									} else {
										if (i % 2 == 1) {
											out.println("<tr class='oddRow'>");
										} else {
											out.println("<tr>");
										}

										out.println("<th>" + days[i - 1] + "</th>");

										for (int j = 0; j < 8; j++) {
											if (j == 4) {
												out.println("<th>rest</th>");
												continue;
											}
											out.println("<th>" + patient[i - 1][j] + "</th>");
										}
									}

								}
							%>
							<!-- <tr><th>1</th><td width=0.001%>1234567890</td></tr>
	<tr><th>2</th><td width=0.001%>1234567890</td></tr> -->
						</table>
					</div>


				</div>
			</div>
			<%@ include file="../shareFiles/footer.html"%>


		</div>
	</div>
</body>
</html>