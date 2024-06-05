<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">



 <style>
        * {
            box-sizing: border-box;
        }

        div {
            display: block;
            unicode-bidi: isolate;
        }

        #root { margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;}

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

            background-color: #f5f5f5;
            border: 5px solid #f5f5f5;
            border-radius: 40px;
            flex-direction: column;
            height: auto;
            padding: 30px;
            width: 380px;
        }

        .contentLogin {}
    </style>
</head>

<body>
    <div id="root">
        <div class="containerLogin">
            <div class="wrapperLogin">
                <div class="contentLogin">
                    <h1 class="Login">Login</h1>
                    <form action="LoginProgram" method="post">
                        <input class="inputLogin" name="memberID" type="text" placeholder="ID를 입력해주세요">
                        <br>
                        <input class="inputLogin" name="password" type="text" placeholder="PW를 입력해주세요">
                        <br>
                        <input type="submit" value="로그인">
                        <br>
                        <button type="button" class="btn">회원가입</button>
                        <br>
                        <button type="button" class="btn">카카오로 로그인/회원가입</button>
                        <br>
                        <button type="button" class="btn">아이디/패스워드 찾기</button>
                    </form>
                </div>



            </div>
        </div>
    </div>


</body>
</html>