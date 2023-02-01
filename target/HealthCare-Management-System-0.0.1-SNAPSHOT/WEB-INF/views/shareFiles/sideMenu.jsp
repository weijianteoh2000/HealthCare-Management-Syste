<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<%
String userName = (String)session.getAttribute("username");
String pw = (String)session.getAttribute("password");
String user="";
if(userName.equals("admin")&&pw.equals("a1234")){
	 user = "admin";
}else if(userName.equals("doctor")&&pw.equals("d1234")){
	user = "doctor";
}else if(userName.equals("pharmacist")&&pw.equals("p1234")){
	user = "pharmacist";
}else if(userName.equals("customer")&&pw.equals("c1234")){
	user =  "customer";
}else{
	throw new Exception();
} %>
<body>
<div class="col-lg-2 bg-white wow fadeIn" data-wow-delay="0.1s">
	<div class="mb-5">
		<div id="side-menu-item" class="d-flex flex-column justify-content-start mt-2 wow fadeIn" data-wow-delay="0.1s">
			<script>
                let contents =[
                    {id:"sidebar-order", name:"Order",image:"//resources/img/booking-page-icon.png",link:"OrderManagement/Order.jsp"},
                    {id:"sidebar-products", name:"Products",image:"//resources/img/application-list-icon.png",link: "OrderManagement/Product.jsp"},
                    {id:"sidebar-stock",name:"Stock",image:"//resources/img/approval-list-icon.png",link: "StockManagement/stock.jsp"},
                    {id:"sidebar-booking",name:"Booking",image:"//resources/img/report-page-icon.png",link: "MedicalCheckUpBooking/MedicalCheckUpApplicationList.jsp"},
                    {id:"sidebar-prescription",name:"Prescription",image:"//resources/img/report-page-icon.png",link: "PrescriptionManagement/prescription.jsp"},
                   {id:"sidebar-timetable",name:"Time Table",image:"//resources/img/adduser-page-icon.png",link: "MedicalCheckUpBooking/timetable.jsp"},
                   {id:"sidebar-healthInfo",name:"Patient Health Info",image:"//resources/img/removeuser-page-icon.png",link: "MedicalCheckUpBooking/ReviewPatientHealthInfo.jsp"},
                   {id:"sidebar-checkUp",name:"Health Check up",image:"//resources/img/edituser-page-icon.png",link: "MedicalCheckUpBooking/HealthMedicalCheckUpList.jsp"},
                   {id:"sidebar-patient",name:"Patient",image:"//resources/img/edituser-page-icon.png",link: "OrderManagement/Customer.jsp"},
                   {id:"sidebar-pendingBooking",name:"Pending Booking",image:"//resources/img/edituser-page-icon.png",link: "MedicalCheckUpBooking/MedicalCheckUpPendingList.jsp"},
                    {id:"sidebar-orderPending",name:"Order Pending",image:"//resources/img/edituser-page-icon.png",link: "OrderManagement/phar_manageOrder.jsp"},
                    {id:"sidebar-CheckOrder",name:"Check Order",image:"//resources/img/booking-page-icon.png",link:"OrderManagement/cust_manageOrder.jsp"},
                    {id:"sidebar-report",name:"Report",image:"//resources/img/report-page-icon.png",link:"shareFiles/ReportingDashboard.jsp"},]
                    var user="<%=user%>";
                    var container = document.getElementById("side-menu-item");
                    for (i=0; i < contents.length; i++){
				if (user == "admin"
							&& (i == 0 || i == 1 || i == 3 || i == 5 || i == 6 || i == 7 || i == 11))
						continue;
					if (user == "pharmacist"
							&& (i == 0 || i == 1 || i == 3  || i == 5 || i==7
									|| i == 6 || i == 8 || i == 9 || i == 11 || i == 12))
						continue;
					if (user == "doctor"
							&& (i == 0 || i == 1 || i == 2 || i == 3
									|| i == 8 || i == 9 || i == 10 || i == 11 || i == 12))
						continue;
					if (user == "customer"
							&& (i == 2 || i == 4 || i == 5 || i == 6
									|| i == 7 || i == 8 || i == 9 || i == 10 || i == 12))
						continue;
					const new_card = '<a id="' + contents[i].id + '"href="<c:url value="../'+contents[i].link+'"/>" class="h5 px-4 py-2"> <div> <img class="me-3" src=\"<c:url value="../' + contents[i].image + '"/>" width=20px height=20px>'
							+ contents[i].name + '</div></a>';
					container.innerHTML += new_card;
				}
			</script>
		</div>
	</div>
	</div>
</body>
</html>