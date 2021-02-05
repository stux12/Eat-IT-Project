package com.client.sub;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB_DAO.DAO;

public class ExecuteTelDelete implements ExecuteImpl {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		 
		
		String name = request.getParameter("name");

		DAO tidao1 = new DAO();
		boolean tf = tidao1.deleteInfo(name);

		if (tf) {
			request.setAttribute("result1", "삭제good");
		} else {
			request.setAttribute("result1", "삭제오류");
		}

	}

}
