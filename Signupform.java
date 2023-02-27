

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDateTime;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Signupform
 */
@WebServlet("/Signupform")
public class Signupform extends HttpServlet {
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter pw = response.getWriter();
		
		
		String username=request.getParameter("n1");
		String email=request.getParameter("n2");
		String password=request.getParameter("n3");
		String phonno=request.getParameter("n4");
		String address=request.getParameter("n5");
		
		if(username!=null && email!=null && password!=null &&phonno!=null &&address!=null )
		{
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Soprasteria?useSSL=false&allowPublicKeyRetrieval=true","root","12345");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from Signup where email=('"+email+"')");
			
			if(rs.next())
			{
				pw.println("<script>aleart('Already this email is created');</script>");
			}
			else
			{
				st.executeUpdate("insert into Signup (username,email,passwordd,phonno,address) values ('"+username+"','"+email+"','"+password+"','"+phonno+"','"+address+"')");
				response.sendRedirect("Login.jsp");
			}
		}
		
		catch(Exception e)
		{
			pw.println(e);
		}
		
	}

		
	}

}
