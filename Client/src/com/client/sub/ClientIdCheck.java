package com.client.sub;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB_DAO.DAO;
import DB_VO.VO;

public class ClientIdCheck implements ClientImpl {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String id1 = request.getParameter("id1");
		
		try {
			DAO dao1 = new DAO();
			VO vo1 = dao1.Client_OneJoin(id1);
		}catch (Exception e) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println(
					"<script>alert('아이디 중복입니다.'); location.href='" + "../Client/Client_Insert.jsp" + "';</script>");
			writer.close();
		}
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		writer.println(
				"<script>alert('사용가능한 아이디입니다.'); location.href='" + "../Client/Client_Insert.jsp" + "';</script>");
		writer.close();
		
		
	}

}
