<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>MariaDB ����</title>
</head>
<body>
	<h3>�����ͺ��̽� ���� �׽�Ʈ</h3>
	<%
		Connection conn = null;
		Statement state = null;
		ResultSet re = null;
		String driver = "org.mariadb.jdbc.Driver";
		
		// 							db�ּ� : ��Ʈ��ȣ/db��
		String url = "jdbc:mariadb://localhost:3306/test";
		String uId = "root";	// ���� ID
		String uPw = "k742gg92";	// ���� PW
		try{
			Class.forName(driver);
			conn = DriverManager.getConnection(url, uId, uPw);
			if(conn != null){
				out.println("�����ͺ��̽� ���� ����!!");
			}
			else{
				out.println("�����ͺ��̽� ���� ����..");
			}
		}
		catch(Exception e){
			out.println(e.getMessage());
		}
		finally{
			conn.close();
		}
	%>
</body>
</html>
