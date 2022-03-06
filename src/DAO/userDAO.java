package DAO;

import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.PreparedStatement;

import java.sql.ResultSet;

public class userDAO {

	
	private Connection conn; // connection:db�������ϰ� ���ִ� ��ü
	private PreparedStatement pstmt;
	private ResultSet rs;


	// db�� ������ �ִ� �κ�

	public userDAO() { // ������ ����ɶ����� �ڵ����� db������ �̷�� �� �� �ֵ�����

		try {
			String dbURL = "jdbc:mariadb://127.0.0.1:3306/javachip"; 
			String dbID = "root";
			String dbPassword = "k742gg92";
			Class.forName("org.mariadb.jdbc.Driver");

			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);

		} catch (Exception e) {

			e.printStackTrace(); // ������ �������� ���

		}

	}

	// �α��α��

	public int login(String id, String pw) {
		String sql = "SELECT pw FROM users WHERE id = ?";
		try {			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			// rs:result set �� �������

			rs = pstmt.executeQuery();

			// ����� �����Ѵٸ� ����
			if (rs.next()) {

				// �н����� ��ġ�Ѵٸ� ����
				if (rs.getString(1).equals(pw)) {

					return 1; // ����

				} else

					return 0; // ��й�ȣ ����ġ
			}

			return -1; // ���̵� ���� ����

		} catch (Exception e) {

			e.printStackTrace();
		}
		return -2; // �����ͺ��̽� ����
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



