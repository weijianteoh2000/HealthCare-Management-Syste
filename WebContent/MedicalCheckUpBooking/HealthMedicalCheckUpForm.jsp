<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HealthCare|Health Medical Check Up Form</title>
<link rel="stylesheet" type="text/css" href="MedicalCheckUp.css">
</head>
<body>
<%@ include file="../shareFiles/header.html"%>
	<div class="content">
		<%@ include file="../shareFiles/sideMenu.jsp"%>
		<div class="content-item page">
			<div class="main-content-container">
				<div class="main-content-item main-title">
					<!--Put your Page Title here-->
					<h1>Health Medical Check Up Form</h1>
				</div>

				<div class="main-content-item main-content">
					<!--Put your Page Content here-->
					PATIENT
					<br><br>
					Name : Lisa <br>
					Age: 25 <br>
					Gender: Female<br>
					Phone Number : 010-01234567<br>
					IC Number : 000111-01-0101<br><br>
					
					Sickness Symtpon: <br>
					<form action="" method="">
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
					<Textarea name="patient_sickness" placeholder="please state down the patient sickness at here" rows="4" cols="50" required></Textarea>
					<input type="hidden" name="patientID" value="">
					<input type="submit" name="submit" value="submit">
					</form>

				</div>
			</div>
			<%@ include file="../shareFiles/footer.html"%>


		</div>
	</div>
</body>
</html>