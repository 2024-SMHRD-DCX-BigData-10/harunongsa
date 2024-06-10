<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그아웃 확인</title>
    <style>
        #root {
            background-image: url(https://images.unsplash.com/photo-1617957743162-76ab3199a672?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            height: 100vh;
            background-size: cover;
        }

        .container {
            align-items: center;
            display: flex;
            justify-content: center;
            background-position: 50%;
            background-repeat: no-repeat;
            background-size: contain;
            height: 100vh;
            text-align: center;
            width: 420px;
            padding: 0px;
            margin: 0px;
            height: 100vh;
        } 

        .wrapper {
            align-items: center;
            display: flex;
            justify-content: center;
            background-color: #ffffff;
            border: 5px solid #ffffff;
            flex-direction: column;
            background-color: #FCFCFC;
            height: 100vh;
        }

        .content {
            text-align: center;
            background-color: white;
        }

        .container {
            width: 422px;
            background-color: white;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        
            text-align: center;
        }

        .logout-confirmation {
            background-color:  #BEDC52;
            color: white;
            padding: 20px;
            border-radius: 20px;
            margin: 20px 0;

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
    </style>
</head>

<body>
    <div id="root">
        <div class="container">
            <div class="wrapper">
                <div class="content">
                    <div class="logout-confirmation">
                        <p>회원탈퇴 하시겠습니까?</p>
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

        </div>
    </div>
</body>

</html>