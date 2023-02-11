<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare | Add Booking</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="//resources/css/MedicalCheckUp.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="//resources/css/order.css"/>">
</head>
<body>
	<script>
		function alertNegativeErrorMessage(value) {
			console.log(value);
			if(value == "1")
				alert("For FIRST Application, Please choose future date to apply for the medical check up !!");
			else if(value == "2")
				alert("For SECOND Application,Please choose future to apply for the medical check up !!");
			else if(value == "3")
				alert("For THIRD Application,Please choose future to apply for the medical check up !!");
		}
	</script>
	<c:if test="${previousDate1 != null}">
		<script>
			alertNegativeErrorMessage('${previousDate1.toString()}')
		</script>
	</c:if>
	<c:if test="${previousDate2 != null}">
		<script>
			alertNegativeErrorMessage('${previousDate2.toString()}')
		</script>
	</c:if>
	<c:if test="${previousDate3 != null}">
		<script>
			alertNegativeErrorMessage('${previousDate3.toString()}')
		</script>
	</c:if>

	<%@ include file="../shareFiles/header.jsp"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
			<h1 id="main_header_makeNewBooking">Make New Application</h1>
			<div class="d-flex justify-content-center">
				<div
					class="bg-white rounded-3 p-3 py-2 mb-3 shadow w-auto d-flex justify-content-around">
					<form action="addApplication" method="post">
						<table class="table table-borderless">
							<tr>
								<th>Date 1:</th>
								<td><input type="date" name="date1"></td>
							</tr>
							<tr id="newApplication_time">
								<th>Time 1:</th>
								<td><input type="radio" name="time1" value="Morning">Morning &nbsp <input
									type="radio" name="time1" value="Afternoon">Afternoon
							</tr>
							<tr>
								<th>Date 2:</th>
								<td><input type="date" name="date2"></td>
							</tr>
							<tr id="newApplication_time">
								<th>Time 2:</th>
								<td><input type="radio" name="time2" value="Morning">Morning &nbsp<input
									type="radio" name="time2" value="Afternoon">Afternoon
							</tr>
							<tr>
								<th>Date 3:</th>
								<td><input type="date" name="date3"></td>
							</tr>
							<tr id="newApplication_time">
								<th>Time 3:</th>
								<td><input type="radio" name="time3" value="Morning">Morning &nbsp<input
									type="radio" name="time3" value="Afternoon">Afternoon
							</tr>

						</table>
						<div class="d-flex justify-content-center">
							<div class="centerBtn">
								<input type="submit" value="Submit"
										class="btn btn-primary m-3 mb-5 shadow-lg "/>
								<input type="submit" name="cancel" value="Cancel"
										class="btn btn-primary m-3 mb-5 shadow-lg "/>
									
							</div>
						</div>

					</form>
				</div>
			</div>

		</div>
	</div>
	<%@ include file="../shareFiles/footer.jsp"%>
</body>
</html>