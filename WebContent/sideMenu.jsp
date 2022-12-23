<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%
String userName = (String)session.getAttribute("username");
String pw = (String)session.getAttribute("password");
String user="";
if(userName.equals("admin")&&pw.equals("a1234")){
	 user = "admin";
}else if(userName.equals("doctor")&&pw.equals("d1234")){
	user = "doctor";
}else if(userName.equals("pharma")&&pw.equals("p1234")){
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
                    {name:"Order",image:"img/booking-page-icon.png",link: "Login_Booking/Booking.html"},
                    {name:"Products",image:"img/application-list-icon.png",link: "Application/NewApplication.html"},
                    {name:"Stock",image:"img/approval-list-icon.png",link: "Application/ApprovalApplication.html"},
                    {name:"Booking",image:"img/report-page-icon.png",link: "Report/LectLabs.html"},
                    {name:"Prescription",image:"img/report-page-icon.png",link: "Report/AllLabs.html"},
                    {name:"Report",image:"img/profile-page-icon.png",link: "Profile/myprofile.html"},
                   {name:"Time Table ",image:"img/adduser-page-icon.png",link: "Profile/add_user.html"},
                    {name:"Patient Health Info",image:"img/removeuser-page-icon.png",link: "Profile/remove_user.html"},
                    {name:"Health Check up",image:"img/edituser-page-icon.png",link: "Profile/search_user.html"},
                    {name:"Patient",image:"img/edituser-page-icon.png",link: "Profile/search_user.html"},
                    {name:"Pending Booking",image:"img/edituser-page-icon.png",link: "Profile/search_user.html"},
                    {name:"Order Pending",image:"img/edituser-page-icon.png",link: "Profile/search_user.html"},
                ]
                var user="<%=user%>";
                var container = document.getElementById("side-menu-item");
                for (i=0; i < contents.length; i++){
                	 if(user=="admin"&&(i==0||i==1||i==3||i==6||i==7||i==8))continue;
             	    if(user=="pharmacist"&&(i==0||i==1||i==3||i==5||i==6||i==7||i==9||i==10))continue;
             	    if(user=="doctor"&&(i==0||i==1||i==2||i==3||i==5||i==9||i==10||i==11))continue; 
             	    if(user=="customer"&&(i==2||i==4||i==5||i==6||i==7||i==8||i==9||i==10||i==11))continue;  
                    
                    const new_card = '<a href=\"../'+contents[i].link+'"> <div class=\"side-menu-option\"> <img src=\"' + contents[i].image + '" width=20px height=20px><h4>' + contents[i].name + '</h4></div></a>';
                    container.innerHTML += new_card;
                }
                </script>
                </div>
            </div>
</body>
</html>