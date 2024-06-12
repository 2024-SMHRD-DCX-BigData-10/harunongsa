<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이디 패스워드 찾기</title>

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

            align-items: flex-start;
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

            align-items: center;
            display: flex;
            justify-content: flex-start;
            background-color: #ffffff;
            border: 5px solid #ffffff;
            flex-direction: column;
            height: auto;

            background-color: #FCFCFC;
            width: 420px;
            height: 880px;
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
            border-radius: 25px;
            border: 0px solid #ffffff;
            color: #fff;
            height: 30px;
            width: 200px;
            margin-bottom: 30px;
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