package com.client.main;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.client.sub.ClientAllView;
import com.client.sub.ClientDelete;
import com.client.sub.ClientDeleteManager;
import com.client.sub.ClientFindId;
import com.client.sub.ClientFindPw;
import com.client.sub.ClientImpl;
import com.client.sub.ClientLoginCheck;
import com.client.sub.ClientLoginInsert;
import com.client.sub.ClientOneView;
import com.client.sub.ClientUpdate;

@WebServlet("*.do")
public class ClientFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ClientFrontController() {
        super();
    }

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
    	response.setCharacterEncoding("UTF-8");
    	
    	String check = request.getRequestURI().substring(request.getContextPath().length());
    	System.out.println(check);
    	String page = null;
    	ClientImpl h1 = null;
    	
    	switch (check) {
    	//로그인체크
		case "/LoginCheck.do":
			h1 = new ClientLoginCheck();
			try {
				h1.execute(request, response);
			}catch (Exception e) {
				e.printStackTrace();
			}
			page = "MainPage.jsp";
			break;

		//회원가입
		case "/ClientInsert.do":
			h1 = new ClientLoginInsert();
			try {
				h1.execute(request, response);
			}catch (Exception e) {
				e.printStackTrace();
			}
			break;
			
		//회원id찾기
		case "/ClientFindId.do" :
			h1 = new ClientFindId();
			try {
				h1.execute(request, response);
			}catch (Exception e) {
				e.printStackTrace();
			}
			page = "Client_IdJoin.jsp";
			break;
			
		//회원pw찾기
		case "/ClientFindPw.do" :
			h1 = new ClientFindPw();
			try {
				h1.execute(request, response);
			}catch (Exception e) {
				e.printStackTrace();
			}
			page = "Client_PasswordJoin.jsp";
			break;
			
		//회원정보보기
		case "/ClientOneView.do" :
			h1 = new ClientOneView();
			try {
				h1.execute(request, response);
			}catch (Exception e) {
				e.printStackTrace();
			}
			page = "Client_OneView.jsp";
			break;
			
		//회원정보삭제
		case "/ClientDelete.do":
			h1 = new ClientDelete();
			try {
				h1.execute(request, response);
			}catch (Exception e) {
				e.printStackTrace();
			}
			break;
		
		//회원정보 업데이트
		case "/ClientUpdate.do" :
			h1 = new ClientUpdate();
			try {
				h1.execute(request, response);
			}catch (Exception e) {
				e.printStackTrace();
			}
			page = "Client_UpdateJoin.jsp";
			break;
		
		//회원 전체보기(관리자용)
		case "/ClientAllView.do":
			h1 = new ClientAllView();
			try {
				h1.execute(request, response);
			}catch (Exception e) {
				e.printStackTrace();
			}
			page = "Client_AllView.jsp";
			break;
		
		//회원 삭제하기(관리자용)
		case "/ClientDeleteManager.do":
			h1 = new ClientDeleteManager();
			try {
				h1.execute(request, response);
			}catch (Exception e) {
				e.printStackTrace();
			}
			page = "Client_AllView.jsp";
			break;
			
			
			
		default:
			response.sendRedirect("ErrorPage404.jsp");
			break;
		}
	
    	
    	RequestDispatcher rd1 = request.getRequestDispatcher(page);
		rd1.forward(request, response);
    	
	}

	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
