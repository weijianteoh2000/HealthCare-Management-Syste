<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="//resources/css/MedicalCheckUp.css"/>">
<style>
table, th, td {
	border: 1px solid grey;
	border-collapse: collapse;
	padding: 10px;
}

table {
	margin: 20px;
}

.timeRow {
	background-color: #8bcbe1;
}

.oddRow {
	background-color: #d2ebf3;
}
</style>
</head>
<body>
	<%@ include file="../shareFiles/header.jsp"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
			<h1>TimeTable</h1>
			<div class="main-content-item main-content">
				<div class="tableList d-flex justify-content-center">
					<table>
						<c:forEach begin="0" end="7" step="1" varStatus="i">
							<c:choose>
								<c:when test="${i.index == 0 }">
									<tr class='timeRow'>
										<th></th>
										<th>9:00-9:40</th>
										<th>10:00-10:40</th>
										<th>11:00-11:40</th>
										<th>12:00-12:40</th>
										<th>13:00-13:40</th>
										<th>14:00-14:40</th>
										<th>15:00-15:40</th>
										<th>16:00-16:40</th>
									</tr>
								</c:when>
								<c:otherwise>

									<c:if test="${i.index%2 == 1}">
										<tr class="oddRow">
											<th>${days[i.index-1]}</th>
											<c:forEach begin="0" end="7" step="1" varStatus="j">
												<c:choose>
													<c:when test="${j.index==4}">
														<th>rest</th>
													</c:when>
													<c:otherwise>
														<th>${patient[i.index-1][j.index]}</th>
													</c:otherwise>
												</c:choose>

											</c:forEach>
										</tr>
									</c:if>
									<c:if test="${i.index%2 == 0}">
										<tr>
											<th>${days[i.index-1]}</th>
											<c:forEach begin="0" end="7" step="1" varStatus="j">
												<c:choose>
													<c:when test="${j.index==4}">
														<th>rest</th>
													</c:when>
													<c:otherwise>
														<th>${patient[i.index-1][j.index]}</th>
													</c:otherwise>
												</c:choose>

											</c:forEach>
										</tr>
									</c:if>

								</c:otherwise>
							</c:choose>

						</c:forEach>

					</table>
				</div>


			</div>
		</div>
		<%@ include file="../shareFiles/footer.jsp"%>


	</div>
	</div>
</body>
</html>