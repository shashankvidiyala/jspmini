<%@page contentType="text/html"%>
<html>
<head><title>Add News</title></head>
<basefont face="Arial">
<body>
<center>
<h2>Add News</h2> <table border=0 cellspacing=5 cellpadding=5>
<form action="addnews2.jsp" method="POST"> <tr>
<td><b>Email Address</b></td>
<td>
<select name="author">
<!-- generate list of available usernames from database -->
<%@ page language="java" import="java.sql.*" %>
<%@page import="java.util.*"%>
<% // database parameters
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/blog";
	String username = "root";
	String password = "";
//connecting to databse
Connection con = DriverManager.getConnection(url, username, password);
Statement st=con.createStatement();
String x=req.getParameter("ename");
String y=req.getParameter("dept");
String sql="insert into emp values('"+x+"','"+y+"')";
st.executeUpdate(sql);
%>
</body>
</html>
