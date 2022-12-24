<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="stock.css">
<link rel="stylesheet" type="text/css" href="../index.css">
</head>
<body>
<%@ include file="header.html" %>
<div class="content">
<%-- <%@ include file="sideMenu.jsp" %>  --%>
 <div class="content-item page">
                <div class="main-content-container">
                    <div class="main-content-item main-title">
                        <!--Put your Page Title here-->
                        <h1>STOCK DETAILS</h1>
                    </div>
                    <div class="main-content-item main-content">
                        <!--Put your Page Content here-->
                   <div class="content-table">
                            <div id="myTable">
                               <script src="Details.js"></script>
                            </div>
                            <button class="button">Add new</button>
                        </div>
                    
                    </div>
                </div>
            </div>
            </div>
<%@ include file="footer.html" %>
</body>
</html>