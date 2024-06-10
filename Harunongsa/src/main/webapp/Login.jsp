<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>

<style>
   
   @import url(./HarunongsaCss.css);
  
</style>
</head>
<body>
    <div id="root">
        <div class="container">
            <div class="wrapper">
                <div class="content">
                    <h1 class="Login">Login</h1>
                    <form action="LoginProgram" method="post">
                        <input class="input" name="memberID" type="text" placeholder="아이디를 입력해주세요">
                        <br>
                        <input class="input" name="password" type="text" placeholder="비밀번호를 입력해주세요">
                        <br>
                        <input class="btn1" type="submit" value="로그인">
                        <br>
                        <button type="button" class="btn" onclick="location.href = 'Join.jsp'">회원가입</button>
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