<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css">
<link rel="stylesheet" type="text/css" href="<c:url value="//resources/css/history.css"/>">
<title>Health Care Management | Manage Order</title>
</head>
<body>
	<%@ include file="../shareFiles/header.jsp"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
						<h1>HISTORY</h1>
						<div class="bg-white rounded-3 p-3 py-2 mb-3 shadow mb-5">
							<table class="table table-striped table-hover">
							<thead>
								<tr class="text-dark text-center">
									<th>No.</th>
									<th>Patient Name</th>
									<th>Last Visit Date</th>
									<th>Doctor Assigned</th>
								</tr>
								</thead>
								<tbody class="align-middle text-secondary">
                                                                    
                                                                    <c:forEach items="${sList}" var="rm" varStatus="loop">     
                                                                    
							<tr id="row1">
									<td><c:out value="${rm.getId()}"/></td>
									<td><c:out value="${rm.getPatientName()}"/></td>
									<td><c:out value="${rm.getDateVisited()}"/></td>
                                                                        <td><c:out value="${rm.getDoctor()}"/></td>
								</tr>
                                                                </c:forEach>
								
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../shareFiles/footer.jsp"%>
	<script type="module"
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
	<script type="text/javascript">
		function rejectPrescription() {
			alert("Are you sure to delete this prescription?")
		}
	</script>
</body>
</html>
