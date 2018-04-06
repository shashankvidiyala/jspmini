<html>
    <body>
        <%@ page import="java.sql.*" %>
        <%@ page import="java.io.*" %>
        <%@ page import="javax.servlet.*" %>
        <%@ page import="javax.servlet.http.*" %>
        
        <%
        
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/blog";
            String username = "root";
            String password = "";
            //connecting to databse
            Connection con = DriverManager.getConnection(url, username, password);
            Statement stmt=con.createStatement();
            String name = request.getParameter("na");
		    String title = request.getParameter("title");
		    String post = request.getParameter("post");
            String sql="insert into news(author,headline,body) values('"+name+"','"+title+"','"+post+"');";
            stmt.executeUpdate(sql);



    %>   
    <%="Success"%>
    </body>
</html>