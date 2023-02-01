<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	<div class="content-item side-menu">
		<div id="side-menu-item">
			<script>
                let contents =[
                    {name:"Order",image:"img/order.png",link:"OrderManagement/Order.jsp"},
                    {name:"Products",image:"img/product.png",link: "OrderManagement/Product.jsp"},
                    {name:"Stock",image:"img/stock.png",link: "StockManagement/stock.jsp"},
                    {name:"Booking",image:"img/booking-page-icon.png",link: "MedicalCheckUpBooking/MedicalCheckUpApplicationList.jsp"},
                    {name:"Prescription",image:"img/prescription.png",link: "PrescriptionManagement/prescription.jsp"},
                    {name:"Time Table ",image:"img/timetable.png",link: "MedicalCheckUpBooking/timetable.jsp"},
                    {name:"Patient Health Info",image:"img/healthInfo.png",link: "MedicalCheckUpBooking/ReviewPatientHealthInfo.jsp"},
                    {name:"Health Check up",image:"img/checkup.png",link: "MedicalCheckUpBooking/HealthMedicalCheckUpList.jsp"},
                    {name:"Patient",image:"img/patient.png",link: "OrderManagement/Customer.jsp"},
                    {name:"Pending Booking",image:"img/pendingBooking.png",link: "MedicalCheckUpBooking/MedicalCheckUpPendingList.jsp"},
                    {name:"Order Pending",image:"img/orderPending.png",link: "OrderManagement/phar_manageOrder.jsp"},
                    {name:"Check Order",image:"img/checkOrder.png",link:"OrderManagement/cust_manageOrder.jsp"},]
                    var user="<%=user%>";
                    var container = document.getElementById("side-menu-item");
                    for (i=0; i < contents.length; i++){
				if (user == "admin"
							&& (i == 0 || i == 1 || i == 3 || i == 5 || i == 6 || i == 7 || i == 11))
						continue;
					if (user == "pharmacist"
							&& (i == 0 || i == 1 || i == 3  || i == 5 || i==7
									|| i == 6 || i == 8 || i == 9 || i == 11))
						continue;
					if (user == "doctor"
							&& (i == 0 || i == 1 || i == 2 || i == 3
									|| i == 8 || i == 9 || i == 10 || i == 11))
						continue;
					if (user == "customer"
							&& (i == 2 || i == 4 || i == 5 || i == 6
									|| i == 7 || i == 8 || i == 9 || i == 10))
						continue;

					const new_card = '<a href=../'+contents[i].link+'> <div class=\"side-menu-option\"> <img src=\"../' + contents[i].image + '" width=20px height=20px><h4>'
							+ contents[i].name + '</h4></div></a>';
					container.innerHTML += new_card;
				}
			</script>
		</div>
	</div>
</body>
</html>