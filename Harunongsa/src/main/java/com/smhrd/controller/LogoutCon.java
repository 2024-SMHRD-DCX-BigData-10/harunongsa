package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

/**
 * Servlet implementation class LogoutCon
 */
@WebServlet("/LogoutCon")
public class LogoutCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[LogoutCon]");
		
		HttpSession session = request.getSession();
		
		session.removeAttribute("name");
		
		String moveURL = "Login.jsp";
		
		response.sendRedirect(moveURL);
	}

}
