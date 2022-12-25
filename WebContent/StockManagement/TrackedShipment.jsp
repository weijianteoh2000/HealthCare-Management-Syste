<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../shareFiles/titleName.html" %>
<link rel="stylesheet" type="text/css" href="stock.css">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%@ include file="../shareFiles/header.html" %>
<div class="content">
<%@ include file="../shareFiles/sideMenu.jsp" %> 
 <div class="content-item page">
                <div class="main-content-container">
                    <div class="main-content-item main-title">
                        <!--Put your Page Title here-->
                        <h1>Tracked Shipment</h1>
                    </div>
                    <div class="main-content-item main-content">
                        <!--Put your Page Content here-->
                      <div class="searchContainer">
  </div>
  <div class="transitionContent">
  <table 	style="width: 50%;
	 display: block;
  margin-left: auto;
  margin-right: auto;">
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
  <div class="container"> <button id="btn" class="button" onClick="location.href = 'OrderReceived.jsp';">Order Receive</button>
  
  </div>
  </div>
            </div></div></div></div>
<%@ include file="../shareFiles/footer.html" %>
</body>
</head>
<body>
 
</body>
</html>