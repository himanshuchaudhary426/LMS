<%@ page import="java.sql.*"%>

<%
	String email=(String)session.getAttribute("confirm");
	String pass=request.getParameter("npassword");
	Connection con=login.DBConnection.getConnection();
	String query1="update signup set password=? where email='"+email+"'";
	String query2="update login set password=? where username='"+email+"'";
	
	PreparedStatement ps1=con.prepareStatement(query1);
	ps1.setString(1,pass);
	int rs1=ps1.executeUpdate();
	
	PreparedStatement ps2=con.prepareStatement(query2);
	ps2.setString(1,pass);
	int rs2=ps2.executeUpdate();
	
	if(rs1!=0&&rs2!=0)
	{
		session.setAttribute("changemsg","Password Recovered Successfully!!");
		session.setMaxInactiveInterval(500);
		response.sendRedirect("../student/login/signin.jsp");

	}
	else
	{
		session.setAttribute("changemsg","Sorry some error occured.");
		session.invalidate();
		session.setMaxInactiveInterval(500);
		response.sendRedirect("../student/login/signin.jsp");
		
	}
%>