package com.wava.my;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB_DAO.DAO;
import DB_VO.MutualVO;

public class WavaMutual_allinfo_kind implements WavaIpml {

	@Override
	public void wava(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		DAO mudao2 = null;
		mudao2 = new DAO();
		ArrayList<MutualVO> alist2 = null;
		String kinds = request.getParameter("kinds");
		
		
		alist2 = mudao2.Mutual_allinfo_kind(kinds);
		request.setAttribute("alist2", alist2);
	}

}
