<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body>
<div class="transitionContent">
  <table 	style="width: 50%;
	 display: block;
  margin-left: auto;
  margin-right: auto;">
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
  <div class="container"> <button id="btn" class="button" onClick="location.href = 'TrackedShipment.jsp';">View Tracking</button>
  </div>   
  </div>
</body>
</html>