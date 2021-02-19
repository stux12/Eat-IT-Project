package com.detail.sub;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.client.sub.ClientImpl;

import DB_DAO.DAO;

public class ReviewRegister implements ClientImpl {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		System.out.println("--------------------------------");
		String mutual = request.getParameter("mutual");
		String id = request.getParameter("id");
		String review = request.getParameter("review");
		
		System.out.println(mutual);
		System.out.println(id);
		System.out.println(review);
		DAO dao = new DAO();
		boolean reviewReg = dao.Review_Insert(mutual, id, review);
		request.setAttribute("mutual", mutual);
	}

}
