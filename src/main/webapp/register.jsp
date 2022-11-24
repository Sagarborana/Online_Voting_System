<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<%@ include file="navbar.jsp" %>
<body>

<div class="form-container" id="register-form">
<form action="registerUser" method="post">
<h4>Enter Your Voter ID</h4>

<label for="name" class="form-elements form-label"><b>Name :</b></label>
<br>
<input name="name" id="name" class="form-elements form-input" type="text"/>
<br>
<label for="number" class="form-elements form-label"><b>Phone Number :</b></label>
<br>
<input name="number" id="email" class="form-elements form-input" type="number"/>
<br>
<label for="email" class="form-elements form-label"><b>Email :</b></label>
<br>
<input name="email"id="voterID" class="form-elements form-input" type="email"/>
<br>
<label for="voterID" class="form-elements form-label"><b>Voter ID :</b></label>
<br>
<input name="voterID" id="name" class="form-elements form-input" type="text"/>
<br>
<label for="address" class="form-elements form-label"><b>Address :</b></label>
<br>
<input name="address" id="address" class="form-elements form-input" type="text"/>
<br>
<label for="dob" class="form-elements form-label"><b>Date of Birth :</b></label>
<br>
<input name="dob" id="date" class="form-elements form-input" type="date"/>
<br>
<button type="Submit" class="form-elements form-button">Register</button>
<br>
</form>
</div>
</body>
</html>