package com.client.sub;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB_DAO.DAO;

public class ExecuteTelUpdate implements ExecuteImpl {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		 
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String d = request.getParameter("d");
		String name2 = request.getParameter("name2");
		
		DAO tidao1 = new DAO();
		boolean tf = tidao1.update_nametel(id, name, tel, d, name2);
		
		if(tf) {
			request.setAttribute("result1", "update성공");
		}else {
			request.setAttribute("result1", "update실패");
		}
	}

}
