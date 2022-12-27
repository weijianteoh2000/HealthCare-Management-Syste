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
<%@ include file="../shareFiles/header.html" %>
<div class="content">
<%@ include file="../shareFiles/sideMenu.jsp" %>
 <div class="content-item page">
                <div class="main-content-container">
                    <div class="main-content-item main-title">
                        <!--Put your Page Title here-->
                        <h1>STOCK TRANSITION</h1>
                    </div>
                    <div class="main-content-item main-content">
                        <!--Put your Page Content here-->
                        
    <form class="searchContainer" >
<input type="text" placeholder="Search.." name="search">
  <button type="submit" onclick="searchItem()"><i class="fa fa-search"></i></button>
    </form>
  
  <div id="viewItem" hidden>
  <%@ include file="transitionContent.jsp" %> 
  </div>
   
  </div>
    <script>
			  let searchItem = button => {
			    let element = document.getElementById("viewItem");
			    element.removeAttribute("hidden");}
			</script>   
            </div></div></div>
         
<%@ include file="../shareFiles/footer.html" %>
   
</body>
</head>
<body>
 
</body>
</html>