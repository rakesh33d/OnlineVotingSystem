<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome User !</title>
<link rel="stylesheet" type="text/css" href="style.css"> 
</head>
<%@ include file="navbar.jsp"%> 
<body>
<div class="form-container">
<form action="Vote" method="post" >

<label for="voterNumber" class="form-elements"><b>Enter your voter card number</b></label>
<br>
<input id="voterNumber" name="voterNumber" class="form-elements form-input" type="text"/>
<br>

<label for="party" class="form-elements"><b>Choose your party</b></label>
<br>
<input type="radio" id="aap" name="party" value="Aam Aadmi Party">
<label for="aap"><img class="party_img" alt="aap" src="images/aap.jpeg">Aam Aadmi Party</label><br>
<input type="radio" id="bjp" name="party" value="BJP">
<label for="bjp"><img class="party_img" alt="bjp" src="images/bjp.jpeg">BJP</label><br>
<input type="radio" id="bsp" name="party" value="BSP">
<label for="bsp"><img class="party_img" alt="bsp" src="images/bsp.png">BSP</label><br>
<input type="radio" id="congress" name="party" value="Congress">
<label for="congress"><img class="party_img" alt="congress" src="images/congress.png">Congress</label><br>
<input type="radio" id="nota" name="party" value="NOTA">
<label for="nota"><img class="party_img" alt="NOTA" src="images/nota.png">NOTA</label><br>
<br>

<button type="Submit" class="form-elements form-button">Submit</button>

</form>
</div>


</body>
</html>