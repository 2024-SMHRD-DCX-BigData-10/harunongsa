<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>회원 정보 수정 페이지</title>
  <style>
        * {
            box-sizing: border-box;
        }

        body {
            background-image: url(https://images.unsplash.com/photo-1617957743162-76ab3199a672?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D);
            margin: 0;
            padding: 0;
            display: flex;
            /* 컨테이너 상하 정렬 */
            justify-content: center;
            /* 컨테이너 좌우 정렬 */
            align-items: flex-start;
            /* height: 100vh; */
            /* 웹브라우저 높잇값을 기준으로 영역의 크기가 정해짐 */
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            min-height: 100vh;
            background-size: cover;
        }


        .container {

            background-color: white;

            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);

            height: 880px; 
            max-width: 420px;
            width: 420px;
            margin: 0 auto;
            padding: 0;
        }

        header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 20px;

        }

        .menu-icon {
            font-size: 20px;
            cursor: pointer;
            color: black;
        }

        h1 {
            font-size: 20px;
            margin: 0;


        }

        .form-group {
            margin-bottom: 15px;
            margin: 10px;

        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input {
            width: calc(100% - 20px);
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }

        button {
            width: 200px;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 15px;

            display: block;
            margin: 10px auto;
        }

        button:hover {
            background-color: #218838;
        }

        #box {
            margin: 10px;
        }
    </style>
</head>
<body>
   
    <div class="container">
     <div id="box">
        <header>
        
        <a href="MyPage.jsp" style="hidden;text-decoration:none;">
<div class="menu-icon">☰</div>
</a>
            
            <h1>회원정보 수정</h1>
            <div></div>
        </header>
        <form>
            <div class="form-group">
                <label for="current-password">기존 비밀번호</label>
                <input type="password" id="current-password" placeholder="내용을 입력해주세요">
            </div>
            <div class="form-group">
                <label for="new-password">비밀번호</label>
                <input type="password" id="new-password" placeholder="내용을 입력해주세요">
            </div>
            <div class="form-group">
                <label for="name">이름</label>
                <input type="text" id="name" placeholder="내용을 입력해주세요">
            </div>
            <button type="submit">수정하기</button>
        </form>
    </div>
</div>
</body>
</html>