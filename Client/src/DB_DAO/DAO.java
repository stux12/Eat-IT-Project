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
	public boolean insertInfo(int id, String name, String tel, String d){
														//?값을 YYYY-MM-DD형태로 바꿔서 DATE처리한다 이건 sql문법!!!!
		String sql = "insert into TelTable5 values(?,?,?,TO_DATE(?,'YYYY-MM-DD'))";
		try{
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, tel);
			pstmt.setString(4, d);
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
	
	////////////// 원하는 한사람 찾는 메소드 만들기  ////////////
	public VO getInfo(String name1) throws SQLException{
		VO tv=null;
		String sql = "SELECT * FROM TelTable5 where name=?";
		//? : 원하는 사람 이름 
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, name1);
		rs = pstmt.executeQuery();//
		if(rs.next()){//찾았으면 rs종이박스에 홍길동정보가 있다
			int id=rs.getInt(1);
			String name=rs.getString(2);
			String tel=rs.getString(3);
			Date d=rs.getDate(4);//여기까지의 홍길동정보 전부꺼내서 
			tv=new VO(id,name,tel,d);//생성자 사용하여 vo 그릇에 넣자 
			                 
	}else { //그런 이름이 없으면 
		tv=null; //tv객체참조변수에 null 
	}
	return tv;// tv리턴 
	}//search_nametel()-end
	
	
	
	public boolean update_nametel(int id1, String name1, String tel1, String d1, String name2){
		String sql = "update TelTable5 set id=?, name=?, tel=?, D=TO_DATE(?,'YYYY-MM-DD') where name=?";
		try{
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, id1);
			pstmt.setString(2, name1);
			pstmt.setString(3, tel1);
			pstmt.setString(4, d1);
			pstmt.setString(5, name2);
			pstmt.executeUpdate();
		}catch(SQLException e){
			System.out.println("update Exception");
			return false;
		}
		return true;
	}
	//id->name
	public boolean deleteInfo(String name){
		String sql = "delete from TelTable5 where name=?";
		try{
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
			System.out.println("delete Exception");
			return false;
		}
		return true;
	}
}
