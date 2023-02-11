<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>HealthCare | Details</title>
        <meta charset="ISO-8859-1">
        <link rel="stylesheet" type="text/css" href="<c:url value="//resources/css/prescription.css"/>">
    </head>
    <body>
        <%@ include file="../shareFiles/header.jsp" %>
        <script>
    function successAdd(value) {
        alert(value);
    }
</script>  
<c:if test="${successAdd != null}" >
	 <script> successAdd('${successAdd.toString()}') </script>
	</c:if>
	
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
			alert("Please make sure the input quantity is a positive integer !!!");
		}
	</script>
<c:set var="negativeValue" value="${negativeValue}"/>
<c:if test="${negativeValue != null}" >
	 <script> alertNegativeErrorMessage("${negativeValue.toString()}") </script>
	</c:if>
        
        <div class="row g-0">
            <%@ include file="../shareFiles/sideMenu.jsp" %>  
            <div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
                 data-wow-delay="0.1s">
                <h1>RECOMMEND MEDICINE</h1>
                <div class="inputContainer">
                    <form action="recommend" method="post">
                        <label for="stockname">Patient Name</label>
                        <input type="text" id="pname" name="patientName" required placeholder="Lim Ah Beng">

                        <label for="stockquantity">Illness</label>
                        <input type="text" id="illness" name="illness"  placeholder="Fever / Coughing" required>

                        <label for="origin">Medicine</label>
<!--                        <input type="text" id="medicine" name="medicine" placeholder="Panadol Malaysia" required>-->
                        <select class="form-control" id="medicine" name="medicine" required>
                            <c:forEach items="${mList}" var="rm" varStatus="loop"> 
                                <option value="${rm.getName()}"><c:out value="${rm.getName()}"/></option>
                            </c:forEach>
                        </select>
                        

                        <label for="refNo">Reference No</label>
                        <input type="text" id="refNo" name="referenceNo" placeholder="M000022" required>

                        <label for="refNo">Quantity</label>
                        <input type="number" id="quantity" name="quantity" placeholder="10" required>

                        <label for="adate">Date Visited</label>
                        <input type="date" id="adate" name="dateVisited" placeholder="2022-03-02"  required>


                        <input class="inputButton" type="submit"   value="Save">
                        <input class="inputButton mb-5" type="reset"  value="Reset">
<!--                        <input class="inputButton mb-5" type="submit"  value="Generate">-->
                    </form>
                </div>
            </div>
        </div></div></div>
        <%@ include file="../shareFiles/footer.jsp" %>
</body>
</html>