package com.wava.my;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB_DAO.DAO;
import DB_VO.MutualVO;

public class WavaMutual_allinfo_add implements WavaIpml {

	

	@Override
	public void wava(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		DAO mudao1 = null;
		mudao1 = new DAO();
		
		ArrayList<MutualVO> alist1 = null;

		String address = request.getParameter("address");
		alist1 = mudao1.Mutual_allinfo_add(address);
			
		
		request.setAttribute("alist1",alist1);
	
}
	
}