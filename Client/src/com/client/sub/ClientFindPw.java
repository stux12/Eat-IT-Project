package com.client.sub;

import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DB_DAO.DAO;
import DB_VO.MemberVO;

public class ClientFindPw implements ClientImpl {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String id1 = request.getParameter("id1");
		String irum1 = request.getParameter("irum1");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String tel1 = phone1+"-"+phone2+"-"+phone3;
		
		DAO dao1 = null;
		MemberVO vo1 = null;
		String pw1 = "";
		
		try {
		dao1 = new DAO();
		vo1 = dao1.Client_OneJoinPw(id1,irum1,tel1);
		pw1 = vo1.getPw();
		}catch (Exception e) {
			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter writer = response.getWriter(); 
			writer.println("<script>alert('해당하는 정보가 없습니다.'); location.href='"+"/EAT-iT/Client/Client_Password.jsp"+"';</script>"); 
			writer.close();
		}
		
		response.setContentType("text/html; charset=UTF-8"); 
		PrintWriter writer = response.getWriter(); 
		writer.println("<script>alert('"+pw1+"'); location.href='"+"/EAT-iT/Client/Client_Login.jsp"+"';</script>"); 
		writer.close();
		
	}

}
