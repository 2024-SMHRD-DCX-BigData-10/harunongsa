package com.smhrd.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.BufferedReader;
import java.io.IOException;
import org.json.JSONObject;
import org.apache.ibatis.session.SqlSessionFactory;
import com.smhrd.model.MemDTO;
import com.smhrd.model.MemDAO;
import com.smhrd.util.MyBatisUtil; // MyBatisUtil 클래스 임포트

@WebServlet("/KakaoCon")
public class KakaoCon extends HttpServlet {
    private SqlSessionFactory sqlSessionFactory = MyBatisUtil.getSqlSessionFactory();
    private MemDAO memDAO = new MemDAO(); // MemDAO 인스턴스 생성

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        StringBuilder sb = new StringBuilder();
        BufferedReader reader = request.getReader();
        String line;
        while ((line = reader.readLine()) != null) {
            sb.append(line);
        }
        String jsonData = sb.toString();

        // 이메일 추출 (JSON 파싱)
        JSONObject jsonObject = new JSONObject(jsonData);
        String email = jsonObject.getString("email");

        // DB에서 이메일 확인 및 처리
        MemDTO user = memDAO.getUserByEmail(email); // 수정된 부분
        HttpSession session = request.getSession();
        JSONObject responseJson = new JSONObject();

        if (user != null) {
            // 이메일이 존재하는 경우 로그인 처리
            session.setAttribute("user", user);
            session.setAttribute("memberid", user.getMemberID());
            responseJson.put("status", "login");
            responseJson.put("message", "로그인 성공");
        } else {
            // 이메일이 존재하지 않는 경우 회원가입 페이지로 이동
            session.setAttribute("email", email);
            responseJson.put("status", "signup");
            responseJson.put("message", "회원가입 페이지로 이동");
        }

        // 응답 설정
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(responseJson.toString());
    }
}
