<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HealthCare | Transition</title>
<link rel="stylesheet" type="text/css" href="stock.css">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%@ include file="../shareFiles/header.jsp" %>
<div class="row g-0">
<%@ include file="../shareFiles/sideMenu.jsp" %> 
 <div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
                <h1>Tracked Shipment</h1>
                   <div class="searchContainer">
  </div>
  <div class="transitionContent d-flex justify-content-center">
  <table class="w-50">
   <tr >
   <td>19Sep<br>1120</td>
   <td><i class="fa fa-chevron-circle-up" style="padding: 20px; font-size:20px;"></i></td>
   <td>Stock has departed from sorting facility: MKZ DC</td>
   </tr>
  <tr >
   <td>17Sep<br>1220</td>
   <td><i class="fa fa-chevron-circle-up" style="padding: 20px; font-size:20px;"></i></td>
   <td>Stock has departed from sorting facility: KUL HUB</td>
   </tr>
    <tr >
     <td>15Sep<br>2030</td>
   <td><i id="delivered" class="fa fa-chevron-circle-up" style="padding: 20px; font-size:20px;"></i></td>
   <td>Stock has arrived at the destination port: Subang</td>
   </tr>
  </table>
  </div>   
  <br></br>
  <div class="justify-content-center d-flex"> <button id="btn" class="btn btn-primary m-3 mb-5 shadow-lg" onClick="location.href = 'OrderReceived.jsp';">Order Receive</button>
  
  </div>
  </div>
            </div></div></div></div>
<%@ include file="../shareFiles/footer.jsp" %>
</body>
</head>
<body>
 
</body>
</html>