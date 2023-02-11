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
            <script> successAdd('${successAdd.toString()}')</script>
        </c:if>

        <script>
            function alertDupErrorMessage(value) {
                console.log(value);
                let position = value.search("ViolationException:");
                let result = value.substring(position);
                alert(result + "!! Please make sure it is unqiue!");
            }
        </script>
        <c:set var="duplicateError" value="${duplicateError}"/>
        <c:out value="${duplcateError}"/>
        <c:if test="${duplicateError != null}" >
            <script> alertDupErrorMessage("${duplicateError.toString()}")</script>
        </c:if>
        <script>
            function alertNegativeErrorMessage(value) {
                console.log(value);
                alert("Please make sure the input quantity is a positive integer !!!");
            }
        </script>
        <c:set var="negativeValue" value="${negativeValue}"/>
        <c:if test="${negativeValue != null}" >
            <script> alertNegativeErrorMessage("${negativeValue.toString()}")</script>
        </c:if>

        <div class="row g-0">
            <%@ include file="../shareFiles/sideMenu.jsp" %>  
            <div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
                 data-wow-delay="0.1s">
                <h1>UPDATE RECOMMEND MEDICINE</h1>
                <div class="inputContainer">
                    <form action="updateRecommend" method="post">
                        <label for="stockname">Patient Name</label>
                        <input type="text" id="pname" name="patientName" value="${sDetails.getPatientName()}" readonly required placeholder="Lim Ah Beng">

                        <label for="stockquantity">Illness</label>
                        <input type="text" id="illness" name="illness" value="${sDetails.getIllness()}" readonly placeholder="Fever / Coughing" required>

                        <label for="origin">Medicine</label>
                        <%--                        <input type="text" id="medicine" name="medicine" value="${sDetails.getMedicine()}" placeholder="Panadol Malaysia" required> --%>
                        <select class="form-control" id="medicine" name="medicine" value="${sDetails.getMedicine()}" required>
                            <c:forEach items="${mList}" var="rm" > 
                                <c:choose>
                                    <c:when test="${rm.getName().equals(sDetails.getMedicine())}">
                                        <option value="${rm.getName()}" selected><c:out value="${rm.getName()}"/></option>
                                    </c:when>
                                    <c:otherwise>
                                        <option value="${rm.getName()}"><c:out value="${rm.getName()}"/></option>
                                    </c:otherwise>
                                </c:choose>

                            </c:forEach>
                        </select>

                        <label for="refNo">Reference No</label>
                        <input type="text" id="refNo" name="referenceNo"  value="${sDetails.getReferenceNo()}" placeholder="M000022" required>

                        <label for="refNo">Quantity</label>
                        <input type="number" id="quantity" name="quantity" value="${sDetails.getQuantity()}" placeholder="10" required>

                        <label for="adate">Date Visited</label>
                        <input type="date" id="adate" name="dateVisited" value="${sDetails.getDateVisited()}" readonly placeholder="2022-03-02"  required>

                        <input type="hidden" name="id" value="${sDetails.getId()}">
                        <input class="inputButton" type="submit"   value="Update">

                    </form>
                </div>
            </div>
        </div></div></div>
        <%@ include file="../shareFiles/footer.jsp" %>
</body>
</html>