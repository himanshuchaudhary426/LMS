package login;
import java.sql.*;

public class DBConnection
{
	static final String URL="jdbc:mysql://localhost/";
	static final String DATABASE_NAME="LMS";
	static final String USERNAME="himanshu";
	static final String PASSWORD="himanshu";
	
	public static Connection getConnection()
	{
		Connection con=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(URL+DATABASE_NAME,USERNAME,PASSWORD);
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}
	
}