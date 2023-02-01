<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare | Health Medical Check Up Form</title>
<link rel="stylesheet" type="text/css" href="<c:url value="//resources/css/MedicalCheckUp.css"/>">
<link rel="stylesheet" type="text/css" href="../shareFiles/index.css">
</head>
<body>
<%@ include file="../shareFiles/header.jsp"%>
	<div class="row g-0">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="col-lg px-5 pt-4 bg-light wow fadeIn rounded"
			data-wow-delay="0.1s">
			<h1>CHECK UP FORM</h1>
			<div class="checkUp_form">
					<h1 id="main_header_patient" style="text-align: center; margin-top: 10px;">Patient Information</h1>
					<br><br>
					Name : Lisa <br>
					Age: 25 <br>
					Gender: Female<br>
					Phone Number : 010-01234567<br>
					IC Number : 000111-01-0101<br><br>
					
					Sickness Symtpon: <br>
					<form action="../PrescriptionManagement/updatePrescription.jsp" method="post">
					<input type="Checkbox" name="Allergies" value="yes" Checked required>Allergies<br>
					<input type="Checkbox" name="Colds" value="yes">Colds and Flu<br>
					<input type="Checkbox" name="Conjunctivitis" value="yes">Conjunctivitis("pink eye")<br>
					<input type="Checkbox" name="Diarrhea" value="yes">Diarrhea<br>
					<input type="Checkbox" name="Headaches" value="yes">Headaches<br>
					<input type="Checkbox" name="Mononucleosis" value="yes">Mononucleosis<br>
					<input type="Checkbox" name="StomachAches" value="yes">Stomach Aches<br>
					<input type="Checkbox" name="Other" value="yes" id="otherCheckbox">Other Symtpon<br>
					<textarea id="hiddenTextArea" hidden="hidden" name="other_symtpon" rows="4" cols="50" required>DeleteThisSentenceAndWriteTheSymtpon</Textarea>
					
					<script>
				      let checkbox = document.getElementById("otherCheckbox");
				      checkbox.addEventListener( "change", () => {
				         if ( checkbox.checked ) {
				        	 document.getElementById("hiddenTextArea").removeAttribute("hidden");
				         } else {
				        	 document.getElementById("hiddenTextArea").setAttribute("hidden", "hidden"); 
				         }
				      });
				   </script>
					
					<br>
					Patient Sickness:<br>
					<Textarea id="sickness" name="patient_sickness" placeholder="Please state down the patient sickness at here..." rows="4" cols="50" required></Textarea>
					<input type="hidden" name="patientID" value="">
					
					<div class="justify-content-center d-flex">
						<a href=""><button class="btn btn-primary m-3 mb-5 shadow-lg">Submit</button></a>
					</div></form>
					</div>
				</div>
			</div>
			<%@ include file="../shareFiles/footer.jsp"%>


		</div>
	</div>
</body>
</html>