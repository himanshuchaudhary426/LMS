<%@ page import="java.sql.*"%>
<%
	try
	{
		String question=request.getParameter("SecurityQue");
		String answer=request.getParameter("SecurityAns");
		String email=(String)session.getAttribute("verify");
		Connection con=login.DBConnection.getConnection();
		String query="select question ,answer from signup where email='"+email+"'";
		Statement s=con.createStatement();
		ResultSet rs=s.executeQuery(query);
		System.out.println(rs);
		if(rs.next())
		{
			if((rs.getString(1).equals(question))&&(rs.getString(2).equals(answer)))
			{
				session.setAttribute("confirm",email);
				session.setMaxInactiveInterval(500);
				response.sendRedirect("passwordRecovery.jsp");
			}
			else
			{
				session.setAttribute("errmsg","Question and Answer did not match");
				session.setMaxInactiveInterval(500);
				response.sendRedirect("forgetPassword.jsp");
			}
		}
		else
		{
			response.sendRedirect("emailverify.jsp");
			session.invalidate();
		}
	}
	catch(Exception e)
	{
		response.sendRedirect("emailverify.jsp");
	}

%>