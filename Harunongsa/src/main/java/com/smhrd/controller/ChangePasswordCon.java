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

@WebServlet("/ChangePasswordCon")
public class ChangePasswordCon extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String memberID = request.getParameter("memberID");
        String oldPassword = request.getParameter("oldPassword");
        String newPassword = request.getParameter("newPassword");

        MemDAO dao = new MemDAO();
        int result = dao.updatePassword(memberID, oldPassword, newPassword);

        String moveURL;
        if (result > 0) {
            System.out.println("비밀번호 변경 성공");
            moveURL = "ChangePasswordSuccess.jsp";
        } else {
            System.out.println("비밀번호 변경 실패");
            moveURL = "ChangePasswordFail.jsp";
        }

        response.sendRedirect(moveURL);
    }
}
