<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="index.css">
<title>Health Care Management</title>
</head>
<body>

	<%@ include file="header.html"%>
	<div class="content">
		<%@ include file="sideMenu.jsp"%>
		<div class="content-item page">
			<div class="main-content-container">
				<div class="main-content-item main-title">
					<!--Put your Page Title here-->
					<h1>Welcome to Health Care Management System</h1>
				</div>
				<div class="main-content-item main-content">
					<div class="main">
						<div class="cardbox">
							<div class="card">
								<div>
									<div class="cardname">Daily Views</div>
									<div class="icon">
										<ion-icon name="eye-outline"></ion-icon>
									</div>
								</div>
								<div class="data">534</div>
							</div>
							<div class="card">
								<div>
									<div class="cardname">Total Sales</div>
									<div class="icon">
										<ion-icon name="cart-outline"></ion-icon>
									</div>
								</div>
								<div class="data">115</div>
							</div>
							<div class="card">
								<div>
									<div class="cardname">Comment</div>
									<div class="icon">
										<ion-icon name="chatbubble-ellipses-outline"></ion-icon>
									</div>
								</div>
								<div class="data">152</div>
							</div>
							<div class="card">
								<div>
									<div class="cardname">Profit</div>
									<div class="icon">
										<ion-icon name="cash-outline"></ion-icon>
									</div>
								</div>
								<div class="data">43071</div>
							</div>
						</div>

						<!-- Add Graph & Chart -->
						<div class="graphbox">
							<div class="chart">
								<canvas id="myChart"></canvas>
							</div>
							<div class="graph">
								<!-- <canvas id="myGraph_salesCategory"></canvas> -->
								<canvas id="myGraph_profit"></canvas>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="footer.html"%>

	<script type="module"
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@4.1.1/dist/chart.umd.min.js"></script>

	<script>
		const chart = document.getElementById('myChart');
		const graph_sales_category = document
				.getElementById('myGraph_salesCategory');
		const graph_profit = document.getElementById('myGraph_profit');

		new Chart(chart, {
			type : 'doughnut',
			data : {
				labels : [ 'Pregnancy Kit', 'Prescription Drugs', 'Supplement',
						'Blood Cholesterol Testing', 'Oral Care', ],
				datasets : [ {
					label : 'Chart Sales Category',
					data : [ 8, 56, 31, 5, 15 ],
					backgroundColor : [ 'rgba(255, 99, 132, 1)',
							'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)',
							'rgba(153, 102, 255, 1)', 'rgba(255, 159, 64, 1)' ]
				} ]
			},
			options : {
				responsive : true
			}
		});

		new Chart(graph_sales_category,
				{
					type : 'bar',
					data : {
						labels : [ 'Pregnancy Kit', 'Prescription Drugs',
								'Supplement', 'Blood Cholesterol Testing',
								'Oral Care', ],
						datasets : [ {
							label : 'Bar Sales Category',
							data : [ 8, 56, 31, 5, 15 ],
							backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
									'rgba(54, 162, 235, 0.2)',
									'rgba(255, 206, 86, 0.2)',
									'rgba(153, 102, 255, 0.2)',
									'rgba(255, 159, 64, 0.2)' ],
							borderColor : [ 'rgba(255, 99, 132, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(255, 206, 86, 1)',
									'rgba(153, 102, 255, 1)',
									'rgba(255, 159, 64, 1)' ],
							borderWidth : 1
						} ]
					},
					options : {
						responsive : true
					}
				});

		new Chart(graph_profit, {
			type : 'line',
			data : {
				labels : [ 'January', 'February', 'March', 'April', 'May',
						'June', 'July', 'August', 'September', 'October',
						'November', 'October' ],
				datasets : [ {
					label : 'Line Profit',
					data : [ 1200, 789, 673, 1366, 483, 1234, 789, 989, 189,
							1022, 647, 2334 ],
					backgroundColor : [ 'rgba(255, 99, 132, 1)',
							'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)',
							'rgba(153, 102, 255, 1)', 'rgba(255, 159, 64, 1)',
							'rgba(255, 99, 132, 1)', 'rgba(54, 162, 235, 1)',
							'rgba(255, 206, 86, 1)', 'rgba(153, 102, 255, 1)',
							'rgba(255, 159, 64, 1)', 'rgba(255, 99, 132, 1)',
							'rgba(54, 162, 235, 1)', ],
					borderColor : 'rgb(109, 109, 109)',
					borderWidth : 1
				} ]
			},
			options : {
				responsive : true
			}
		});
	</script>

</body>
</html>