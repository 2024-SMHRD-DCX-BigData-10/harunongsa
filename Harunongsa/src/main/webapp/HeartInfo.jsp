<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>찜목록</title>
    <style>
        * {
            box-sizing: border-box;
        }

        .headerN {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
            background-color: #fff;
            border-bottom: 1px solid #e0e0e0;
        }

        .containerN {
            width: 100%;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            overflow-y: visible;
            max-width: 420px;
            margin: 0 auto;
            padding: 0;
            height: 880px;
        }

        .headerN h1 {
            font-size: 20px;
            margin: 0;
        }

        .headerN .icon,
        .menu {
            font-size: 20px;
        }

        .contentN {
            padding: 20px;
            height: auto;
            overflow-y: visible;
            width:100%;
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
            overflow-y: visible;
        }

        .card {
            display: flex;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            overflow-y: visible;
        }

        .card img {
            width: 150px;
            height: auto;
            object-fit: cover;
        }

        .card-content {
            padding: 15px;
        }

        .card-content h2 {
            margin: 0 0 10px;
            font-size: 15px;
            color: #555;
        }

        .card-content p {
            margin: 5px 0;
            font-size: 15px;
            color: #777;
        }

        .card-content p strong {
            color: #333;
        }

        img {
            border-top-left-radius: 8px;
            border-bottom-left-radius: 8px;
        }

        h1, h2 {
            font-family: 'Noto Serif KR';
        }
    </style>
</head>

<body>
    <div class="containerN">
        <div class="headerN">
            <a href="MyPage.jsp" style="hidden;text-decoration:none;color:black;">
                <div class="menu">☰</div>
            </a>
            <h1>찜 농작물</h1>
            <a href="Notify.jsp" style="hidden;text-decoration:none;">
                <div class="icon">🔔</div>
            </a>
        </div>
        <div class="contentN" 
        >
            <c:forEach var="event" items="${favoriteEvents}">
                <a href="./InfoDetail.jsp" style="text-decoration: none; color: black;">
                    <section class="card">
                        <img src="https://via.placeholder.com/150" alt="Crop Image"> <!-- 실제 이미지 경로로 대체 필요 -->
                        <div class="card-content">
                            <h2>찜한 농작물</h2>
                            <p><strong>${event.date}</strong></p>
                            
                        </div>
                    </section>
                </a>
            </c:forEach>
                  <div class="contentN">
                    
                        <section class="card">
                            <img src="https://www.nongnet.or.kr/image.do?file=upload/pumImage/352/20230414183737_586690368.png&size=894x612&pos=C"
                                alt="Profile Picture" alt="Bean sprouts">
                            <div class="card-content">
                                <h2>파슬리</h2>
                                <p><strong>이달의 추천 농작물</strong></p>
                                <p>#함께_키워볼까요?</p>
                            </div>
                        </section>
                    
                </div>
            
        </div>
    </div>
</body>

</html>