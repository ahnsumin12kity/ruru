package dbpkg;
import java.sql.*;
public class DBConnetion {
	public DBConnetion() {
		
	}
	public Connection getConnetion() {
		String driver = "oracle.jdbc.OracleDriver";
		String url="jdbc:oracel:thin@localhost:1521:xe";
		String user = "scott";
		String pasword = "tiger";
		try {
			Class.forName(driver);
			Connection conn = DriverManager.getConnection(url, user, password);
		}catch (Exception e) {
			e.printStackTrace();
			
		}
		return conn;
	}
	public void closeDBResource(ResultSet rs, PreparedStatement pstmt, Connection conn) {
		if (rs! = null) {
			try {
				rs.close();
			}catch (SQLException e) {
				e.printStackTrace);
			}
			
		}
		if(pstmt !=null) {
			try {
				pstmt.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn!=null) {
			try {
				conn.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
public void closeDBResource(PreparedStatement pstmt, Connection conn ) {
	if(conn!=null) {
		try {
			conn.close();
		}catch (SQLException e) {
			e.printStackTrace();
		}
	}
}

}
