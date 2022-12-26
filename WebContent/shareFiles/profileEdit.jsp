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
	padding: 10px;
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
	padding: 10px;
}

#edit {
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>
	<%@ include file="header.html"%>
	<div class="content">
		<%@ include file="sideMenu.jsp"%>
		<div class="content-item page">
			<div class="main-content-container">
				<div class="main-content-item main-title">
					<!--Put your Page Title here-->
					<h1>Patient</h1>
				</div>

				<div class="main-content-item main-content">
					<!--Put your Page Content here-->
					<div class="profileContainer">
						<div class="profile">
							<img id="profilePic" src="../img/user.png" alt="profile picture"
								width="250px" height="250px">
						</div>
						
						<div class="profile" id="profileDetail">
							<table>
								<tr>
									<th>Name</th>
									<td>Admin</td>
								</tr>
								<tr>
									<th>Gender</th>
									<td>Male</td>
								</tr>
								<tr>
									<th>Age</th>
									<td>25</td>
								</tr>
								<tr>
									<th>Phone Number</th>
									<td>010-1234567</td>
								</tr>
								<tr>
									<th>IC Number</th>
									<td>000111-01-0011</td>
								</tr>
							</table>
							<br> <br> <br>
							<div id="edit">
								<a href="profileEdit.jsp"><button>Edit</button></a> 
								<a href="profile.jsp"><button>Cancel</button></a>
							</div>
							
						</div>

					</div>
				</div>
			</div>
			<%@ include file="footer.html"%>


		</div>
	</div>

</body>
</html>