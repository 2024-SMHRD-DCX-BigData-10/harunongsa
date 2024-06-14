<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인</title>
<style>
        * {
            box-sizing: border-box;
        }

        /* div {
            display: block;
            unicode-bidi: isolate;
        } */

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
            align-items: center;
            display: flex;
            justify-content: center;
            background-position: 50%;
            background-repeat: no-repeat;
            background-size: contain;
            height: 880px; 

            text-align: center;

            max-width: 420px;
            margin: 0 auto;
            padding: 0;


        }

        .wrapper {
            width: 420px;
            align-items: center;
            display: flex;
            justify-content: flex-start;
            background-color: #ffffff;
            border: 5px solid #ffffff;
            flex-direction: column;
            height: 880px; 

            background-color: #FCFCFC;
        }

        .content {
            text-align: center;
        }

        .input {
            margin-top: 5px;
            margin-bottom: 5px;
            border-radius: 10px;
            border: 0.1px solid #BEDC52;
            height: 35px;
            width: 300px;
            /* text-align: center; */
            padding: 20px;
        }

        .btn1 {
            margin-top: 25px;
            background-color: #BEDC52;
            border-radius: 7px;
            border: 0px solid #ffffff;
            color: #fff;
            height: 45px;
            width: 183px;
            margin-bottom: 3px;
            font-size: 13px;
            font-family: 'Noto Sans KR';
        }

        .btn {
            margin-top: 7px;
            background-color: #BEDC52;
            border-radius: 8px;
            border: 0px solid #ffffff;
            color: #fff;
            height: 45px;
            width: 183px;
            margin-bottom: 7px;
            font-size: 13px;
            font-family: 'Noto Sans KR';

        }

        h1 {
            font-size: 30px;
            font-family: 'Noto Serif KR';
        }

        .input {
            font-size: 13px;
            font-family: 'Noto Sans KR';
        }
        
    </style>
</head>
<body>
    <div id="root">
        <div class="container">
            <div class="wrapper">
                <div class="content">
                    <h1 class="Login">로그인</h1>
                    <form action="LoginProgram" method="post">
                        <input class="input" name="memberID" type="text" placeholder="아이디를 입력해주세요">
                        <br>
                        <input class="input" name="password" type="text" placeholder="비밀번호를 입력해주세요">
                        <br>
                        <input class="btn1" type="submit" value="로그인">
                        <br>

                        <button type="button" class="btn" onclick="location.href = 'Join.jsp'">회원가입</button>

                        <!-- button type="button" class="btn"> <a style="text-decoration:none;color:white;" href="./Join.jsp">회원가입</a> /button -->

                        <br>
                        <a href="javascript:kakaoLogin();">
                            <img src="https://developers.kakao.com/tool/resource/static/img/button/login/full/ko/kakao_login_medium_narrow.png" alt="카카오 로그인 버튼">
                        </a>
                        <br>
                        <button type="button" class="btn"><a style="text-decoration:none;color:white;" href="./IdPwSearch.jsp">아이디/패스워드 찾기</a></button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
 <script>
    window.Kakao.init("116b838d93ac0e623fe6763d538b5b2e");
    
    function kakaoLogin() {
        window.Kakao.Auth.login({
            scope: 'profile_nickname, profile_image, account_email',
            success: function(authObj) {
                console.log(authObj);
                window.Kakao.API.request({
                    url: '/v2/user/me',
                    success: res => {
                        const kakao_account = res.kakao_account;
                        console.log(kakao_account);

                        // AJAX 요청을 통해 서버로 데이터 전송
                        const xhr = new XMLHttpRequest();
                        xhr.open("POST", "KakaoCon");
                        xhr.setRequestHeader("Content-Type", "application/json");
                        xhr.onreadystatechange = function() {
                            if (xhr.readyState === 4 && xhr.status === 200) {
                                const response = JSON.parse(xhr.responseText);
                                console.log("서버로 데이터 전송 성공");
                                if (response.status === "login") {
                                    // 로그인 성공 처리
                                    console.log(response.message);
                                    // 로그인 후 페이지 이동 (예: 메인 페이지)
                                    window.location.href = "Main.jsp";
                                } else if (response.status === "signup") {
                                    // 회원가입 페이지로 이동
                                    console.log(response.message);
                                    window.location.href = "Join.jsp";
                                }
                            }
                        };
                        const data = JSON.stringify({ email: kakao_account.email });
                        xhr.send(data);
                    }
                });
            }
        });
    }
</script>

</body>
</html>