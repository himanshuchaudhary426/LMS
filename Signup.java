package signup;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class Signup extends HttpServlet
{
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html");
		String name=request.getParameter("name");
		String mobile=(request.getParameter("contact"));
		String branch=request.getParameter("branch");
		String year=request.getParameter("year");
		String add_no=request.getParameter("Adm_no");
		String section=request.getParameter("Section");
		String gender=request.getParameter("gender");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String question=request.getParameter("SecurityQue");
		String answer=request.getParameter("SecurityAns");
		try
		{
		Connection con=login.DBConnection.getConnection();
		PreparedStatement ps=con.prepareStatement("insert into signup(name,mobile,branch,year,admission_no,section,gender,email,password,question,answer) values ('"+name+"','"+mobile+"','"+branch+"','"+year+"','"+add_no+"','"+section+"','"+gender+"','"+email+"','"+password+"','"+question+"','"+answer+"')");
		PreparedStatement pst=con.prepareStatement("insert into login(username,password,name) values('"+email+"','"+password+"','"+name+"')");
		int j=pst.executeUpdate();
		
		int i=ps.executeUpdate();
		if(i!=0&&j!=0)
		{
			HttpSession session=request.getSession();
			session.setMaxInactiveInterval(500);
			session.setAttribute("signup","Registered Successfully!!Login here..");
			response.sendRedirect("student/login/signin.jsp");
		}
		else
		{
			response.sendRedirect("signup.html");
		}
		}catch(Exception e)
		{
			
		}
	}
}