package com.client.sub;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB_DAO.DAO;
import DB_VO.VO;

public class ExecuteGetOneInfo implements ExecuteImpl {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		 
		String name = request.getParameter("name");

		DAO tidao1 = new DAO();
		VO tv1 = tidao1.getInfo(name);
		
		request.setAttribute("tv1", tv1);
	}

}
