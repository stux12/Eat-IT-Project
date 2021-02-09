package com.client.sub;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB_DAO.DAO;
import DB_VO.VO;


public class ClientLoginCheck implements ClientImpl {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String id1 = request.getParameter("id1");
		String pw1 = request.getParameter("pw1");
		
		DAO dao1 = new DAO();
		boolean vo1 = dao1.Client_Login(id1,pw1);
	
		if(vo1) {
			RequestDispatcher rd1 = request.getRequestDispatcher("/Client/MainPage.jsp");
			rd1.forward(request, response);
		}else {
			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter writer = response.getWriter(); 
			writer.println("<script>alert('해당정보는 없는정보입니다'); location.href='"+"/Client/Client/Client_Login.jsp"+"';</script>"); 
			writer.close();
		}
		
		
		
	}

}
