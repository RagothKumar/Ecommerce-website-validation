<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index</title>
    <link rel="stylesheet" href="css/homepage.css">
    <link rel="stylesheet" href="../bootstrap/bootstrap5.2.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    
</head>
<body>



  <nav>
    <label class="logo">Sopra Steria</label>
    <ul>
        <li><a href="#">Services</a></li>
        <li><a href="#">Industries</a></li>
        <li><a href="#">Insights</a></li>
        <li><a href="#">Investors</a></li>
        <li><a href="#">About</a></li>
    </ul>
  </nav>  
  
<form method="post">

<div class=table>

<table border=2  style="text-align:center" width=70% style=align-"center">

 <thead>
          <tr>
             <th>USERNAME</th>
             <th>EMAIL</th>
             <th>PASSWORD</th>
             <th>PHONE NUM</th>
             <th>ADDRESS</th>
          </tr>
</thead>

<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Soprasteria?useSSL=false&allowPublicKeyRetrieval=true","root","12345");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from signup");
while(rs.next())
{

%>

<tr>
                <td><%=rs.getString(1) %></td>
                <td><%=rs.getString(2) %></td>
                <td><%=rs.getString(3) %></td>
                <td><%=rs.getString(4) %></td>
                <td><%=rs.getString(5) %></td>
</tr>
<%

}

%>
</table>

<%
 }

catch(Exception e)
{
    e.printStackTrace();
}
%>
</form>
<footer class="footer">
    <div class="container">
      <div class="row">
        <div class="footer-col">
          <h4>Company</h4>
          <ul>
            <li><a href="#">About us</a> </li>
            <li><a href="#">Our Services</a> </li>
            <li><a href="#">Privacy policy</a> </li>
            <li><a href="#">Affiliate program</a> </li>
          </ul>
     </div>
     <div class="footer-col">
      <h4>get help</h4>
      <ul>
        <li><a href="#">FAQ</a></li>
        <li><a href="#">Shipping</a></li>
        <li><a href="#">Returns</a></li>
        <li><a href="#">Order status</a></li>
        <li><a href="#">Payment options</a></li>
      </ul>
 </div>
 
<div class="footer-col">
  <h4>follow us</h4>
  <div class="social">
  <ul>
    <a href="#"><i class="fab fa-facebook-f"></i></a>
    <a href="#"><i class="fab fa-twitter"></i></a>
    <a href="#"><i class="fab fa-instagram"></i></a>
    <a href="#"><i class="fab fa-linkedin-in"></i></a>
     </ul>
     </div>
</div>
      </div>
    </div>
  </footer>
</body>
</html>