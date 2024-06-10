<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>eco activity</title>
    <style>
        /* styles.css */
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
           
        }

        .wrapper {
            align-items: center;
            display: flex;
            justify-content: center;
            background-color: #ffffff;
            border: 5px solid #ffffff;
            flex-direction: column;
            height: 100vh;
            padding: 30px;
            width: 380px;
            background-color: #FCFCFC;
        }

        .content {
            text-align: center;
        }



        h1 {
            margin-top: 0;
            color: #555;
        }

        p {
            margin: 10px 0;
            color: #666;
        }

        h2 {
            color: #555;
            margin-top: 20px;
        }

        ol {
            text-align: left;
            padding-left: 20px;
            color: #666;
        }

        .button-container {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }

        .action-button {
            background-color:#BEDC52;
            color: white;
            border: none;
            border-radius: 20px;
            padding: 15px 30px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
            width: 185px;

        }

        .action-button:hover {
            background-color:#aac059;
        }
    </style>
</head>

<body>

    <div id="root">
        <div class="container">
            <div class="wrapper">
                <div class="content">

                    <h1>eco activity</h1>
                    <p>친환경 농작물 기르기 활동</p>
                    <p>참여하시면 씨앗을 보내드립니다</p>
                    <p>준비물 : 재활용 페트병, 스티로폼, 테이크아웃 플라스틱 컵 등등… 흙</p>
                    <h2>참여 방법</h2>
                    <ol>
                        <li>재활용 PET, 스티로폼 등에 흙을 담아 파종까지 준비된 사진을 찍어 인증 게시판에 올려주세요</li>
                        <li>하루농사에서 씨앗을 보내드립니다</li>
                        <li>무럭무럭 성장한 씨앗을 자랑 게시판에 올려보세요!</li>
                    </ol>
                    <div class="button-container">
                        <button class="action-button" onclick="location.href='#'">씨앗 받으러 가기</button>
                        <button class="action-button" onclick="location.href='#'">자랑하러 가기</button>
                    </div>

                </div>
            </div>
        </div>
    </div>
</body>

</html>