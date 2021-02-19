package com.client.main;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.client.sub.ClientAllView;
import com.client.sub.ClientDelete;
import com.client.sub.ClientDeleteManager;
import com.client.sub.ClientDibsListDelete;
import com.client.sub.ClientDibsListView;
import com.client.sub.ClientFindId;
import com.client.sub.ClientFindPw;
import com.client.sub.ClientIdCheck;
import com.client.sub.ClientImpl;
import com.client.sub.ClientLoginCheck;
import com.client.sub.ClientLoginInsert;
import com.client.sub.ClientOneView;
import com.client.sub.ClientUpdate;
import com.detail.sub.DetailAllView;
import com.detail.sub.DetailServeView2;
import com.detail.sub.ReviewDelete;
import com.detail.sub.ReviewRegister;
import com.wava.my.WavaIpml;
import com.wava.my.WavaMutual_allinfo_add;
import com.wava.my.WavaMutual_allinfo_kind;
import com.wava.my.WavaMutual_allinfo_review;
import com.wava.my.WavaMutual_allinfo_search;

@WebServlet("*.do")
public class ClientFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ClientFrontController() {
		super();
	}

	// get이건 post건 여기로 와서 처리
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		// 경로가 어떻게 되는지 확인 개 햇갈림
		String url = request.getRequestURI().substring(request.getContextPath().length());
		System.out.println(url);
		ClientImpl h1 = null; // request, response사용을 위해
		WavaIpml w1 = null; // request, response사용을 위해
		ServletContext app = null; // application화 하기위해서 선언
		RequestDispatcher rd1 = null;
		switch (url) {

		// 로그인체크
		case "/Client/LoginCheck.do":
			h1 = new ClientLoginCheck();
			try {
				h1.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;

		// 로그아웃
		case "/Client/LogOut.do":
		case "/LogOut.do":
			app = request.getServletContext();
			app.removeAttribute("id1");
			response.sendRedirect("/EAT-iT/main.jsp");
			break;

		// 회원가입
		case "/Client/ClientInsert.do":
			h1 = new ClientLoginInsert();
			try {
				h1.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		// ID 중복체크
		case "/Client/IdCheck.do":
			h1 = new ClientIdCheck();
			try {
				h1.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;

		// 회원id찾기
		case "/Client/ClientFindId.do":
			h1 = new ClientFindId();
			try {
				h1.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;

		// 회원pw찾기
		case "/Client/ClientFindPw.do":
			h1 = new ClientFindPw();
			try {
				h1.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;

		// 회원정보보기
		case "/Client/ClientOneView.do":
		case "/ClientOneView.do":
			h1 = new ClientOneView();
			try {
				h1.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;

		// 회원정보삭제
		case "/ClientDelete.do":
			h1 = new ClientDelete();
			try {
				h1.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;

		// 회원정보 업데이트
		case "/ClientUpdate.do":
			h1 = new ClientUpdate();
			try {
				h1.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;

		// 회원 전체보기(관리자용)
		case "/ClientAllView.do":
			h1 = new ClientAllView();
			try {
				h1.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;

		// 회원 삭제하기(관리자용)
		case "/ClientDeleteManager.do":
			h1 = new ClientDeleteManager();
			try {
				h1.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;

		// 찜목록 보기
		case "/Client/ClientDibsListView.do":
		case "/ClientDibsListView.do":
			h1 = new ClientDibsListView();
			try {
				h1.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;

		// 찜목록 삭제
		case "/ClientDibsListDelete.do":
			h1 = new ClientDibsListDelete();
			try {
				h1.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
//---------------------------------------- 서브별 컨트롤러

		case "/Mutual_allinfo_add.do":
			w1 = new WavaMutual_allinfo_add();

			try {
				w1.wava(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

			rd1 = request.getRequestDispatcher("subpage/locationsub.jsp");
			rd1.forward(request, response);

			break;
		case "/Mutual_allinfo_kind.do":
			w1 = new WavaMutual_allinfo_kind();

			try {
				w1.wava(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			rd1 = request.getRequestDispatcher("subpage/kindssub.jsp");
			rd1.forward(request, response);

			break;

		case "/Mutual_allinfo_review.do":
			w1 = new WavaMutual_allinfo_review();

			try {
				w1.wava(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			rd1 = request.getRequestDispatcher("subpage/reviewsub.jsp");
			rd1.forward(request, response);
			break;
			
		case "/Mutual_allinfo_search.do":
			w1 = new WavaMutual_allinfo_search();

			try {
				w1.wava(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			rd1 = request.getRequestDispatcher("subpage/Overallsub.jsp");
			rd1.forward(request, response);
			break;
			
//			-----------------------------------(희경)
		case "/detail.do":
			h1 = new DetailAllView();
			try {
				h1.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			rd1 = request.getRequestDispatcher("detail.jsp");
			rd1.forward(request, response);
			break;

		case "/reviewRegister.do":
			h1 = new ReviewRegister();
			try {
				h1.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			String mutual = URLEncoder.encode((String) request.getAttribute("mutual"), "UTF-8");
			response.sendRedirect("detail.do?mutual=" + mutual);
			break;

		case "/reviewDelete.do":
			h1 = new ReviewDelete();
			try {
				h1.execute(request, response);
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			String mutual2 = URLEncoder.encode((String) request.getAttribute("mutual"), "UTF-8");
			response.sendRedirect("./detail.do?mutual=" + mutual2);
			break;

		case "/Overallserve.do":
			h1 = new DetailServeView2();
			try {
				h1.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			rd1 = request.getRequestDispatcher("subpage/Overallsub.jsp");
			rd1.forward(request, response);
			break;

		default:
			response.sendRedirect("ErrorPage.jsp");
			break;

		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
