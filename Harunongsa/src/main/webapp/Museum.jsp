<%@ page import="java.util.List"%>
<%@ page import="com.smhrd.model.CropFesDAO"%>
<%@ page import="com.smhrd.model.CropFesDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>전라남도 농업박물관 교육체험 리스트</title>
    <style>
        * {
            box-sizing: border-box;
        }
        body {
            background-image: url('https://images.unsplash.com/photo-1617957743162-76ab3199a672?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
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
        table {
            width: auto;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        thead {
            background-color: #BEDC52;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: center;
        }
        tbody tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .create-button {
            background-color: #BEDC52;
            color: black;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 15px;
            margin-bottom: 20px;
            transition: background-color 0.3s ease;
        }
        .create-button:hover {
            background-color: #6aae66;
        }
        .container {
            width: 100%;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            overflow-y: visible;
            min-height: 880px;
            max-width: 420px;
            margin: 0 auto;
            padding: 0;
            height: auto;
        }
        .wrapper {
            align-items: center;
            display: flex;
            justify-content: center;
            background-color: #ffffff;
            border: 5px solid #ffffff;
            flex-direction: column;
            height: auto;
            background-color: #ffffff;
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
            background-color: #fff;
            border-bottom: 1px solid #e0e0e0;
        }
        .header h1 {
            font-size: 20px;
            margin: 0;
        }
        .header .icon, .menu {
            font-size: 20px;
        }
        table {
            font-size: 15px;
        }
        .content {
            padding: 20px;
        }
    </style>
</head> 
<body>
    <div class="container">
        <div class="header">
            <div class="menu">☰</div>
            <h1>전라남도 농업박물관 교육체험</h1>
            <a href="Notify.jsp" style="hidden;text-decoration:none;">
                <div class="icon">🔔</div>
            </a>
        </div>
        <div class="content">
            <table>
                <thead>
                    <tr>
                        <th>프로그램명</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- DAO를 사용하여 축제 데이터를 조회하여 리스트에 표시 -->
                    <%
                        CropFesDAO dao = new CropFesDAO(); // DAO 객체 생성
                        List<CropFesDTO> fesList = dao.allCropFes(); // 모든 축제 데이터 조회
                        for (CropFesDTO fes : fesList) { // 조회된 데이터를 반복문을 통해 출력
                    %>
                    <tr>
                        <td>
                            <!-- 프로그램명 클릭시 해당 프로그램의 세부 정보를 MuseumInfo.jsp로 이동 -->
                            <a style="color:black;text-decoration: none;" href="MuseumInfo.jsp?program_name=<%= fes.getProgram_name() %>"><%= fes.getProgram_name() %></a>
                        </td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
