<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Online Voting System</title>
</head>

<%@ include file="navbar.jsp" %>
<body>

<div class="form-container">
<form action="voterLogin" method="post">
<h4>Enter Your Voter ID</h4>

<label for="voterID" class="form-elements form-label"><b>Voter ID</b></label>
<br>
<input name="voterID" id="voterID" class="form-elements form-input" type="text"/>
<br>
<button type="Submit" class="form-elements form-button">Login</button>
<br>
<div class="admin">
<a href="adminLogin.jsp" >Admin</a>
</div>
</form>
</div>


</body>

</html>