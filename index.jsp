<html>
    <body>
        <%@page import="java.sql.*;javax.sql.*; java.io.*;javax.servlet.*;javax.servlet.http.*;" %>
        <%
        
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/blog";
            String username = "root";
            String password = "";
            //connecting to databse
            Connection con = DriverManager.getConnection(url, username, password);
            Statement stmt=con.createStatement();
            String query="select * from news";
            ResultSet myResultSet = stmt.executeQuery(query);



            if (myResultSet != null) {
                while (myResultSet.next()) {
                // specify the field name
                String body = myResultSet.getString("body");
                String headline = myResultSet.getString("headline");
                String author = myResultSet.getString("author");
                String date = myResultSet.getString("date");
                    %>
        <table border='1' align="center" class="blog">
            <tr> 
              <td><b><%= headline %></b></td>
            </tr>
          <tr> 
              <td><b><%= date %></b></td>
            </tr>
            <tr> 
              <td><i><%= author %></i></td>
            </tr>
            <tr> 
              <td><%= body %></td>
            </tr>
          </table>
          <br />
          <%
              }
            }   stmt.close();   con.close();
          %>
          <p> </p>
          <p> </p>
          <p>
          
    </body>
</html>