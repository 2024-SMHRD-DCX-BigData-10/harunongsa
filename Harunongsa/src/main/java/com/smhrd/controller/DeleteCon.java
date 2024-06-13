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

@WebServlet("/DeleteCon")
public class DeleteCon extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        System.out.println("[DeleteCon]");
        
        request.setCharacterEncoding("UTF-8");
        
        HttpSession session = request.getSession();
        
        String memberID = request.getParameter("memberID");
        String password = request.getParameter("password");
        
        MemDTO dto = new MemDTO(memberID, password);
        
        int row = new MemDAO().delete(dto);
        
        // 실행결과 확인
        String moveURL;
        if(row > 0) {
            System.out.println("삭제성공");
            session.invalidate(); // 세션 무효화
            moveURL = "Login.jsp";
        } else {
            System.out.println("삭제실패");
            moveURL = "Login.jsp"; // 삭제 실패 시 이동할 페이지
        }
        
        // 페이지 이동
        response.sendRedirect(moveURL); // 페이지 이동 추가
    }
}
