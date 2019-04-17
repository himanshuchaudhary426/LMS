<%@page import="login.LoginDAO"%>
<%@ page import="java.sql.*"%>

<jsp:useBean id="loginBean" class="login.LoginBean" scope="session"/>
<jsp:setProperty name="loginBean" property="*"/>
 
<%
String result=LoginDAO.loginCheck(loginBean);

Connection c=login.DBConnection.getConnection();
Statement s=c.createStatement();
String query="select name from login where username='"+loginBean.getEmail()+"'";
ResultSet rs=s.executeQuery(query);
String name="";
if(rs.next())
{
	name=rs.getString("name");
}

if(result.equals("true")){
	session.setMaxInactiveInterval(500);
    session.setAttribute("email",name);
	session.setAttribute("myemail",loginBean.getEmail());
    response.sendRedirect("../home/dashboard.jsp");
}

if(result.equals("false")){
	session.setMaxInactiveInterval(500);
    response.sendRedirect("signin.jsp");
	session.setAttribute("errormsg","Invalid username or password.");
}
 
if(result.equals("error")){
    response.sendRedirect("signin.jsp");
}
 
%>