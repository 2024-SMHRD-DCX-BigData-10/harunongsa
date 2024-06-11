package com.smhrd.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.GardenDAO;
import com.smhrd.model.GardenDTO;

@WebServlet("/GardenCon")
public class GardenCon extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // 세션에서 사용자 ID를 가져옵니다.
        HttpSession session = request.getSession();
        String memberid = (String) session.getAttribute("memberid");

        // 사용자 ID가 없거나 세션이 만료된 경우 예외를 발생시킵니다.
        if (memberid == null || memberid.isEmpty()) {
            throw new ServletException("User is not logged in or session expired");
        }

        // 서블릿 컨텍스트 경로를 가져와 출력합니다.
        String contextPath = request.getServletContext().getRealPath("/");
        System.out.println("Context Path: " + contextPath);
        
        // 파일 저장 경로를 설정합니다.
        String savePath = request.getServletContext().getRealPath("File");
        if (savePath == null) {
            throw new ServletException("Save path is null. Check the context path configuration.");
        }
        
        // 저장 경로를 출력합니다.
        System.out.println("Save Path: " + savePath);

        // 저장 경로가 존재하지 않으면 디렉토리를 생성합니다.
        File uploadDir = new File(savePath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }

        // 파일 업로드 설정: 최대 크기, 인코딩, 파일 이름 정책
        int maxSize = 1024 * 1024 * 10;
        String encoding = "UTF-8";
        DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();

        // MultipartRequest 객체를 생성하여 파일 업로드를 처리합니다.
        MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, rename);

        // certidx 파라미터를 가져와 정수로 변환합니다.
        String certidxStr = multi.getParameter("certidx");
        int certidx = 0;
        if (certidxStr != null && !certidxStr.isEmpty()) {
            try {
                certidx = Integer.parseInt(certidxStr);
            } catch (NumberFormatException e) {
                certidx = 0;
            }
        }

        // 게시글 제목을 가져와 유효성을 검사합니다.
        String title = multi.getParameter("title");
        if (title == null || title.isEmpty()) {
            throw new ServletException("Title cannot be null or empty");
        }

        // 게시글 내용을 가져와 유효성을 검사합니다.
        String content = multi.getParameter("content");
        if (content == null || content.isEmpty()) {
            throw new ServletException("Content cannot be null or empty");
        }

        // 업로드된 이미지 파일 이름을 가져옵니다.
        String img = multi.getFilesystemName("img");

        // 비밀글 여부를 설정합니다.
        String issecret = multi.getParameter("issecret") != null ? "Y" : "N";

        // 기타 게시글 정보를 가져와 유효성을 검사합니다.
        String desiredseed = multi.getParameter("desiredseed");
        if (desiredseed == null || desiredseed.isEmpty()) {
            throw new ServletException("Desired seed cannot be null or empty");
        }

        String recipientname = multi.getParameter("recipientname");
        if (recipientname == null || recipientname.isEmpty()) {
            throw new ServletException("Recipient name cannot be null or empty");
        }

        String deliaddr = multi.getParameter("deliaddr");
        if (deliaddr == null || deliaddr.isEmpty()) {
            throw new ServletException("Delivery address cannot be null or empty");
        }

        String recipientphone = multi.getParameter("recipientphone");
        if (recipientphone == null || recipientphone.isEmpty()) {
            throw new ServletException("Recipient phone cannot be null or empty");
        }

        // DTO 객체를 생성하여 게시글 정보를 설정합니다.
        GardenDTO dto = new GardenDTO(certidx, title, content, img, issecret, desiredseed, recipientname, deliaddr, recipientphone, memberid);
        System.out.println(dto.toString());

        // DAO 객체를 사용하여 게시글을 데이터베이스에 저장합니다.
        int row = new GardenDAO().writeGarden(dto);

        // 게시글 작성 성공 여부를 콘솔에 출력합니다.
        if (row > 0) {
            System.out.println("게시글 작성 성공");
        } else {
            System.out.println("게시글 작성 실패");
        }

        // 게시글 작성 후 게시판 페이지로 리다이렉트합니다.
        response.sendRedirect("EcoCertificationBoard.jsp");
    }
    

}
