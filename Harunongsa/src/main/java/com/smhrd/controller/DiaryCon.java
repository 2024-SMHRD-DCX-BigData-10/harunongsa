package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.DiaryDTO;

@WebServlet("/BoardCon")
public class DiaryCon extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 파일 업로드를 하기 위한 변수 설정
		// 1. request 객체
		// 2. 파일을 저장할 경로(String)
		
		String savePath = request.getServletContext().getRealPath("file");
		
		System.out.println("savePath : " + savePath);
		
		// 3. 파일 최대크기 지정
		int maxSize = 1024 * 1024 * 10;
		
		// 4. 인코딩 방식 (String)
		String encoding="UTF-8";
		
		// 5. 파일 이름 중복 제거
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		
		// 파일 업로드 객체 -> multipart
		MultipartRequest multi;
		
		multi = new MultipartRequest(request, savePath, maxSize, encoding, rename);
		// 요청 데이터 받아오기
		
		String memberid = multi.getParameter("memberid");
		String diarytitle = multi.getParameter("diarytitle");
		String diarycontent = multi.getParameter("diarycontent");
		String diaryimg1 = multi.getParameter("diaryimg1");
		String diaryimg2 = multi.getParameter("diaryimg2");
		
		
		DiaryDTO dto = new DiaryDTO(memberid, diarytitle, diarycontent, diaryimg1, diaryimg2);
		
	}

}
