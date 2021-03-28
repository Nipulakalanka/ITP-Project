package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.HallArrangements;
import model.Teacher;


public class TeacherDao {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	
	public final static String cloudURL = "jdbc:mysql://52.237.113.122:3306/student_ms?autoReconnect=true&useSSL=false&verifyServerCertificate=false";
	public final static String cloudUser = "itpuser";
	public final static String cloudUserPW = "itp@123AdminPassword";
	

	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Connection con =null;
	
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		con = DriverManager.getConnection(cloudURL, cloudUser, cloudUserPW);
		
		return con;
	}
	
	public static Teacher getTeacher(String UserId) throws ClassNotFoundException, SQLException {
		
		String SEL = "select * from User where UserId=?;";
		Teacher teacher =  new Teacher();
		
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement(SEL);
		pst.setString(1, UserId);
		ResultSet rs = pst.executeQuery();
		
		if(rs.next()) {
			teacher.setUserId(rs.getString("UserId"));
			teacher.setFirstName(rs.getString("FirstName"));
			teacher.setLastName(rs.getString("LastName"));
			teacher.setGender(rs.getString("Gender"));
			teacher.setDOB(rs.getString("DOB"));
			teacher.setNIC(rs.getString("NIC"));
			teacher.setAddress(rs.getString("Address"));
			teacher.setTelephone(rs.getString("Telephone"));
			teacher.setEmail(rs.getString("Email"));
			teacher.setPassword(rs.getString("Password"));
		}
		
		return teacher;
	}
	
	public static List<HallArrangements> selectAllArrangements(String UserId) {

	    List<HallArrangements> Halls = new ArrayList<>();
	    String SELECT_ALL_HALLS = "select * from HallArangements where TeacherId=?;";
	    try {

	      Class.forName("com.mysql.cj.jdbc.Driver");

	      Connection con = DriverManager.getConnection(cloudURL, cloudUser, cloudUserPW);
	      
	      PreparedStatement ps = con.prepareStatement(SELECT_ALL_HALLS);
	      ps.setString(1, UserId);
	      ResultSet rs = ps.executeQuery();

	      while (rs.next()) {
	        int ReserveId = rs.getInt("ReservationId");
	        String HallNumber = rs.getString("HallNumber");
	        String TeacherName = rs.getString("TeacherName");
	        String TeacherId = rs.getString("TeacherId");
	        String Type = rs.getString("Type");
	        String Subject = rs.getString("Subject");
	        String Grade = rs.getString("Grade");
	        String Day = rs.getString("Day");
	        String StartTime = rs.getString("StartTime");
	        String EndTime = rs.getString("EndTime");

	        Halls.add(new HallArrangements(ReserveId, HallNumber, TeacherName, TeacherId, Type, Subject, Grade, Day,
	            StartTime, EndTime));
	      }
	    } catch (Exception E) {
	      E.printStackTrace();
	    }

	    return Halls;
	  }
	
	 public static boolean updateprofile(String UserId, String FirstName, String LastName, String Gender, String Address, String DOB, String NIC, String Email, String Telephone, String Password) throws ClassNotFoundException, SQLException {
	     
		
		 try {
		 Class.forName("com.mysql.cj.jdbc.Driver");

	      Connection con = DriverManager.getConnection(cloudURL, cloudUser, cloudUserPW);
	      stmt = con.createStatement();
	      
	      String UPDATE_PROFILE = "update User u,Student s set u.FirstName='"+FirstName+"',u.LastName='"+LastName+"',u.Gender='"+Gender+"',u.Address='"+Address+"',u.DOB='"+DOB+"',u.NIC='"+NIC+"',u.Email='"+
				  Email+"',u.Telephone='"+Telephone+"',u.Password='"+Password+"'" +
				  "where u.UserId=s.StudentID and u.UserId='"+UserId+"'";
	      
	      int rs = stmt.executeUpdate(UPDATE_PROFILE);
	      
  		if(rs>0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
		}
		catch(Exception e) {
			e.printStackTrace();
	 	}
		return isSuccess;
	 }
	    	
	
}
