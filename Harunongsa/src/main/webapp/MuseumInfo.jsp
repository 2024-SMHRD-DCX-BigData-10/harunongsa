<%@ page import="com.smhrd.model.CropFesDAO"%>
<%@ page import="com.smhrd.model.CropFesDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전라남도 농업 박물관 교육체험 페이지</title>
    <style>
        * {
            box-sizing: border-box;
        }
        body {
            background-image: url(https://images.unsplash.com/photo-1617957743162-76ab3199a672?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            min-height: 100vh;
            background-size: cover;
        }
        .card {
            background: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            overflow-y: visible;
            height: auto;
            max-width: 420px;
            margin: 0 auto;
            padding: 0;
        }
        .crops-image {
            width: 100%;
            height: auto;
        }
        .content {
            padding: 25px;
            width: 420px;
            height:880px;
        }
        h1 {
            margin: 0;
            font-size: 25px;
            color: #333;
        }
        .need {
            background-color: #f4f4f4;
            padding: 10px;
            border-radius: 5px;
            margin-top: 10px;
        }
        .need p {
            margin: 0;
            font-weight: bold;
            color: #333;
        }
        .need ul {
            padding-left: 20px;
            margin: 5px 0;
            list-style-type: disc;
            font-size: 15px;
        }
    </style>
</head>
<body>
    <div class="card">
        <div class="content">
            <%
                // 프로그램명을 요청 파라미터에서 가져옴
                String programName = request.getParameter("program_name");
                // DAO 객체 생성 및 프로그램명으로 축제 데이터 조회
                CropFesDAO dao = new CropFesDAO();
                CropFesDTO fes = dao.getCropFesByProgramName(programName);
            %>
            <!-- 조회된 데이터 출력 -->
            <h1><%= fes.getProgram_name() %></h1>
            <div class="need">
                <p>행사정보</p>
                <ul>
                    <li>행사기간시작: <%= fes.getStart_date() %></li>
                    <li>행사기간끝: <%= fes.getEnd_date() %></li>
                    <li>행사시작일시: <%= fes.getStart_time() %></li>
                    <li>행사종료일시: <%= fes.getEnd_time() %></li>
                    <li>행사장소: <%= fes.getLocation() %></li>
                    <li>참가대상: <%= fes.getAudience() %></li>
                    <li>참가비_성인: <%= fes.getAdult() %></li>
                    <li>참가비_청소년: <%= fes.getTeen() %></li>
                    <li>참가비_어린이: <%= fes.getChild() %></li>
                    <li>내용: <%= fes.getDescription() %></li>
                </ul>
            </div>
            <p>출처 전라남도 농업박물관 교육체험</p>
        </div>
    </div>
</body>
</html>
