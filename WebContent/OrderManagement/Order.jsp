<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css">
<link rel="stylesheet" type="text/css" href="order.css">
<title>Health Care Management | Order</title>
</head>
<body>
	<%@ include file="../shareFiles/header.html"%>
	<div class="content">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="content-item page">
			<div class="main-content-container">
				<div class="main-content-item main-title">
					<!--Put your Page Title here-->
					<h1> -- Make Your Order Here! -- </h1>
				</div>
				<div class="main-content-item main-content">
					<!--Put your Page Content here-->
					<h1 id="main_header">My Order</h1>
					<br>
					<div class="order_table_box">
						<div class="order_table">
							<table id="order_table">
								<tr>
									<th>No.</th>
									<th>Item</th>
									<th>Quantity</th>
									<th>Price</th>
									<th></th>
								</tr>
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
									<td><button class="order_trash_button" onClick="dltOrder()">
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
									<td><button class="order_trash_button" onClick="dltOrder()">
											<ion-icon name="trash-outline"></ion-icon>
										</button></td>
								</tr>
								</tr>
								<tr>
									<td>3.</td>
									<td id="order_item">WOODS' Peppermint Cough Syrup for
										Adult 100ml</td>
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
									<td><button class="order_trash_button" onClick="dltOrder()">
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
									<td><button class="order_trash_button" onClick="dltOrder()">
											<ion-icon name="trash-outline"></ion-icon>
										</button></td>
								</tr>
							</table>
						</div>
						<div class="submit_button_box">
							<a href="confirmOrder.jsp"><button class="order_submit_button">Place Order</button></a>
						</div>
					</div>
				</div>
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
	</script>
</body>
</html>