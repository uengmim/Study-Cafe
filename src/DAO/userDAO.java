package DAO;

import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.PreparedStatement;

import java.sql.ResultSet;

public class userDAO {

	
	private Connection conn; // connection:db에접근하게 해주는 객체
	private PreparedStatement pstmt;
	private ResultSet rs;


	// db에 접속해 주는 부분

	public userDAO() { // 생성자 실행될때마다 자동으로 db연결이 이루어 질 수 있도록함

		try {
			String dbURL = "jdbc:mariadb://127.0.0.1:3306/javachip"; 
			String dbID = "root";
			String dbPassword = "k742gg92";
			Class.forName("org.mariadb.jdbc.Driver");

			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);

		} catch (Exception e) {

			e.printStackTrace(); // 오류가 무엇인지 출력

		}

	}

	// 로그인기능

	public int login(String id, String pw) {
		String sql = "SELECT pw FROM users WHERE id = ?";
		try {			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			// rs:result set 에 결과보관

			rs = pstmt.executeQuery();

			// 결과가 존재한다면 실행
			if (rs.next()) {

				// 패스워드 일치한다면 실행
				if (rs.getString(1).equals(pw)) {

					return 1; // 성공

				} else

					return 0; // 비밀번호 불일치
			}

			return -1; // 아이디가 없음 오류

		} catch (Exception e) {

			e.printStackTrace();
		}
		return -2; // 데이터베이스 오류
	}
	
	
	public int signup (User user) {
		String sql = "insert into users values(?, ?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getId());
			pstmt.setString(2, user.getPw());
			
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

}



