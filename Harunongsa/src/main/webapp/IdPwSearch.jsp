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


</head>
<body>
    <div id="root">
        <div class="container">
            <div class="wrapper">
                <div class="content">
                    <h1 class="Login">회원정보 찾기</h1>

    <form action="SearchProgram" method="post">
        <input class="input" name="name" type="text" placeholder="이름을 입력해주세요">
        <br>
        <input class="input" name="email" type="text" placeholder="이메일을 입력해주세요">
        <br>
        <input class="input" name="tel" type="text" placeholder="핸드폰 번호를 입력해주세요">
        <br>
        <input class="btn1" type="submit" value="아이디 찾기">
    </form>
</div>
<div class="content">

<form action="SearchProgram" method="post">
<input class="input" name="id" type="text" placeholder="아이디를 입력해주세요">
<br>
<input class="input" name="name" type="text" placeholder="이름을 입력해주세요">
<br>
<input class="input" name="email" type="text" placeholder="이메일을 입력해주세요">
<br>
<input class="btn1" type="submit" value="비밀번호 찾기">
</form>
</div>



</div>
</div>
</div>


</body>
</html>






</body>
</html>