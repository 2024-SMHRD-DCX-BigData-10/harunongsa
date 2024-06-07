<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
    @import url(./HarunongsaCss.css);
</style>
</head>
<body>
    <div id="root">
        <div class="container">
            <div class="wrapper">
                <div class="content">
                    <h1 class="Login">회원가입</h1>

                    <%
                        // 세션에서 이메일 정보를 가져옵니다.
                        String email = (String) session.getAttribute("email");
                    %>

                    <form action="JoinProgram" method="post">
                        <input class="input" name="memberID" type="text" placeholder="아이디를 입력해주세요">
                        <br>
                        <input class="input" name="password" type="text" placeholder="비밀번호를 입력해주세요">
                        <br>
                        <input class="input" name="name" type="text" placeholder="이름을 입력해주세요">
                        <br>
                        <input class="input" name="phoneNumber" type="text" placeholder="핸드폰 번호를 입력해주세요">
                        <br>
                        <!-- 이메일 입력 필드에 세션에서 가져온 이메일 값을 자동으로 채웁니다. -->
                        <input class="input" name="email" type="text" placeholder="이메일을 입력해주세요" value="<%= email != null ? email : "" %>">
                        <br>
                        <input class="input" name="preference" type="text" placeholder="선호도 입력해주세요">
                        <br>
                        <input type="hidden" value="1" class="input" name="memberType"  placeholder="멤버타입을 입력해주세요" >
                        <br>
                        <input class="input" name="joinedAt" type="text" placeholder="가입 날짜를 입력해주세요">
                        <br>
                        <input class="btn1" type="submit" value="회원가입">
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>