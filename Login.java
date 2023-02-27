

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("nn1");
		String password=request.getParameter("nn2");
		PrintWriter pw = response.getWriter();
		if(email!=null && password!=null)
		{
			try 
			{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Soprasteria?useSSL=false&allowPublicKeyRetrieval=true","root","12345");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from Login where email='"+email+"' and passwordd = '"+password+"' ");
			if(rs.next())
			{
				
				response.sendRedirect("Index.jsp");
			}
			
			else
			{
				response.sendRedirect("Login.jsp");
				pw.println("<script>alert('Invalid login')</script>");
				
				
			}
			
			}
			catch(Exception ab)
			{
			pw.println(ab);	
			}
		}
	}

}
