import java.lang.Thread.State;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class Program {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		String url = "jdbc:mariadb://127.0.0.1:3306/javachip";
		String sql = "SELECT * FROM users";

                // Ŭ������ ��üȭ, ����̹��� �ε�
		Class.forName("org.mariadb.jdbc.Driver");
                // ���� ���� ����
		Connection con = DriverManager.getConnection(url, "root", "k742gg92");
                // ���� ��ü�� ����
		Statement st = con.createStatement();
                // ������ �����Ͽ� ��� ������ ���´�.
		ResultSet rs = st.executeQuery(sql);

		if(rs.next()) { // ���� ���� ������ Bof ~ Eof
			String ex1 = rs.getString("pw");
			System.out.println(ex1);
		}

		rs.close();
		st.close();
		con.close();
	}

}