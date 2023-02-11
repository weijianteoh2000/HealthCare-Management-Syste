<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>HealthCare | Supplier</title>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="<c:url value="//resources/css/stock.css"/>">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css"> 
</head>
<body>
<%@ include file="../shareFiles/header.jsp" %>
<div class="row g-0">
<%@ include file="../shareFiles/sideMenu.jsp" %>   
 <div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
                        <h1>UPDATE ${sDetails.getCompanyName()} Supplier</h1>
                      <div class="inputContainer"style="width:75%">
 <form action="updateSupplier" style="width:100%">
 <input type="hidden" name="id" value="${sDetails.getId()}"/>
    <label for="companyName">Name</label>
    <input type="text" id="companyName" name="companyName" value="${sDetails.getCompanyName()}" placeholder="Company name.." required>

    <label for="contact">Contact</label>
    <input type="text" id="SupplierContact" name="contact"placeholder="Person Contact"value="${sDetails.getContact()}" required>

    <label for="email">Email</label>
    <input type="text" id="Email" name="email" placeholder="medic@gmail.com"value="${sDetails.getEmail()}" required>
  
      <label for="address">Address</label>
    <input type="text" id="address" name="address" placeholder="Address.." value="${sDetails.getAddress()}" required>
     <label for="website">Website URL (with https://)</label>
 <input type="url" name="website" id="website"
       placeholder="https://example.com" size="30" value="${sDetails.getWebsite()}"required>
         <label for="tel">Phone No</label>
    <input type="tel" id="phoneNo" name="phoneNo" placeholder="016-21312312"value="${sDetails.getPhoneNo()}" required>
    <br>
     <div style="border:1px solid black; padding:5px;">
 <label for="goods"><u>Supplier Goods</u></label>
 <div style="width:100%; height:200px; overflow:auto;">
  <table id="goodsTable" cellspacing="0" cellpadding="2" border="1" width=100% >
  <tr>
    <th>Name</th>
    <th>Descriptions</th>
    <th>Action</th>
  </tr>
  
 <c:forEach items="${sList}" var="currentGoods" varStatus="loop">
<tr id="${currentGoods.getGoodsID()}">
	<td><input name="goodsName" value="${currentGoods.getName()}"/></td>
	<td><input name="goodsDescription" value="${currentGoods.getDescription()}"/></td>
	<td><button onClick="deleteGoods(${currentGoods.getGoodsID().toString()})" class="btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark"><div class="fas fa-trash-alt"/></button></td>
</tr></c:forEach> 

</table>
</div>
 
<br>
<label for="goodsName">Goods name: </label>
<input type="text" id="goodsName" placeholder="Goods name...">
<label for="goodsDescription" >Goods description: </label>
<input type="text" id="goodsDescription"placeholder="Goods description...">
<button class="btn btn-primary m-3 mb-5 shadow-lg" type="button" onclick="myFunction()">Add New Goods</button>
</div>
    <input class="inputButton btn-primary mb-5" type="submit" value="UPDATE">
  </form>
 
                            <script>
                            function deleteGoods(id){
                            	document.getElementById(id).remove();
                                }
                            
                            function myFunction() {
                            	"use strict";
                            	  var table = document.getElementById("goodsTable");
                            	  var name = document.getElementById("goodsName");
                            	  var description = document.getElementById("goodsDescription");
                            	  
                            	 
                            	  //newDiv.setAttribute("overflow","auto");
                            	  
                            	var td1 = document.createElement("td");
                            	var td2 = document.createElement("td");
                            	var td3 = document.createElement("td");
                           
                            	var row = document.createElement("tr");
                            	row.setAttribute("id",inputName);
                            	var inputName = document.createElement("input");
                            	inputName.setAttribute("value",name.value);
                            	inputName.setAttribute("type","text");
                            	inputName.setAttribute("name","goodsName");
                            	td1.appendChild(inputName);
                            	
                            	var inputDescription = document.createElement("input");
                            	inputDescription.setAttribute("value",description.value);
                            	inputDescription.setAttribute("type","text");
                            	inputDescription.setAttribute("name","goodsDescription");
                            	td2.appendChild(inputDescription);
                            	
                            	var action = document.createElement("button");
                            	action.setAttribute("onClick",`deleteGoods(${inputName.toString()})`);
                            	action.setAttribute("class","btn btn-outline-dark rounded pb-0 p-1 border border-2 border-dark");
								var icon = document.createElement("div");
								icon.setAttribute("class","fas fa-trash-alt");
								action.appendChild(icon);
                            	td3.appendChild(action);
                            	
                            	row.appendChild(td1);
                            	row.appendChild(td2);
                            	row.appendChild(td3);
								
                            	table.appendChild(row);
                            	}
                        	</script>

            </div>
            </div>
            </div></div></div>
<%@ include file="../shareFiles/footer.jsp" %>
</body>
</html>