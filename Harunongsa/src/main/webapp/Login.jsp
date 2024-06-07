<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">

 <style>
   @import url(./HarunongsaCss.css);
    </style>

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
                        <button class="btn" type="button" >회원가입</button>
                        <br>
                        <button class="btn" type="button" >카카오로 로그인/회원가입</button>
                        <br>
                        <button class="btn" type="button" >아이디/패스워드 찾기</button>
                    </form>
                </div>



            </div>
        </div>
    </div>


</body>
</html>