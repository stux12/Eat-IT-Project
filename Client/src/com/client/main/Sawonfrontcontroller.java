package com.client.main;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.client.sub.ExecuteGetAllInfo;
import com.client.sub.ExecuteGetOneInfo;
import com.client.sub.ExecuteImpl;
import com.client.sub.ExecuteTelDelete;
import com.client.sub.ExecuteTelInsert;
import com.client.sub.ExecuteTelUpdate;

import DB_DAO.DAO;
import DB_VO.VO;

@WebServlet("*.do")
//.do는 전부 여기로 오게 하고싶다 그럴려면 *.do로 하면됨 do는 무조건 do인거아님 하고싶은걸로 해도됨
//.do붙은것은 모두 이곳으로 찾아오게 됨
public class Sawonfrontcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Sawonfrontcontroller() {
        super();
    }

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	//post일경우 한글처리를 위해
    	request.setCharacterEncoding("UTF-8");
    	response.setCharacterEncoding("UTF-8");
    	
    	//서블릿 가동은 http://.../서블릿명
    	//이걸 착안하여 구분을 해야한다.
    
    	//이 방법이 제일 정확해서 이걸로 사용함
    	//참고 goni9071.tistory.com/354
    	System.out.println(request.getRequestURI()); //프로젝트명 + 파일명
    	System.out.println(request.getContextPath()); //프로젝트명
    	
    	
    	
    	// 위 두개를 빼면 파일명만 나오니 substring을 사용해서 한다
    	// substring(1) 인자1개의 의미는 ~부터 끝까지!!
    	String c = request.getRequestURI().substring(request.getContextPath().length());
    	
    	System.out.println(request.getServletPath());
    	System.out.println(c); //위방법보다는 정확한방법으로 사용하기
    	
    	String str = null;
    	ExecuteImpl h1 = null; //Implements : 인터페이스로부터 상속받을때
    	//상속 A extends B		A implements B
    	//			(B는 클래스)		(B는 인터페이스)
    	
    	
    	// 들어온 정보가 어떤건지 판별하기 위해
    	switch (c) {
    	// 전체검색
		case "/getAllInfo.do": 
				
			//원래는 h1 = new HaevaImpl(); 이런형식이 기본
			h1 = new ExecuteGetAllInfo();//클래스개념 상속받은 자식임!! 부모것으로 자식을 가르키는것
			try {
				h1.execute(request, response); //child에 있는 자식메소드임
				//이경우 execute가 2개인데 자식쪽을 찾아감!!
			}catch (Exception e) {
				e.printStackTrace();
			}
			str = "getAllinfo.jsp";
			
			break;

			
		//하나검색
		case "/telSearchone.do" : 
			
			h1 = new ExecuteGetOneInfo();
			try {
				h1.execute(request, response);
			}catch (Exception e) {
				e.printStackTrace();
			}
						
			str = "getOneinfo.jsp";
			break;
		
		// 정보입력
		case "/Telinsert.do" :
			
			h1 = new ExecuteTelInsert();
			try {
				h1.execute(request, response);
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			str = "result.jsp";
			break;
			
		// 정보삭제
		case "/TelDelete.do" :
			h1 = new ExecuteTelDelete();
			try {
				h1.execute(request, response);
			}catch (Exception e) {
				e.printStackTrace();
			}
			str = "result.jsp";
			break;
		
		// 정보 업데이트
		case "/Telupdate.do" :
			
			h1 = new ExecuteTelUpdate();
			try {
				h1.execute(request, response);
			}catch (Exception e) {
				e.printStackTrace();
			}
		
			str = "result.jsp";
			break;
		
		
		default:
			response.sendRedirect("ErrorPage.jsp");
			break;
		}
    
    	
		RequestDispatcher rd1 = request.getRequestDispatcher(str);
		rd1.forward(request, response);
    	    	
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
