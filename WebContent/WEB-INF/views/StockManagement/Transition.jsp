<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>HealthCare | Transition</title>
<link rel="stylesheet" type="text/css" href="<c:url value="//resources/css/stock.css"/>">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%@ include file="../shareFiles/header.jsp" %>
<div class="row g-0">
<%@ include file="../shareFiles/sideMenu.jsp" %>
 <div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
               <h1>STOCK TRANSITION</h1>
    <form class="searchContainer" >
<input type="text" placeholder="Search.." name="search">
  <button type="submit"> <!-- onclick="searchItem()" --><i class="fa fa-search"></i></button>
    </form>
  
  <div id="viewItem">
  <div class="transitionContent">
  <table class="w-50">
   <tr >
   <td><i class="fa fa-check-square-o" style="padding: 36px; font-size:60px;"></i></td>
   <td>Ordered<br>15:30 19 September 2022</td>
   </tr>
  <tr >
   <td><i class="fa fa-check-square-o" style="padding: 36px; font-size:60px;"></i></td>
   <td>Shipped<br>15:45 19 September 2022</td>
   </tr>
    <tr >
   <td><i id="delivered" class="fa fa-check-square-o" style="padding: 36px; font-size:60px;"></i></td>
   <td>Delivered<br>16:45 22 September 2022</td>
   </tr>
  </table>
  <div class="justify-content-center d-flex"> <button id="btn" class="btn btn-primary m-3 mb-5 shadow-lg" onClick="location.href = 'TrackedShipment.jsp';">View Tracking</button>
  </div>   
  </div>
  </div>
 <!--       <script>
			  let searchItem = button => {
			    let element = document.getElementById("viewItem");
			    element.removeAttribute("hidden");}
			</script>    -->
  </div>

            </div></div></div>
         
<%@ include file="../shareFiles/footer.jsp" %>
   
</body>
</head>
<body>
 
</body>
</html>