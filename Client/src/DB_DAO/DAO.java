package DB_DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import DB_CONN.CONN;
import DB_VO.VO;

public class DAO {
	private Connection con;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public DAO() throws ClassNotFoundException, SQLException {
		con = new CONN().getConnection();
	}

	public void pstmtClose() throws SQLException {
		if (pstmt != null) {
			pstmt.close();
		}
	}

	public void getAllInfoClose() throws SQLException {
		;
		if (rs != null) {
			rs.close();
		}
		if (pstmt != null) {
			pstmt.close();
		}
		if (con != null) {
			con.close();
		}
	}

	// 로그인확인
	public boolean Client_Login(String id1, String pw1) throws SQLException {
		VO vo1 = null;
		String sql = "SELECT * FROM CLIENT WHERE ID=? AND PW=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id1);
		pstmt.setString(2, pw1);
		rs = pstmt.executeQuery();//
		if (rs.next()) {
			return true;
		} else {
			return false;
		}
	}

	// 회원가입
	public boolean Client_insert(String id1, String pw1, String nick1, String name1, String tel1) {
		String sql = "INSERT INTO CLIENT (ID,PW,NICK,NAME,PHONENUMBER) VALUES(?,?,?,?,?)";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id1);
			pstmt.setString(2, pw1);
			pstmt.setString(3, nick1);
			pstmt.setString(4, name1);
			pstmt.setString(5, tel1);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("insert Exception");
			return false;
		}
		return true;
	}

	// 전체검색할때 사용
	public ArrayList<VO> Manager_AllView() throws SQLException {
		ArrayList<VO> array = new ArrayList<VO>();
		String sql = "SELECT * FROM CLIENT WHERE id!='admin' ORDER BY id";

		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			String id = rs.getString(1);
			String name = rs.getString(4);
			VO vo1 = new VO(id, name);
			array.add(vo1);
		}
		return array;
	}

	// 한명조회, ID확인도 됨
	public VO Client_OneJoin(String id1) throws SQLException {
		VO vo1 = null;
		String sql = "SELECT * FROM CLIENT WHERE ID=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id1);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			String id = rs.getString(1);
			String pw = rs.getString(2);
			String nick = rs.getString(3);
			String name = rs.getString(4);
			String tel = rs.getString(5);
			String[] telarr = tel.split("-");
			String phone2 = telarr[1];
			String phone3 = telarr[2];
			Date d = rs.getDate(6);
			vo1 = new VO(id, pw, nick, name, phone2, phone3, d);

		} else {
			vo1 = null;
		}
		return vo1;
	}

	// 아이디찾기
	public VO Client_OneJoinId(String id1, String tel1) throws SQLException {
		VO vo1 = null;
		String sql = "SELECT ID FROM CLIENT WHERE NAME=? AND PHONENUMBER=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id1);
		pstmt.setString(2, tel1);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			String id = rs.getString(1);
			vo1 = new VO(id);

		} else {
			vo1 = null;
		}
		return vo1;
	}

	// 비밀번호찾기
	public VO Client_OneJoinPw(String id1, String irum1, String tel1) throws SQLException {
		VO vo1 = null;
		String sql = "SELECT PW FROM CLIENT WHERE ID=? AND NAME=? AND PHONENUMBER=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id1);
		pstmt.setString(2, irum1);
		pstmt.setString(3, tel1);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			String pw = rs.getString(1);
			vo1 = new VO(pw);
		} else {
			vo1 = null;
		}
		return vo1;
	}

	// 회원업데이트
	public boolean Client_Update(String pw1, String nick1, String name1, String tel1, String id1, Date d1) {
		String sql = "UPDATE CLIENT SET PW=?, NICK=?, NAME=?, PHONENUMBER=?, D=? WHERE ID=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, pw1);
			pstmt.setString(2, nick1);
			pstmt.setString(3, name1);
			pstmt.setString(4, tel1);
			pstmt.setString(5, id1);
			pstmt.setDate(6, d1);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("update Exception");
			return false;
		}
		return true;
	}

	// 회원삭제
	public boolean Client_Delete(String id1) {
		String sql = "DELETE FROM CLIENT WHERE ID=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id1);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("delete Exception");
			return false;
		}
		return true;
	}
}
