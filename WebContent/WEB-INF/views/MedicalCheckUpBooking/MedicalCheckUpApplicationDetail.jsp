<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare | Pending Booking Detail</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="//resources/css/MedicalCheckUp.css"/>">
</head>
<body>
<%
	

%>
	<%@ include file="../shareFiles/header.jsp"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
			<h1>PENDING APPLICATION</h1>
			<br>
			<div class="checkUp_form">
				<h1 id="main_header_patient"
					style="text-align: center; margin-top: 10px;">Patient
					Information</h1>
				<div class="details">
					<table class="table table-striped table-hover">
						<thead>
							<tr class="text-dark">
								<th>Name:</th>
								<td>${prof.name}</td>
							</tr>
							<tr>
								<th>Age:</th>
								<td>${prof.age}</td>
							</tr>
							<tr class="text-dark">
								<th>Gender:</th>
								<td>${prof.gender}</td>
							</tr>
							<tr>
								<th>Phone:</th>
								<td>${prof.phone}</td>
							</tr>
							<tr class="text-dark">
								<th>Occupation:</th>
								<td>${prof.occupation}</td>
							</tr>
							<tr>
								<th>IC Number:</th>
								<td>${prof.ic}</td>
							</tr>
						</thead>
					</table>
					<c:choose>
						<c:when test="${sessionScope.userType == 'admin'}">
							<h1 id="main_header_patient"
								style="text-align: center; margin-top: 10px;">Application
								Information</h1>

							<div class="details">
								<form action="applicationResponse" method="post">
									<table>
										<tbody class="align-middle text-secondary">
											<tr class="text-dark">
												<th>Request Date:</th>
												<td>${reqeustDate}</td>
											</tr>
											<tr>
												<th>Request Time:</th>
												<td>${appl.timeRange }</td>
											</tr>
											<tr class="text-dark">
												<th>Assign Appointment Time:</th>
												<td><select name="assignTime">
														<option value="09:00">09:00</option>
														<option value="10:00">10:00</option>
														<option value="11:00">11:00</option>
														<option value="12:00">12:00</option>
														<option value="13:00">13:00</option>
														<option value="14:00">14:00</option>
														<option value="15:00">15:00</option>
														<option value="16:00">16:00</option>
												</select> <input name="applicationId" type="hidden"
													value="${appl.applicationId}"></td>
											</tr>
											<tr>
												<th>Assign Doctor:</th>
												<td><select name="assignDoctor">
														<c:forEach items="${doctorList}" var="doctor"
															varStatus="loop">
															<option
																value="<c:out value="${doctorIdList[loop.index]}"/>"><c:out
																	value="${doctor.name}" /></option>
														</c:forEach>
												</select></td>
											</tr>
											<tr class="text-dark">
												<th>Reject Reason:</th>
												<td><textarea name="rejectReason" rows="4" cols="30"
														placeholder=""></textarea></td>
											</tr>
										</tbody>
									</table>
									<div style="display: flex; justify-content: center;">
										<input class="btn btn-primary m-3 mb-5 shadow-lg"
											type="submit" name="submit" value="Acccpt"> <input
											class="btn btn-primary m-3 mb-5 shadow-lg" type="submit"
											name="submit" value="Reject">

									</div>
								</form>
							</div>

						</c:when>

						<c:when test="${appl.status == 'approved'}">
							<h1 id="main_header_patient"
								style="text-align: center; margin-top: 10px;">Application
								Information</h1>
							<br>
							<table>
								<tbody class="align-middle text-secondary">
									<tr class="text-dark">
										<th>Request Date:</th>
										<td>${reqeustDate}</td>
									</tr>
									<tr>
										<th>Request Time:</th>
										<td>${appl.timeRange }</td>
									</tr>
									<tr class="text-dark">
										<th>Assigned Appointment Time:</th>
										<td><c:out value="${assignTime}" /></td>
									</tr>
									<tr>
										<th>Assigned Doctor:</th>
										<td><c:out value="${doctorName}" /></td>
									</tr>
								</tbody>

							</table>

							<a href="../pages/medicalCheckUpApplicationList"><button
									class="btn btn-primary m-3 mb-5 shadow-lg">Return to
									last page</button></a>
						</c:when>

						<c:when test="${appl.status == 'rejected'}">
							<h1 id="main_header_patient"
								style="text-align: center; margin-top: 10px;">Application
								Information</h1>
							<br>

							<table>
								<tr class="text-dark">
									<th>Reject Reason:</th>
									<td><c:out value="${appl.rejectReason}" /></td>
								</tr>
							</table>

							<a href="../pages/medicalCheckUpApplicationList"><button
									class="btn btn-primary m-3 mb-5 shadow-lg">Return to
									last page</button></a>
						</c:when>

						<c:when test="${appl.status == 'pending'}">
							<h1 id="main_header_patient"
								style="text-align: center; margin-top: 10px;">Application
								Information</h1>
							<br>
							<h3>Your application still in processing, please revisit
								later</h3>
							<a href="../pages/medicalCheckUpApplicationList"><button
									class="btn btn-primary m-3 mb-5 shadow-lg">Return to
									last page</button></a>
						</c:when>
					</c:choose>



					<br>
				</div>


			</div>

		</div>
	</div>
	<%@ include file="../shareFiles/footer.jsp"%>
</body>
</html>