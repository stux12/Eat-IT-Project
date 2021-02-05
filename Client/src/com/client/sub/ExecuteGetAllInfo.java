package com.client.sub;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB_DAO.DAO;
import DB_VO.VO;

public class ExecuteGetAllInfo implements ExecuteImpl{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		
		DAO tidao1 = new DAO();
		ArrayList<VO> alist1 = tidao1.getAllInfo();
		request.setAttribute("alist1", alist1);
	}
}
