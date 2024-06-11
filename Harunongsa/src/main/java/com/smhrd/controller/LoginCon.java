package com.smhrd.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemDAO;
import com.smhrd.model.MemDTO;
/**
 * Servlet implementation class LoginProgram
 */
@WebServlet("/LoginProgram")
public class LoginCon extends HttpServlet {
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      System.out.println("[LoginProgram]");
      
      // 1. post방식 디코딩
      request.setCharacterEncoding("UTF-8");
      
      // 2. 데이터 가져오기
      String memberID = request.getParameter("memberID");
      String password = request.getParameter("password");
      
      System.out.println("memberID : "+memberID);
      System.out.println("password : "+password);
      
      // 3. DTO로 묶기
      MemDTO dto = new MemDTO(memberID, password);
      
      // 4. 로그인 가능한 login메소드 호출
      String name = new MemDAO().login(dto);
      
      
      // 5. 실행 결과에 따라 페이지 이동
      String moveURL;
      if(name != null) {
         System.out.println("로그인 성공");
         // 쿼리스트링방식을 통해서 name값 전송
         // 한글 데이터 전송시 인코딩 필수!
         // URLEncoder.encode("인코딩할 값", "인코딩 방식")
         // moveURL = "LoginSuccess.jsp?name="
         // +URLEncoder.encode(name, "UTF-8");
         
         // session을 통해서 name값 유지
         moveURL = "Main.jsp";
         
         HttpSession session = request.getSession();
         session.setAttribute("name", name);
         session.setAttribute("memberid", memberID);
         
      }else {
         System.out.println("로그인 실패");
         moveURL = "LoginFail.html";
      }
      
      response.sendRedirect(moveURL);
   }

}