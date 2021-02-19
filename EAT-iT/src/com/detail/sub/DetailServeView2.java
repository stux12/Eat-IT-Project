package com.detail.sub;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.client.sub.ClientImpl;

import DB_DAO.DAO;
import DB_VO.MutualVO;

public class DetailServeView2 implements ClientImpl {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ArrayList<MutualVO> alist1 = null;

		MutualVO mv = null;
		DAO dao = new DAO();
		String search = request.getParameter("search");
		alist1 = dao.Mutual_allinfo_search(search);

		request.setAttribute("alist1", alist1);
		request.setAttribute("mv", mv);
	}

}
