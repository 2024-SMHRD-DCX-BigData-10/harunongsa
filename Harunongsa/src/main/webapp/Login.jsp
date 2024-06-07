<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>

<style>
    * {
        box-sizing: border-box;
    }

    #root {
        background-image: url(https://images.unsplash.com/photo-1493552832879-f61d5dce6c9e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D);
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
    }

    .containerlogin {
        align-items: center;
        display: flex;
        justify-content: center;
        background-position: 50%;
        background-repeat: no-repeat;
        background-size: contain;
        height: 100vh;
        text-align: center;
    }

    .wrapperLogin {
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

    .contentLogin {
        text-align: center;
    }

    .inputLogin {
        margin-top: 5px;
        margin-bottom: 5px;
        border-radius: 10px;
        border: 0.1px solid #BEDC52;
        height: 35px;
        width: 300px;
        padding: 20px;
    }

    .btn1 {
        margin-top: 25px;
        background-color: #BEDC52;
        border-radius: 25px ;
        border: 0px solid #ffffff;
        color: #fff;
        height: 30px;
        width: 200px;
    }

    .btn {
        margin-top: 7px;
        background-color: #BEDC52;
        border-radius: 25px;
        border: 0px solid #ffffff;
        color: #fff;
        height: 30px;
        width: 200px;
    }
</style>
</head>
<body>
    <div id="root">
        <div class="containerLogin">
            <div class="wrapperLogin">
                <div class="contentLogin">
                    <h1 class="Login">Login</h1>
                    <form action="LoginProgram" method="post">
                        <input class="inputLogin" name="memberID" type="text" placeholder="아이디를 입력해주세요">
                        <br>
                        <input class="inputLogin" name="password" type="text" placeholder="비밀번호를 입력해주세요">
                        <br>
                        <input class="btn1" type="submit" value="로그인">
                        <br>
                        <button type="button" class="btn">회원가입</button>
                        <br>
                        <a href="javascript:kakaoLogin();">
                            <img src="https://developers.kakao.com/tool/resource/static/img/button/login/full/ko/kakao_login_medium_narrow.png" alt="카카오 로그인 버튼">
                        </a>
                        <br>
                        <button type="button" class="btn">아이디/패스워드 찾기</button>
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
                                    console.log("서버로 데이터 전송 성공");
                                    // 이메일 정보를 받아 회원가입 페이지로 리다이렉트
                                    window.location.href = "Join.jsp";
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