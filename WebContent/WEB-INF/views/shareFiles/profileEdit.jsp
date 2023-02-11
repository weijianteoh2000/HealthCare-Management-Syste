<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Profile</title>
<style>
#profilePic {
	border: 1 solid rgba(0, 0, 0, 0);
	border-radius: 100px;
}

.profileContainer {
	display: flex;
	flex-direction: row;
}

.profile {
	background-color: white;
	margin: 20px;
	border-radius: 20px;
	padding: 5px;
	box-shadow: 0 7px 25px rgba(0, 0, 0, 0.3);
	width: 50%;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 500px;
}

#profileDetail {
	display: flex;
	flex-direction: column;
	padding-left: 25px;
	padding-top: 25px;
}

table {
	width: 75%;
}

td {
	border: 1px solid black;
	border-collapse: collapse;
	background-color: white;
	border-radius: 10px;
}

table, td, th {
	padding: 5px;
}

#edit {
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="row g-0">
		<%@ include file="sideMenu.jsp"%>
		<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
			<h1 style="text-transform: capitalize;">${userType}</h1>
			<div class="profileContainer">
				<div class="profile">
					<img id="profilePic"
						src="<c:url value="//resources/img/user.png"/>"
						alt="profile picture" width="250px" height="250px">
				</div>

				<div class="profile" id="profileDetail">
					<form action="update" method="post">
						<table>
							<tr>
								<th>Name</th>
								<td><input type="text" name="name"
									value="${prof.name}"></td>
							</tr>
							<tr>
								<th>Gender</th>
								<td><input type="text" name="gender"
									value="${prof.gender}"></td>
							</tr>
							<tr>
								<th>Age</th>
								<td><input type="text" name="age" value="${prof.age}"></td>
							</tr>
							<tr>
								<th>Phone Number</th>
								<td><input type="text" name="phone"
									value="${prof.phone}"></td>
							</tr>
							<tr>
								<th>Occupation</th>
								<td><input type="text" name="occupation"
									value="${prof.occupation}"></td>
							</tr>
							<tr>
								<th>IC Number</th>
								<td><input type="text" name="ic" value="${prof.ic}"></td>
							</tr>
							<tr>
								<th>Address</th>
								<td><input type="text" name="address" value="${prof.address}"></td>
							</tr>
							<tr>
								<th>Email</th>
								<td><input type="text" name="email"
									value="${prof.email}"></td>
							</tr>
						</table>
						<br> <br> <br>
						<div class="justify-content-center d-flex">
							<input class="btn btn-primary m-3 mb-5 shadow-lg" type="submit"
								value="Edit"> 
							<input class="btn btn-primary m-3 mb-5 shadow-lg" name="action" type="submit"
								value="Cancel"> 
						</div>
					</form>


				</div>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>