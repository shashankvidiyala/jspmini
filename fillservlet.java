import java.sql.*;
import javax.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
/**
 * Servlet implementation class UserDataServlet
 */
public class fillservlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
try
{
response.setContentType("text/html");
PrintWriter out=response.getWriter();
try
{
//load and register the driver
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/blog";
	String username = "root";
	String password = "sh_123";
//connecting to databse
Connection con = DriverManager.getConnection(url, username, password);
//to send and execute your sql query
Statement st=con.createStatement();
String name = request.getParameter("na");
		String title = request.getParameter("title");
		String post = request.getParameter("post");
String sql="insert into posts(author_name,title,post) values('"+name+"','"+title+"','"+post+"')";
st.executeUpdate(sql);
RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
rd.include(request,response);
}//try
catch(ClassNotFoundException cnfe)
{
 out.println("class not found");
}
}//try
catch(SQLException se)
{
throw new RuntimeException("not connected",se);
}//catch

}
}