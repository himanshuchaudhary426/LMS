package login;
import java.sql.*;

public class LoginDAO {
    public static String loginCheck(LoginBean loginBean){
        String query="select username , password from login where username=? and password=?";
        
        try{
            Connection con=DBConnection.getConnection();
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,loginBean.getEmail());
            ps.setString(2,loginBean.getPassword());
            
			System.out.println(loginBean.getEmail());
			System.out.println(loginBean.getPassword());
			
            ResultSet rs=ps.executeQuery();
            
            if(rs.next()){
                return "true";
            }
            else{
                return "false";
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return "error";
    }
}