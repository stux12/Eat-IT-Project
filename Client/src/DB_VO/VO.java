package DB_VO;

import java.util.Date;

public class VO {
	private String id;
	private String pw;
	private String nick;
	private String name;
	private String phone2;
	private String phone3;
	private Date d;


	
	public VO(String IdPw) {
		this.id = IdPw;
		this.pw = IdPw;
	}

	
	public VO(String id, String name) {
		this.id = id;
		this.name = name;
	}






	public VO(String id, String pw, String nick, String name, String phone2,String phone3, Date d) {
		this.id = id;
		this.pw = pw;
		this.nick = nick;
		this.name = name;
		this.phone2 = phone2;
		this.phone3 = phone3;
		this.d = d;
	}

	
	
	public String getPhone2() {
		return phone2;
	}



	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}



	public String getPhone3() {
		return phone3;
	}



	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}



	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getD() {
		return d;
	}

	public void setD(Date d) {
		this.d = d;
	}

	public VO() {
	}

}
