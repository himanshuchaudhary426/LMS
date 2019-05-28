<%@ page import="java.sql.*"%>

<%
	try{
		String email=request.getParameter("emailid");
		Connection c=login.DBConnection.getConnection();
		PreparedStatement ps=c.prepareStatement("select username from login where username=?");
		ps.setString(1,email);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			session.setMaxInactiveInterval(500);
			session.setAttribute("verify",email);
			response.sendRedirect("forgetPassword.jsp");
		}
		
		else
		{
			session.setMaxInactiveInterval(500);
			session.setAttribute("err","Sorry!! Email Id not registered");
			response.sendRedirect("emailverify.jsp");
		}
	}
	catch(Exception e)
	{
		response.sendRedirect("emailverify.jsp");
	}
%>