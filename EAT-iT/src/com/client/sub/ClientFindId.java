package com.client.sub;

import java.awt.Dimension;
import java.awt.Toolkit;
import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DB_DAO.DAO;
import DB_VO.MemberVO;

public class ClientFindId implements ClientImpl {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		String irum1 = request.getParameter("irum1");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String tel1 = phone1 + "-" + phone2 + "-" + phone3;
		DAO dao1 = null;
		MemberVO vo1 = null;
		String id1 = "";
		String name1= "";
		try {
		dao1 = new DAO();
		vo1 = dao1.Client_OneJoinId(irum1, tel1);
		id1 = vo1.getId();
		name1 = vo1.getName();
		System.out.println(name1);
		}catch (Exception e) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println(
					"<script>alert('해당하는 정보가 없습니다.'); location.href='" + "/EAT-iT/Client/Client_Id.jsp" + "';</script>");
			writer.close();
		}
		String width = request.getParameter("X");
		String height = request.getParameter("Y");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		writer.println("<script>"
				+ "url='Client_infocheck.jsp?id1="+id1+"&name1="+name1+"';" 
				+ "window.open(url,'_blank','width=500,height=280,left="+width+",top="+height+"');"
				+ "</script>");
		writer.close();
	}
}
