<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare | Booking Waiting List</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="//resources/css/MedicalCheckUp.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="//resources/css/order.css"/>">
</head>
<body>
	<script>
		function successAdd(value) {
			alert(value);
		}
	</script>
	<c:if test="${successAdd != null}">
		<script>
			successAdd('${successAdd.toString()}')
		</script>
	</c:if>
	<%@ include file="../shareFiles/header.jsp"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
			<h1>Application List</h1>
			<div class="bg-white rounded-3 p-3 py-2 mb-3 shadow">

				<table class="table table-striped table-hover">
					<thead class="align-middle text-secondary">
						<tr class="text-dark">
							<th>No.</th>
							<th>Date</th>
							<th>Status</th>
							<th></th>
						</tr>
					</thead>
					<tbody class="align-middle text-secondary">
						<c:forEach items="${aList}" var="item" varStatus="loop">
							<form action="../application/applicationDetail" method="post">
								<tr>
									<td><c:out value="${loop.index+1}" /><input
										name="applicationId" type="hidden"
										value="<c:out value="${item.applicationId}" />"></td>
									<td class="date"><c:out value="${dateList[loop.index]}" />
										<c:out value="${item.timeRange}" /> <c:out
											value="${timeList[loop.index]}" /></td>
				
									<c:if test="${item.status == 'approved'}">
										<td><label class="accept"><c:out value="${item.status}" /></label></td>
									</c:if>
									<c:if test="${item.status == 'rejected'}">
										<td><label class="reject"><c:out value="${item.status}" /></label></td>
									</c:if>
									<c:if test="${item.status == 'pending'}">
										<td ><c:out value="${item.status}" /></td>
									</c:if>
									
									<td><input type="submit"
										class="btn btn-outline-dark rounded p-1 border border-2 border-dark"
										value="Detail"></td>
								</tr>
							</form>
						</c:forEach>
					</tbody>
				</table>


			</div>
			<div class="justify-content-center d-flex">
				<a href="../application/applicationForm"><button
						class="btn btn-primary m-3 mb-5 shadow-lg ">Add New
						Application</button></a>
			</div>
		</div>
	</div>
	<%@ include file="../shareFiles/footer.jsp"%>
</body>
</html>