package seatDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class inquiry {

	private Connection con;
	private Statement st;
	private ResultSet rs;
	
	private String dbURL = "jdbc:mysql://localhost:3306/seat_reserve?characterEncoding=UTF-8&serverTimezone=UTC";
	private String dbID = "root";
	private String dbPW = "qhtjs!0104!";
	
	String rDate;
	String rTime;
	String rSeat;
	String userID;

	public inquiry() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection(dbURL, dbID, dbPW);
		st = con.createStatement();
	}
	
	public String inquiryDB(String rDate, String rTime) throws SQLException {
		String result = "";
		String SQL = "SELECT * FROM seat_status WHERE rDate = " + rDate + " AND rTime = " + rTime + ";";
		rs = st.executeQuery(SQL);
		
		while(rs.next()){
            result = result.concat(rs.getString("rSeat"));
        }
		
		rs.close();
		st.close();
		con.close();
		
		return result;
	}
	
	public int addDB(String rDate, String rTime, String rSeat, String userID) {
		String SQL = "INSERT INTO seat_status VALUES (?, ?, ?, ?);";
		try {
			PreparedStatement pstmt = con.prepareStatement(SQL);
			pstmt.setString(1,  rDate);
			pstmt.setString(2,  rTime);
			pstmt.setString(3,  rSeat);
			pstmt.setString(4,  userID);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}


	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		
		inquiry testobj = new inquiry();

		String rDate = "20201215";
		String rTime = "1";
		String rSeat = "c_b";
		String userID = "testId03";
		String result = testobj.inquiryDB(rDate, rTime);
		System.out.println(result);
	}

}
