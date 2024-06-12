package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemDAO;
import com.smhrd.model.MemDTO;

/**
 * Servlet implementation class UserdeleteCon
 */
@WebServlet("/UserdeleteCon")
public class DeleteCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[DeleteCon]");
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		
		session.removeAttribute("name");
		session.removeAttribute("memberID");
		
		String memberID = request.getParameter("memberID");
		String password = request.getParameter("password");
		
		MemDTO dto = new MemDTO(memberID, password);
		
		int row = new MemDAO().delete(dto);
		
		// 실행결과 확인
		if(row >0){
			System.out.println("삭제성공");
			
		}else {
			System.out.println("삭제실패");
		}
		
		// 페이지 이동
		
		String moveURL;
		
		moveURL = "login.jsp";
	}

}
