package com.smhrd.controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.GrowthDAO;
import com.smhrd.model.GrowthDTO;

@WebServlet("/GrowthCon")
public class GrowthCon extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 세션에서 사용자 ID를 가져옵니다.
        HttpSession session = request.getSession();
        String memberid = (String) session.getAttribute("memberid");

        // 사용자 ID가 없거나 세션이 만료된 경우 예외를 발생시킵니다.
        if (memberid == null || memberid.isEmpty()) {
            throw new ServletException("User is not logged in or session expired");
        }

        // 파일 업로드를 하기 위한 변수 설정
        // 파일을 저장할 경로(String)
        String savePath = request.getServletContext().getRealPath("File");
        System.out.println("savePath : " + savePath);

        // savePath가 null인지 확인하고 예외 처리
        if (savePath == null) {
            throw new ServletException("Save path is null. Check the context path configuration.");
        }

        // 파일 저장 경로가 존재하지 않으면 디렉토리를 생성합니다.
        File uploadDir = new File(savePath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }

        // 파일 최대 크기 지정
        int maxSize = 1024 * 1024 * 10;

        // 인코딩 방식 (String)
        String encoding = "UTF-8";

        // 파일 이름 중복 제거
        DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();

        // 파일 업로드 객체 -> multipart
        MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, rename);

        // 요청 데이터 받아오기
        String growthpostidStr = multi.getParameter("growthpostid");
        int growthpostid = 0;
        if (growthpostidStr != null && !growthpostidStr.isEmpty()) {
            try {
                growthpostid = Integer.parseInt(growthpostidStr);
            } catch (NumberFormatException e) {
                growthpostid = 0;
            }
        }

        String title = multi.getParameter("title");
        if (title == null || title.isEmpty()) {
            throw new ServletException("Title cannot be null or empty");
        }

        String content = multi.getParameter("content");
        if (content == null || content.isEmpty()) {
            throw new ServletException("Content cannot be null or empty");
        }

        String image = multi.getFilesystemName("image");
        if (image == null || image.isEmpty()) {
            throw new ServletException("Image cannot be null or empty");
        }

        String seedname = multi.getParameter("seedname");
        if (seedname == null || seedname.isEmpty()) {
            throw new ServletException("Seed name cannot be null or empty");
        }

        // DTO 객체를 생성하여 게시글 정보를 설정합니다.
        GrowthDTO dto = new GrowthDTO(growthpostid, title, content, image, seedname, memberid);

        // DAO 객체를 사용하여 게시글을 데이터베이스에 저장합니다.
        int row = new GrowthDAO().writeGrowth(dto);

        // 게시글 작성 성공 여부를 콘솔에 출력합니다.
        if (row > 0) {
            System.out.println("게시글 작성 성공");
        } else {
            System.out.println("게시글 작성 실패");
        }

        // 게시글 작성 후 게시판 페이지로 리다이렉트합니다.
        response.sendRedirect("EcoGrowBoard.jsp");
    }
}
