<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>HealthCare | Supplier</title>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="<c:url value="//resources/css/stock.css"/>">
</head>
<body>

 <script>
	function alertDupErrorMessage(value) {
		console.log(value);
		let position = value.search("ViolationException:");
		let result = value.substring(position);
		alert(result+"!! Please make sure it is unqiue!");
	}
	</script>
<c:set var="duplicateError" value="${duplicateError}"/>
<c:out value="${duplcateError}"/>
<c:if test="${duplicateError != null}" >
	 <script> alertDupErrorMessage("${duplicateError.toString()}") </script>
	</c:if>
  <script>
		function alertNegativeErrorMessage(value) {
			console.log(value);
			alert("Please make sure the input Contact is a positive integer !!!");
		}
	</script>
<c:set var="negativeValue" value="${negativeValue}"/>
<c:if test="${negativeValue != null}" >
	 <script> alertNegativeErrorMessage("${negativeValue.toString()}") </script>
	</c:if>

<%@ include file="../shareFiles/header.jsp" %>
<div class="row g-0">
<%@ include file="../shareFiles/sideMenu.jsp" %>   
 <div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
                        <h1>ADD NEW Supplier</h1>
                      <div class="inputContainer" style="width:75%">
 <form id="supplierForm" action="addSupplier"style="width:100%" >
    <label for="companyName">Name</label>
    <input type="text" id="companyName" name="companyName" value="${(sDetails!=null)?sDetails.getCompanyName():null}" placeholder="Company name.." required>
 <text id="nameError" style="color:red;"></text>

    <label for="contact">Contact</label>
    <input type="text" id="SupplierContact" name="contact" value="${(sDetails!=null)?sDetails.getContact():null}" placeholder="Person Contact" required>

    <label for="email">Email</label>
    <input type="text" id="email" name="email" value="${(sDetails!=null)?sDetails.getEmail():null}" placeholder="medic@gmail.com" required>
   <text id="emailError" style="color:red;"></text><br>
      <label for="address">Address</label>
    <input type="text" id="address" name="address" value="${(sDetails!=null)?sDetails.getAddress():null}" placeholder="Address.." required>
      <label for="website">Website URL (with https://)</label>
 <input type="url" name="website" id="website"
       placeholder="https://example.com" value="${(sDetails!=null)?sDetails.getWebsite():null}"
 size="30"
       required>
        <text id="websiteError" style="color:red;"></text>
        <br>
         <label for="tel">Phone No</label>
    <input type="tel" id="phoneNo" name="phoneNo" value="${(sDetails!=null)?sDetails.getPhoneNo():null}" placeholder="016-21312312" required>
     <text id="phoneNoError" style="color:red;"></text>
    <br>
    <div style="border:1px solid black; padding:5px;">
 <label for="goods"><u>Supplier Goods</u></label>
 <div style="width:100%; height:200px; overflow:auto;">
 <table cellspacing="0" cellpadding="2" border="0" class="w-100">
 
 </table>
  <table id="goodsTable" cellspacing="0" cellpadding="2" border="1" class="w-100">
<tr>
 <td>Name</td>
 <td>Description</td>
 </tr>
  <c:forEach items="${sDetails.getGoods()}" var="currentGoods" varStatus="loop">
	<tr id="${currentGoods.getGoodsID()}">
		<td class="w-30"><input name="goodsName" value="${currentGoods.getName()}"/></td>
		<td class="w-70"><input name="goodsDescription" value="${currentGoods.getDescription()}"/></td>
	</tr>
</c:forEach>  

</table>

</div>
 
<br>
<label for="goodsName">Goods name: </label>
<input type="text" id="goodsName" placeholder="Goods name...">
<label for="goodsDescription" >Goods description: </label>
<input type="text" id="goodsDescription"placeholder="Goods description...">
<button class="btn btn-primary m-3 mb-5 shadow-lg" type="button" onclick="myFunction()">Add New Goods</button>
</div>
    <input class="inputButton btn-primary mb-5" type="submit" value="ADD">
  </form>
 <script>
  function displayDupErrorMessage(value) {
		document.getElementById("nameError").innerHTML = "There is a duplicate company name found ! The company name must be unqiue !!";
		 document.getElementById("companyName").style.border = "1px solid red";
	}
	function displayEmailErrorMessage(value){
		document.getElementById("emailError").innerHTML = value;
		document.getElementById("email").style.border = "1px solid red";
		}
	function displayWebsiteErrorMessage(value){
		document.getElementById("websiteError").innerHTML = value;
		document.getElementById("website").style.border = "1px solid red";
		}
	function displayPhoneNoErrorMessage(value){
		document.getElementById("phoneNoError").innerHTML = value;
		document.getElementById("phoneNo").style.border = "1px solid red";
		}
	</script>
	 <c:set var="duplicateError" value="${duplicateError}"/>
<c:out value="${duplicateError}"/>
<c:if test="${duplicateError != null}" >
	 <script> displayDupErrorMessage("${duplicateError.toString()}") </script>
	</c:if>
<c:set var="emailError" value="${emailError}"/>
<c:if test="${emailError != null}" >
	 <script> displayEmailErrorMessage("${emailError.toString()}") </script>
	</c:if>
<c:set var="websiteError" value="${websiteError}"/>
<c:if test="${websiteError != null}" >
	 <script> displayWebsiteErrorMessage("${websiteError.toString()}") </script>
	</c:if>
	<c:set var="phoneNoError" value="${phoneNoError}"/>
<c:if test="${phoneNoError != null}" >
	 <script> displayPhoneNoErrorMessage("${phoneNoError.toString()}") </script>
	</c:if>
                            <script>
                            function myFunction() {
                            	"use strict";
                            	  var table = document.getElementById("goodsTable");
                            	  var name = document.getElementById("goodsName");
                            	  var description = document.getElementById("goodsDescription");
                            	  
                            	var td1 = document.createElement("td");
                            	var td2 = document.createElement("td");
            					td1.setAttribute("width","30%");
            					td2.setAttribute("width","70%");
                            	var row = document.createElement("tr");
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
                            	row.appendChild(td1);
                            	row.appendChild(td2);
								
                            	table.appendChild(row);
                            	}
                        	</script>

            </div>
            </div>
            </div>
<%@ include file="../shareFiles/footer.jsp" %>
</body>
</html>