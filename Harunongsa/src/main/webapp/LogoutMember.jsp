<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>로그아웃</title>
   <style>


*{box-sizing: border-box;}
.container {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    background-color: white;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
    max-width: 420px;
    margin: 0 auto;
    padding: 0;
    width: 420px;
    height: 100vh;
}

.logout-confirmation {
    background-color: #28a745;
    color: white;
    padding: 20px;
    border-radius: 20px;
    margin: 20px 0;
    width: 250px;

    
}

.logout-confirmation p {
    margin: 0;
    font-size: 16px;
}

.buttons {
    margin-top: 10px;
    display: flex;
    justify-content: space-around;
}

button {
    background-color: transparent;
    border: none;
    color: white;
    font-size: 16px;
    cursor: pointer;
}

.actions {
    margin-top: 20px;
}

.action-text {
    font-size: 14px;
    color: #666;
    margin-top: 10px;
    cursor: pointer;
}
body {
            background-image: url(https://images.unsplash.com/photo-1617957743162-76ab3199a672?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D);
            margin: 0;
            padding: 0;
            display: flex;
            /* 컨테이너 상하 정렬 */
            justify-content: center;
            /* 컨테이너 좌우 정렬 */
            align-items: center;
            /* height: 100vh; */
            /* 웹브라우저 높잇값을 기준으로 영역의 크기가 정해짐 */
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
                height: 100vh;
    background-size: cover;
        }

        

      
   </style>
</head>
<body>
    <div id="root">
    <div class="container">
        
        <div class="logout-confirmation">
            <p>로그아웃 하시겠습니까?</p>
            <div class="buttons">
            
            <a href="Login.jsp" style="hidden;text-decoration:none;">
<button class="yes">예</button>
</a>
                
                
                <a href="MyPage.jsp" style="hidden;text-decoration:none;">
   <button class="no">아니오</button>
</a>
             
            </div>
        </div>
       
    </div>
</div>
</body>
</html>