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
String user= (String)session.getAttribute("userType");
if(user == null){
	throw new Exception();
}
%>
<body>
<div class="col-lg-2 bg-white wow fadeIn" data-wow-delay="0.1s">
	<div class="mb-5">
		<div id="side-menu-item" class="d-flex flex-column justify-content-start mt-2 wow fadeIn" data-wow-delay="0.1s">
			<script>
                let contents =[
                    {id:"sidebar-order", name:"Order",image:"//resources/img/booking-page-icon.png",link:"order/getByCustID"},
                    {id:"sidebar-products", name:"Products",image:"//resources/img/application-list-icon.png",link: "product/getAll"},
                    {id:"sidebar-stock",name:"Stock",image:"//resources/img/approval-list-icon.png",link: "pages/stock"},
                    {id:"sidebar-booking",name:"Booking",image:"//resources/img/report-page-icon.png",link: "pages/medicalCheckUpApplicationList"},
                    {id:"sidebar-prescription",name:"Prescription",image:"//resources/img/report-page-icon.png",link: "pages/prescription"},
                   {id:"sidebar-timetable",name:"Time Table",image:"//resources/img/adduser-page-icon.png",link: "pages/timetable"},
                   {id:"sidebar-healthInfo",name:"Patient Health Info",image:"//resources/img/removeuser-page-icon.png",link: "pages/reviewPatientHealthInfo"},
                   {id:"sidebar-checkUp",name:"Health Check up",image:"//resources/img/edituser-page-icon.png",link: "pages/healthMedicalCheckUpList"},
                   {id:"sidebar-patient",name:"Patient",image:"//resources/img/edituser-page-icon.png",link: "profile/getByUTC"},
                   {id:"sidebar-pendingBooking",name:"Pending Booking",image:"//resources/img/edituser-page-icon.png",link: "pages/medicalCheckUpPendingList"},
                    {id:"sidebar-orderPending",name:"Order Pending",image:"//resources/img/edituser-page-icon.png",link: "order/pharManageOrderPage"},
                    {id:"sidebar-CheckOrder",name:"Check Order",image:"//resources/img/booking-page-icon.png",link:"order/custCheckOrder"},
                    {id:"sidebar-report",name:"Report",image:"//resources/img/report-page-icon.png",link:"pages/reportingDashboard"},
                   {id:"sidebar-staffRegister",name:"Staff Register",image:"//resources/img/adduser-page-icon.png",link:"pages/addStuff"},
                {id:"sidebar-OrderHistory",name:"Order History",image:"//resources/img/report-page-icon.png",link:"order/custViewOrderHistory"},
                {id:"sidebar-OrderDone",name:"Order Done",image:"//resources/img/report-page-icon.png",link:"order/pharViewOrderHistory"},]
   

                
                    var user="<%=user%>";
                    var container = document.getElementById("side-menu-item");
                    for (i=0; i < contents.length; i++){
				if (user == "admin"
							&& (i == 0 || i == 1 || i == 3 || i == 5 || i == 6 || i == 7 || i == 11 || i == 14 || i == 15))
						continue;
					if (user == "pharmacist"
							&& (i == 0 || i == 1 || i == 3  || i == 5 || i==7
									|| i == 6 || i == 8 || i == 9 || i == 11 || i == 12 || i == 13 || i==14))
						continue;
					if (user == "doctor"
							&& (i == 0 || i == 1 || i == 2 || i == 3
									|| i == 8 || i == 9 || i == 10 || i == 11 || i == 12 || i == 13 ||i==14||i==15))
						continue;
					if (user == "customer"
							&& (i == 2 || i == 4 || i == 5 || i == 6
									|| i == 7 || i == 8 || i == 9 || i == 10 || i == 12 || i == 13||i==15))
						continue;
					const new_card = '<a id="' + contents[i].id + '"href="<c:url value="/'+contents[i].link+'"/>" class="h5 px-4 py-2"> <div> <img class="me-3" src=\"<c:url value="../' + contents[i].image + '"/>" width=20px height=20px>'
							+ contents[i].name + '</div></a>';
					container.innerHTML += new_card;
				}
			</script>
		</div>
	</div>
	</div>
</body>
</html>