<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>HealthCare | Details</title>
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
                        <h1>ADD NEW STOCK</h1>
                      <div class="inputContainer">
 <form action="addStock">
 <img style="text-align: center;" id="bannerImg" width="50%" height="50%"/>
  <label for="image">Choose a product image: </label>
 <input type='file' name="image" id="uploadBannerImage" onchange="readURL(this);" />
 
    <label for="stockname">Name</label>
    <input type="text" id="stockname" name="name" value="${(sDetails!=null)?sDetails.getName():null}" placeholder="Stock name.." required>
    <text id="nameError" style="color:red;"></text>
    
   <label for="stockDescription">Description</label><br>
    <textarea id="stockDescription" name="description" placeholder="Stock description..">
    ${(sDetails!=null)?sDetails.getDescription():null}
    </textarea>
    <br>
    <label for="stockquantity">Quantity</label>
    <input type="number" id="quantity" name="quantity" value="${(sDetails!=null)?sDetails.getQuantity():null}" placeholder="10" required>
	<text id="quantityError" style="color:red;"></text>
	<br>
    <label for="origin">Origin</label>
    <input type="text" id="origin" name="origin" value="${(sDetails!=null)?sDetails.getOrigin():null}" placeholder="Origin Address.." required>
   
      <label for="price">Price (MYR)</label>
    <input type="number" step="any" id="price" value="${(sDetails!=null)?sDetails.getUnitPrice()*sDetails.getQuantity():null}" name="price" placeholder="120.00" required>
    <text id="priceError" style="color:red;"></text>
    <br>
      <label for="refNo">Reference No</label>
    <input type="text" id="refNo" name="refNo" value="${(sDetails!=null)?sDetails.getRefNo():null}" placeholder="reference No.." required>
    <text id="refNoError" style="color:red;"></text>
    
        <label for="adate">Arrival Date</label>
    <input type="date" id="adate" name="arrDate" value="${(sDetails!=null)?sDetails.getArrDate():null}" required>
        <label for="edate">Expiry Date</label>
    <input type="date" id="edate" value="${(sDetails!=null)?sDetails.getExpDate():null}" name="expDate" required>
    
    <input class="inputButton btn-primary mb-5" type="submit" value="Save">
  </form>

  <script>
  function displayDupErrorMessage(value) {
		console.log(value);
		let name="key 'name'";
		let refNo="key 'refNo'";
		if(value.includes(name)){
		document.getElementById("nameError").innerHTML = "There is a duplicate name found ! The name must be unqiue !!";
		 document.getElementById("stockname").style.border = "1px solid red";}
		if(value.includes(refNo)){
		document.getElementById("refNoError").innerHTML = "There is a duplicate ref no found ! The ref no must be unqiue !!";
		document.getElementById("refNo").style.border = "1px solid red";
		}
	}
	function displayNegativeErrorMessage(value) {
		if(value == "negative quantity"||value=="negative values"){
			document.getElementById("quantityError").innerHTML = "Please enter a positive integer at quantity !";
		document.getElementById("quantity").style.border = "1px solid red";
		}
		else if(value == "negative price"||value=="negative values"){
			document.getElementById("priceError").innerHTML = "Please enter a positive number at price !";
		document.getElementById("price").style.border = "1px solid red";
		}
	}
	</script>
	 <c:set var="duplicateError" value="${duplicateError}"/>
<c:out value="${duplcateError}"/>
<c:if test="${duplicateError != null}" >
	 <script> displayDupErrorMessage("${duplicateError.toString()}") </script>
	</c:if>
<c:set var="negativeValue" value="${negativeValue}"/>
<c:if test="${negativeValue != null}" >
	 <script> displayNegativeErrorMessage("${negativeValue.toString()}") </script>
	</c:if>
<script>

function readURL(input) 
{
    document.getElementById("bannerImg").style.display = "block";

    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            document.getElementById('bannerImg').src =  e.target.result;
        }

        reader.readAsDataURL(input.files[0]);
    }
}
</script>
            </div>
            </div>
            </div>
<%@ include file="../shareFiles/footer.jsp" %>
</body>
</html>