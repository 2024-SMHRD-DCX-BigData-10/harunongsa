<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>친환경 활동 메인 페이지</title>
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
            background-size: cover;
            min-height: 100vh;
            /* 변경됨 */
            overflow-y: visible;
            /* 추가된 부분 */
            /* 변경됨 */

        }

        .container {


            align-items: center;
            display: flex;
            justify-content: center;
            width: 100%;
            text-align: center;
            max-width: 420px;
            height: 880px;
            overflow-y: visible;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);

        }

        .wrapper {
            background-color: beige;
            align-items: flex-start;
            display: flex;
            justify-content: flex-start;
            background-color: #ffffff;
            border: 5px solid #ffffff;
            flex-direction: column;
            height: auto;
            overflow-y: visible;
            /* 추가된 부분 */
            width: 100%;
            /* 추가됨 */
            max-width: 420px;
            /* 추가됨 */
            background-color: #ffffff;
            height: 880px
        }

        .content {

            text-align: center;
            padding: 25px;

        }



        h1 {
            margin-top: 0;
            color: #555;
            font-family: 'Noto Serif KR';

            font-size: 30px;
        }

        p {
            margin: 10px 0;
            color: #666;
            font-family: 'Noto Sans KR';
        }

        h2 {
            color: #555;
            margin-top: 20px;
            font-family: 'Noto Sans KR';
        }

        ol {
            font-family: 'Noto Sans KR';
            text-align: left;
            padding-left: 20px;
            color: #666;
        }

        .button-container {
            font-family: 'Noto Sans KR';
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }

        .action-button {
            font-family: 'Noto Sans KR';
            background-color: #BEDC52;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 15px;
            cursor: pointer;
            font-size: 15px;
            transition: background-color 0.3s ease;
            width: 155px;

        }

        .action-button:hover {
            background-color: #aac059;
        }

        #color1 {
            width: 100%;
            height: 50px;
        }
    </style>
</head>

<body>


    <div class="container">
        <div class="wrapper">
            <div class="content">
            
                    <h1>친환경 농작물 기르기 활동</h1>
                    <br>
                <p>참여하시면 씨앗을 보내드립니다!</p>
                <br>
                <p>재활용 페트병, 스티로폼, 테이크아웃 플라스틱 컵 등등을 이용하여 나만의 작은 텃밭을 만들어 보세요!</p>
                <br>
                <h2>참여 방법</h2>
                
                <ol>
                    <li>재활용 PET, 스티로폼 등에 흙을 담아 파종까지 준비된 사진을 찍어 인증 게시판에 올려주세요</li>
                    <li>하루농사에서 씨앗을 보내드립니다</li>
                    <li>무럭무럭 성장한 씨앗을 자랑 게시판에 올려보세요!</li>
                </ol>
                <br>
                <div class="button-container">
                    <a href="EcoCertificationBoard.jsp" style="hidden;text-decoration:none;">
                        <button class="action-button" onclick="location.href='#'">씨앗 받으러 가기</button>
                    </a>
                    <a href="EcoGrowBoard.jsp" style="hidden;text-decoration:none;">
                        <button class="action-button" onclick="location.href='#'">자랑하러 가기</button>

                    </a>

                </div>


            </div>
        </div>
    </div>
</body>

</html>