<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="<c:url value="//resources/css/prescription.css"/>">
<title>Health Care Management | Manage Pending Order</title>
<style>
.order_info_table {
	width: 1000px;
	padding-left: 100px;
	margin-bottom:20px;
}

#order_info_table table, th, td {
	padding: 8px;
	border-style: none;
}

#order_info_table_header,
	#order_info_table_data {
	width:150px;
	text-align: left;
}

#order_info_table_data_column2 {
text-align: left;
width: 400px;
}

.edit_order_pending_table {
	position: relative;
	background-color: white;
	padding: 10px 15px 17px;
	margin: 0px 0px 20px 40px;
	border-radius: 10px;
	box-shadow: 0 7px 25px rgba(0, 0, 0, 0.2);
}

#edit_order_pending_table tr {
	text-align: center;
	padding: 8px;
	border-bottom: 1px solid #C0C2C8;
}

#edit_order_pending_table #row1 {
	border-bottom: 2px solid black;
	border-collapse: collapse;
	padding: 0px 0px 10px;
}

#edit_order_pending_table #row1 #edit_order_pending_table_rejectBtn {
	border-top: 1px solid black;
	border-collapse: collapse;
}

.edit_order_pending_table_editBtn, .edit_order_pending_table_rejectBtn {
	border: none;
	background-color: inherit;
	cursor: pointer;
	font-size: 18px;
}
</style>
</head>
<body>
	<%@ include file="../shareFiles/header.jsp"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
                 <c:set var="medicineList" value="${medicineList}"/>
               <c:if test="${medicineList == null}" >
                <div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
			<h1>GENERATE MEDICINE LIST</h1>
                          <div class="inputContainer">
                    <form action="generateMedicineList" method="post">
                        <label for="stockname">Patient Name</label>
<!--                        <input type="text" id="pname" name="patientName" required placeholder="Lim Ah Beng">-->
                        <select class="form-control" id="pname" name="patientName" required>
                            <c:forEach items="${sList}" var="rm" varStatus="loop"> 
                                <option value="${rm}"><c:out value="${rm}"/></option>
                            </c:forEach>
                        </select>
                        <input class="inputButton mb-5" type="submit"  value="Generate">
                    </form>
                </div>
                        
                </div>
               </c:if>
                
                <c:set var="medicineList" value="${medicineList}"/>
               <c:if test="${medicineList != null}" >
	       
		<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
			<h1>MEDICINE LIST</h1>
                        
						<table class="table table-borderless w-75 ms-5">
<!--								<tr>
									<th class="text-dark">ID</th>
									<th class="text-dark">:</th>
									<td id="order_info_table_data_column2">M00001</td>
									<th class="text-dark">Patient ID</th>
									<th class="text-dark">:</th>
									<td id="order_info_table_data">PA0001</td>
								</tr>-->
                                                                <tr>
<!--									<th class="text-dark">Doctor</th>
									<th class="text-dark">:</th>
									<td id="order_info_table_data_column2">Dr Lim</td>-->
									<th class="text-dark">Customer Name</th>
									<th class="text-dark">:</th>
									<td id="order_info_table_data"><c:out value="${pname}"/></td>
								</tr>
								<tr>
									<th class="text-dark">Date / Time</th>
									<th class="text-dark">:</th>
									<td id="order_info_table_data_column2"><c:out value="${date}"/></td>
<!--									<th class="text-dark">Contact No</th>
									<th class="text-dark">:</th>
									<td id="order_info_table_data">012-3452366</td>-->
								</tr>
								<tr>
							</table>
						<div class="edit_order_pending_table mb-5">
							<table class="mx-auto w-100 border-bottom-0" id="edit_order_pending_table">
								<tr class="text-dark" id="row1">
									<th>No.</th>
									<th>Item</th>
									<th>Quantity</th>
<!--									<th>Price</th>-->
 								</tr>
 								<tbody>
                                                                     <c:forEach items="${medicineList}" var="rm" varStatus="loop"> 
								<tr>
									<td><c:out value="${loop.index +1}"/>.</td>
									<td class="text-start"><c:out value="${rm.getMedicine()}"/></td>
									<td><c:out value="${rm.getQuantity()}"/></td>
								
									 
								</tr>
                                                                     </c:forEach>
								<!-- <tr>
									<td>2.</td>
									<td class="text-start">NewGene - Saliva/nasal 2-in-1 Covid-19 Home Self Antigen Test Kit (RTK)</td>
									<td>2</td>
									<td>   RM 12.00</td>
									 
								</tr>
								<tr>
									<td>3.</td>
									<td class="text-start">WOODS'Peppermint Cough Syrup for Adult 100 ML</td>
									<td>1</td>
									<td>   RM  9.50</td>
									 
								</tr>
								<tr>
									<td>4.</td>
									<td class="text-start">Listerine Sakura & Peach Zest 500 ML</td>
									<td>1</td>
									<td>   RM 11.70</td>
								 </tr>
								 <tr class="border-bottom-0" id="row1">
									<th> </th>
									<th> </th>
									<th class="text-dark">Total : </th>
									<th class="text-dark">   RM 999.00</th>
 								</tr> -->
 								</tbody>
							</table>
						</div>
					</div>
 					 </c:if>
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
		function rejectOrder() {
			alert("Are you sure to reject this order?")
		}
		function completeOrder() {
			alert("Are you sure to complete this order?")
		}
	</script>
</body>
</html>