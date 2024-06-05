package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MemDAO;
import com.smhrd.model.MemDTO;

@WebServlet("/JoinProgram")
public class JoinCon extends HttpServlet {
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      // Controller : View/Model에서 전달받은 데이터 처리 및 가공
      //            : View와 Model의 중간역할
      
      System.out.println("[JoinProgram]");
      
      // 1. post방식 디코딩
      request.setCharacterEncoding("UTF-8");
      
      // 2. 데이터 가져오기
      String memberID = request.getParameter("memberID");
      String password = request.getParameter("password");
      String name = request.getParameter("name");
      String phoneNumber = request.getParameter("phoneNumber");
      String email = request.getParameter("email");
      String preference = request.getParameter("preference");
      String memberType = request.getParameter("memberType");
      String joinedAt = request.getParameter("joinedAt");
      
      System.out.println("memberID : "+ memberID);
      System.out.println("password : "+password);
      System.out.println("name : "+name);
      System.out.println("phoneNumber : "+phoneNumber);
      System.out.println("email : "+email);
      System.out.println("preference : "+preference);
      
      // 3. DTO로 묶어주기
      MemDTO dto = new MemDTO(memberID, password, name, phoneNumber, email, preference, memberType, joinedAt);
      
      // 4. 데이터를 DB에 넣어줄 join메소드 호출
      int row = new MemDAO().join(dto);
      
      // 5. 실행 결과에 따라서 페이지 이동
      String moveURL;   
      if(row > 0) {
         System.out.println("회원가입 성공");
         moveURL = "./Login.html";
      }else {
         System.out.println("회원가입 실패");
         moveURL = "JoinFail.html";
      }
      
      response.sendRedirect(moveURL);
      
   }

}