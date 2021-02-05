package com.client.sub;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB_DAO.DAO;
import DB_VO.VO;

public class ExecuteTelInsert implements ExecuteImpl {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		 
		DAO tidao1 = new DAO();
		ArrayList<VO> alist1 = tidao1.getAllInfo();
		request.setAttribute("alist1", alist1);
		
		int id = Integer.parseInt(request.getParameter("id1"));
		String name = request.getParameter("name1");
		String tel = request.getParameter("tel1");
		String d = request.getParameter("d1");
		

			tidao1 = new DAO();
			boolean tf = tidao1.insertInfo(id, name, tel, d);
			if(tf) {
				request.setAttribute("result1", "insert성공");
			}else {
				request.setAttribute("result1", "insert실패");
			}
	}

}
