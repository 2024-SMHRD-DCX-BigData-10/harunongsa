package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.GardenDAO;
import com.smhrd.model.GardenDTO;

@WebServlet("/GardenCon")
public class GardenCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 파일 업로드를 하기 위한 변수 설정
		// 1. request 객체
		// 2. 파일을 저장할 경로(String)

		String savePath = request.getServletContext().getRealPath("file");

		System.out.println("savePath : " + savePath);

		// 3. 파일 최대 크기 지정
		int maxSize = 1024 * 1024 * 10;

		// 4. 인코딩 방식 (String)
		String encoding = "UTF-8";

		// 5. 파일 이름 중복 제거
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();

		// 파일 업로드 객체 -> multipart

		MultipartRequest multi;

		multi = new MultipartRequest(request, savePath, maxSize, encoding, rename);

		// 요청 데이터 받아오기

		int certidx = Integer.parseInt(multi.getParameter("certidx"));
		String title = multi.getParameter("title");
		String content = multi.getParameter("content");
		String img = multi.getParameter("img");
		String issecret = multi.getParameter("issecret");
		String desiredseed = multi.getParameter("desiredseed");
		String recipientname = multi.getParameter("recipientname");
		String deliaddr = multi.getParameter("deliaddr");
		String recipientphone = multi.getParameter("recipientphone");
		String memberid = multi.getParameter("memberid");

		GardenDTO dto = new GardenDTO(certidx, title, content, img, issecret, desiredseed, recipientname, deliaddr,
				recipientphone, memberid);
		System.out.println(dto.toString());

		int row = new GardenDAO().writeGarden(dto);

		if (row > 0) {
			System.out.println("게시글 작성 성공");
		} else {
			System.out.println("게시글 작성 실패");
		}

	}

}
