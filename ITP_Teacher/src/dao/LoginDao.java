package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
	
	String CHECK_LOGIN="select * from doctor where UserId=? AND Password=?";
	
	  public final static String cloudURL = "jdbc:mysql://52.237.113.122:3306/student_ms?autoReconnect=true&useSSL=false&verifyServerCertificate=false";
	  public final static String cloudUser = "itpuser";
	  public final static String cloudUserPW = "itp@123AdminPassword";
	
	
	public boolean checklogin(String UserId,String Password)
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(cloudURL, cloudUser, cloudUserPW);
			
			PreparedStatement ps = con.prepareStatement(CHECK_LOGIN);
			ps.setString(1, UserId);
			ps.setString(2, Password);
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				return true;
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
		
	}
	

}
