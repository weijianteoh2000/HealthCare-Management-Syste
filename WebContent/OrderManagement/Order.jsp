<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare | Order</title>
</head>
<body>
	<%@ include file="../shareFiles/header.html"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
			<h1>My Order</h1>
			<br>
			<div class="bg-white rounded-3 p-3 py-2 mb-3 shadow">
					<table class="table table-striped table-hover">
						<thead>
							<tr class="text-dark">
								<th scope="col">No.</th>
								<th scope="col">Item</th>
								<th scope="col">Quantity</th>
								<th scope="col">Price</th>
								<th scope="col"></th>
							</tr>
						</thead>
						<tbody class="align-middle text-secondary">
							<tr>
								<td>1.</td>
								<td id="order_item">Panodol Actifast 10s Compack</td>
								<td id="order_quantity"><select name="quantity"
									id="quantity" class="dropbtn">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
								</select></td>
								<td>RM 13.50</td>
								<td><button class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark" onClick="dltOrder()">
										<ion-icon name="trash-outline"></ion-icon>
									</button></td>
							</tr>
							</tr>
							<tr>
								<td>2.</td>
								<td id="order_item">NewGene-Saliva/Nasal 2-in-1 Covid-19
									Home Self Antigen Test Kit(RTK)</td>
								<td id="order_quantity"><select name="quantity"
									id="quantity" class="dropbtn">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
								</select></td>
								<td>RM 10.70</td>
								<td><button class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark" onClick="dltOrder()">
										<ion-icon name="trash-outline"></ion-icon>
									</button></td>
							</tr>
							</tr>
							<tr>
								<td>3.</td>
								<td id="order_item">WOODS' Peppermint Cough Syrup for Adult
									100ml</td>
								<td id="order_quantity"><select name="quantity"
									id="quantity" class="dropbtn">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
								</select></td>
								<td>RM 9.50</td>
								<td><button class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark" onClick="dltOrder()">
										<ion-icon name="trash-outline"></ion-icon>
									</button></td>
							</tr>
							</tr>
							<tr>
								<td>4.</td>
								<td id="order_item">Listerine Sakura & Peach Zest 500ml</td>
								<td id="order_quantity"><select name="quantity"
									id="quantity" class="dropbtn">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
								</select></td>
								<td>RM 11.70</td>
								<td><button class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark" onClick="dltOrder()">
										<ion-icon name="trash-outline"></ion-icon>
									</button></td>
							</tr>
						</tbody>
					</table>
			</div>
			<div class="justify-content-center d-flex">
					<a href="confirmOrder.jsp"><button class="btn btn-primary m-3 mb-5 shadow-lg">Place
							Order</button></a>
				</div>
		</div>
	</div>
	<%@ include file="../shareFiles/footer.html"%>

	<script type="module"
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
	<script type="text/javascript">
		function dltOrder() {
			alert("Are you sure to delete your order?")
		}

		let btn = document.getElementById("sidebar-order");
		btn.classList.add("bg-primary");
		btn.classList.add("text-white");
		btn.classList.add("wow");
		btn.classList.add("fadeIn");
	</script>
</body>
</html>