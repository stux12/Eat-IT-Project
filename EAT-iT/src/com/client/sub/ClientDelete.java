package com.client.sub;

import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import DB_DAO.DAO;

public class ClientDelete implements ClientImpl {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		System.out.println("?");
		ServletContext app = request.getServletContext();
		String id1 = (String)app.getAttribute("id1");
		DAO dao1 = new DAO();
		boolean check = dao1.Client_Delete(id1);
		
		
		if(check) {
		response.setContentType("text/html; charset=UTF-8"); 
		PrintWriter writer = response.getWriter(); 
		writer.println("<script>alert('회원탈퇴 되셨습니다..'); location.href='"+"/EAT-iT/main.jsp"+"';</script>"); 
		writer.close();
		app.removeAttribute("id1");
		}else {
			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter writer = response.getWriter(); 
			writer.println("<script>location.href='../ErrorPage.jsp';</script>");
			writer.close();
		}
	}

		
	
}
