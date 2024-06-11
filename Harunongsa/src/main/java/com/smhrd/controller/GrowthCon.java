package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.GrowthDAO;
import com.smhrd.model.GrowthDTO;

@WebServlet("/GrowthCon")
public class GrowthCon extends HttpServlet {
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

		int growthpostid = Integer.parseInt(multi.getParameter("growthpostid"));
		String title = multi.getParameter("title");
		String content = multi.getParameter("content");
		String image = multi.getParameter("image");
		String seedname = multi.getParameter("seedname");
		String memberid = multi.getParameter("memberid");

		GrowthDTO dto = new GrowthDTO(growthpostid, title, content, image, seedname, memberid);

		int row = new GrowthDAO().writeGrowth(dto);

		if (row > 0) {
			System.out.println("게시글 작성 성공");
		} else {
			System.out.println("게시글 작성 실패");
		}

	}

}
