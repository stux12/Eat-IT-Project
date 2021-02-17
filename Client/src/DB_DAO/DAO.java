package DB_DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import DB_CONN.CONN;
import DB_VO.DibsVO;
import DB_VO.MemberVO;

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
		String sql = "SELECT * FROM EAT_IT_MEMBER WHERE ID=? AND PW=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id1);
		pstmt.setString(2, pw1);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			return true;
		} else {
			return false;
		}
	}

	// 회원가입
	public boolean Client_insert(String id1, String pw1, String nick1, String name1, String tel1) {
		String sql = "INSERT INTO EAT_IT_MEMBER (ID,PW,NICK,NAME,PHONENUMBER) VALUES(?,?,?,?,?)";
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

	//ID중복확인
	public int Client_IdCheck(String id1) throws SQLException {
		String sql = "SELECT ID FROM EAT_IT_MEMBER WHERE ID=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id1);
			rs = pstmt.executeQuery();
			if(rs.next()||id1.equals("")) {
				return 0;//사용불가
			}else {
				return 1;//사용가능
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	
	// 전체검색할때 사용
	public ArrayList<MemberVO> Client_AllView() throws SQLException {
		ArrayList<MemberVO> MemberArray = new ArrayList<MemberVO>();
		String sql = "SELECT * FROM EAT_IT_MEMBER WHERE ADMIN!='0' ORDER BY id";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			String id = rs.getString(1);
			String pw = rs.getString(2);
			String nick = rs.getString(3);
			String name = rs.getString(4);
			String tel = rs.getString(5);
			String[] telarr = tel.split("-");
			String phone2 = telarr[1];
			String phone3 = telarr[2];
			Date d = rs.getDate(6);
			MemberVO vo1 = new MemberVO(id, pw, nick, name, phone2, phone3, d);
			MemberArray.add(vo1);
		}
		return MemberArray;
	}

	// 한명조회
	public MemberVO Client_OneJoin(String id1) throws SQLException {
		MemberVO vo1 = null;
		String sql = "SELECT * FROM EAT_IT_MEMBER WHERE ID=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id1);
		rs = pstmt.executeQuery();//
		if (rs.next()) {
			String id = rs.getString(1);
			String pw = rs.getString(2);
			String nick = rs.getString(3);
			String name = rs.getString(4);
			String tel = rs.getString(5);
			System.out.println(tel);
			String[] telarr = tel.split("-");
			String phone2 = telarr[1];
			String phone3 = telarr[2];
			Date d = rs.getDate(6);
			vo1 = new MemberVO(id, pw, nick, name, phone2, phone3, d);
		} else {
			vo1 = null;
		}
		return vo1;
	}

	// 아이디찾기
	public MemberVO Client_OneJoinId(String name, String tel1) throws SQLException {
		MemberVO vo1 = null;
		String sql = "SELECT ID FROM EAT_IT_MEMBER WHERE NAME=? AND PHONENUMBER=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, tel1);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			String id = rs.getString(1);
			vo1 = new MemberVO(id);
		} else {
			vo1 = null;
		}
		return vo1;
	}

	// 비밀번호찾기
	public MemberVO Client_OneJoinPw(String id1, String irum1, String tel1) throws SQLException {
		MemberVO vo1 = null;
		String sql = "SELECT PW FROM EAT_IT_MEMBER WHERE ID=? AND NAME=? AND PHONENUMBER=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id1);
		pstmt.setString(2, irum1);
		pstmt.setString(3, tel1);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			String pw = rs.getString(1);
			vo1 = new MemberVO(pw);
		} else {
			vo1 = null;
		}
		return vo1;
	}

	// 회원업데이트
	public boolean Client_Update(String pw, String nick, String name, String tel, String id) {
		String sql = "UPDATE EAT_IT_MEMBER SET PW=?, NICK=?, NAME=?, PHONENUMBER=? WHERE ID=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, pw);
			pstmt.setString(2, nick);
			pstmt.setString(3, name);
			pstmt.setString(4, tel);
			pstmt.setString(5, id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("update Exception");
			return false;
		}
		return true;
	}

	// 회원삭제
	public boolean Client_Delete(String id1) {
		String sql = "DELETE FROM EAT_IT_MEMBER WHERE ID=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id1);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("delete Exception");
			return false;
		}
		return true;
	}
	
	
	// 찜목록에 넣기
	public boolean Client_DibsListInsert(String id1, String mutual1, String likes1) {
		String sql = "INSERT INTO EAT_IT_LIKE VALUES(?,?,?)";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id1);
			pstmt.setString(2, mutual1);
			pstmt.setString(3, likes1);
			pstmt.executeUpdate();
			System.out.println("왔니?");
		} catch (SQLException e) {
			System.out.println("insert Exception");
			return false;
		}
		return true;
	}
	
	//찜목록에 이미 있는지 확인
	public boolean Client_OverlapCheck(String id1, String mutual1, String likes1) {
		String sql = "SELECT * FROM EAT_IT_LIKE WHERE ID=? AND MUTUAL=? AND LIKES=?";
		boolean check = false;
		try {
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id1);
		pstmt.setString(2, mutual1);
		pstmt.setString(3, likes1);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			check = true;
		} else {
			check = false;
		}
		}catch (Exception e) {
			System.out.println("Join Error");
		}
		return check;
	}
	
	
	//찜목록에 있는걸 보기
	public ArrayList<DibsVO> Client_DibsListJoin(String id1) throws SQLException{
		ArrayList<DibsVO> array = new ArrayList<DibsVO>();
		String sql = "SELECT DISTINCT L.MUTUAL, M.FIRSTIMG FROM EAT_IT_LIKE L, EAT_IT_MUTUALIMG M WHERE ID=? AND L.MUTUAL = M.MUTUAL";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id1);
		rs = pstmt.executeQuery();
		while(rs.next()) {
			String mutual = rs.getString(1);
			String img = rs.getString(2);
			DibsVO vo1 = new DibsVO(mutual, img);
			array.add(vo1);
		}
		return array;
	}
	
	//찜목록에 있는거 삭제
	public void Client_DibsListDelete(String id1, String mutual1) {
		String sql = "DELETE FROM EAT_IT_LIKE WHERE ID=? AND MUTUAL=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id1);
			pstmt.setString(2, mutual1);
			pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	

	
}

