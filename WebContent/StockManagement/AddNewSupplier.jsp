<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>HealthCare | Supplier</title>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="stock.css">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css"> 
</head>
<body>
<%@ include file="../shareFiles/header.html" %>
<div class="row g-0">
<%@ include file="../shareFiles/sideMenu.jsp" %>   
 <div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
                        <h1>ADD NEW SUPPLIER</h1>
                    <div class="main-content-item main-content">
                        <!--Put your Page Content here-->
                      <div class="inputContainer">
 <form action="Supplier.jsp">
    <label for="companyName">Company Name</label>
    <input type="text" id="companyName" name="companyName" placeholder="Company name.." required>

    <label for="suppliedGood">Supplied Good</label>
    <input type="text" id="suppliedGood" name="suppliedGood"placeholder="Good name.." required>

    <label for="contact">Contact Person</label>
    <input type="text" id="contact" name="contact" placeholder="Person Name.." required>
  
      <label for="email">Email</label>
    <input type="text" id="email" name="email" placeholder="HoePharma@gmail.com" required>
    
     <label for="phoneNo">Phone Number</label>
    <input type="tel" id="phoneNo" name="phoneNo" placeholder="017-21732632" required>
    
        <label for="address">Address</label>
    <input type="text" id="address" name="address" placeholder="Company address ..." required>

<div class="submit_button_box">
						<input class="inputButton btn-primary"type="submit" onclick="successAdd()" value="Save">
					</div>
  </form>
                          <script>
    function successAdd() {
        alert("New supplier was successfully added !!");
    }
</script>  
            </div>
            </div>
            </div></div></div>
<%@ include file="../shareFiles/footer.html" %>
</body>
</html>