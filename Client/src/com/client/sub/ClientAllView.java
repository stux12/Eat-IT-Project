package com.client.sub;

import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DB_DAO.DAO;
import DB_VO.VO;

public class ClientAllView implements ClientImpl {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		DAO dao1 = new DAO();
		ArrayList<VO> alist1 = dao1.Manager_AllView();
		request.setAttribute("alist1", alist1);
		
		RequestDispatcher rd1 = request.getRequestDispatcher("Manager/Client_AllView.jsp");
		rd1.forward(request, response);
	
		
		
	}

}
