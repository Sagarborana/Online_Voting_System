<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Admin!</title>
<link rel="stylesheet" type="text/css" href="style.css">
<%
String a[] = new String[100];
Class.forName("com.mysql.cj.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/votingDB","root","KGF:Chapter2");

PreparedStatement ps = con.prepareStatement("select candidate,count(candidate) as c from vote group by candidate");
ResultSet rs = ps.executeQuery("select candidate,count(candidate) as c from vote group by candidate");

int i=0;
while(rs.next()){
	a[i] = Integer.toString(Integer.parseInt(rs.getString("c"))-1);
	i++;
}

%>

</head>
<%@ include file="adminNav.jsp" %>
<body>
<table class="result">
<tr>
<th>Candidates</th>
<th>Names</th>
<th>Votes</th>
</tr>
<tr>
<td><img src="images/Aap.jpg" alt="AAP"></td>
<td>Aam Aadmi Party</td>
<td><%=a[0]%></td>
</tr>
<tr>
<td><img src="images/bjp.jpg" alt="BJP"></td>
<td>Bhartiya Janta Party</td>
<td><%=a[1]%></td>
</tr>
<tr>
<td><img src="images/bsp.jpg" alt="BSP"></td>
<td>BSP</td>
<td><%=a[2]%></td>
</tr>
<tr>
<td><img src="images/congress.png" alt="Congress"></td>
<td>Congress</td>
<td><%=a[3]%></td>
</tr>
<tr>
<td><img src="images/CPI-banner.jpeg" alt="CPI"></td>
<td>CPI</td>
<td><%=a[4]%></td>
</tr>
</table>
</body>
</html>