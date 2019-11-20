package dbpkg;
import java.sql.*;
import java.util.ArrayList;
import java.util.ArrayList;

public class ShopDAO extends DBConnection{
	private static ShopDAO instance = new ShopDAO();
	public static ShopDAO getInstance() {
		return instance;
	}
	private ShopDAO() {}


	Connetion conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs =null;
	String sql=null;
	int cusno=0;
	try {
		conn = getConnection();
		sql="select NVL(max(custno), 100000)+1 from MEMBER_TBL_02";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			custno = rs.getInt(1);
		}
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		closeDBResource(rs, pstmt, conn);
		return custno;
	}
	public int insertMem(MemberVO vo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int rs = 0;
		String sql = null;
		try {
			conn = getConnection();
			sql="sql.into MEMBER_TBL_02 values"
		}
	}
	

}
