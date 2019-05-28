<%@ page import="java.sql.*"%>

<%
	try
	{
	String email=(String)session.getAttribute("myemail");
	String pass=request.getParameter("cnnpassword");
	String opass=request.getParameter("opassword");
	Connection con=login.DBConnection.getConnection();
	String query1="update signup set password=? where email='"+email+"'and password='"+opass+"'";
	String query2="update login set password=? where username='"+email+"'and password='"+opass+"'";
	System.out.println(email);
	PreparedStatement ps1=con.prepareStatement(query1);
	ps1.setString(1,pass);
	int rs1=ps1.executeUpdate();
	
	PreparedStatement ps2=con.prepareStatement(query2);
	ps2.setString(1,pass);
	int rs2=ps2.executeUpdate();
	
	if(rs1!=0&&rs2!=0)
	{
		session.setAttribute("changmsg","Password Changed Successfully!!");
		session.setMaxInactiveInterval(500);
		response.sendRedirect("changePassword.jsp");

	}
	else
	{
		session.setAttribute("changmsg","Wrong Password entered");
		session.setMaxInactiveInterval(500);
		response.sendRedirect("changePassword.jsp");
		
	}
	}catch(Exception e)
	{
		session.setAttribute("changmsg","Sorry some error occured");
		session.setMaxInactiveInterval(500);
		response.sendRedirect("changePassword.jsp");
	}
%>