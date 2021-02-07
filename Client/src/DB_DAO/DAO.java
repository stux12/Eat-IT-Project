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
	 
	public DAO() throws ClassNotFoundException, SQLException{
		con= new CONN().getConnection();
	}
	public void pstmtClose() throws SQLException{
		if(pstmt != null){ pstmt.close(); }
	}
	public void getAllInfoClose() throws SQLException{;
		if(rs != null){ rs.close(); }
		if(pstmt != null){ pstmt.close(); }
		if(con != null){ con.close(); }
	}
	
	
	
	//회원가입
	public boolean Client_insert(String id1, String pw1, String nick1, String name1, String tel1){
		String sql = "INSERT INTO CLIENT (ID,PW,NICK,NAME,PHONENUMBER) VALUES(?,?,?,?,?)";
		try{
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id1);
			pstmt.setString(2, pw1);
			pstmt.setString(3, nick1);
			pstmt.setString(4, name1);
			pstmt.setString(5, tel1);
			pstmt.executeUpdate();
		}catch(SQLException e){
			System.out.println("insert Exception");
			return false;
		}
		return true;
	}
	
	
	
	//전체검색할때 사용
	public ArrayList <VO> getAllInfo() throws SQLException{
		ArrayList<VO> tiarray = new ArrayList<VO>();
		String sql = "SELECT * FROM TelTable5 ORDER BY id";
		
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next()){
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String tel = rs.getString(3);
			Date d = rs.getDate(4);
			//컬럼명, 순번, alias 지금껀 순번으로한것임
			
			VO tv = new VO(id,name,tel,d);
			tiarray.add(tv);
		}
		return tiarray;
	}
	
	// 한명조회
	public VO Client_OneJoin (String id1) throws SQLException{
		VO vo1=null;
		String sql = "SELECT * FROM CLIENT WHERE ID=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id1);
		rs = pstmt.executeQuery();//
		if(rs.next()){//찾았으면 rs종이박스에 홍길동정보가 있다
			String id=rs.getString(1);
			String pw=rs.getString(2);
			String nick=rs.getString(3);
			String name=rs.getString(4);
			String tel=rs.getString(5);
			String[] telarr= tel.split("-");
			String phone2 = telarr[1];
			String phone3 = telarr[2];
			
			Date d=rs.getDate(6);
			vo1=new VO(id,pw,nick,name,phone2,phone3,d);//생성자 사용하여 vo 그릇에 넣자 
			                 
	}else { //그런 이름이 없으면 
		vo1=null; //tv객체참조변수에 null 
	}
	return vo1;// tv리턴 
	}//search_nametel()-end
	
	
	//회원업데이트
	public boolean Client_Update(String pw1, String nick1, String name1, String tel1, String id1){
		String sql = "UPDATE CLIENT SET PW=?, NICK=?, NAME=?, PHONENUMBER=? WHERE ID=?";
		try{
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, pw1);
			pstmt.setString(2, nick1);
			pstmt.setString(3, name1);
			pstmt.setString(4, tel1);
			pstmt.setString(5, id1);
			pstmt.executeUpdate();
		}catch(SQLException e){
			System.out.println("update Exception");
			return false;
		}
		return true;
	}

	//회원삭제
	public boolean Client_Delete(String id1){
		String sql = "DELETE FROM CLIENT WHERE ID=?";
		try{
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id1);
			pstmt.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
			System.out.println("delete Exception");
			return false;
		}
		return true;
	}
}
