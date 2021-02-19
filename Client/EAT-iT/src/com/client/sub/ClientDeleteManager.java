package com.client.sub;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DB_DAO.DAO;

public class ClientDeleteManager implements ClientImpl {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String id1 = request.getParameter("id1");
		
		DAO dao1 = new DAO();
		dao1.Client_Delete(id1);
		
		response.sendRedirect("ClientAllView.do");
		
	}

}
