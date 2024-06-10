<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
     <style>
       * {
            box-sizing: border-box;
        }

        /* div {
            display: block;
            unicode-bidi: isolate;
        } */

        #root {
            background-image: url(https://images.unsplash.com/photo-1617957743162-76ab3199a672?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D);
            margin: 0;
            padding: 0;
            display: flex;
            /* 컨테이너 상하 정렬 */
            justify-content: center;
            /* 컨테이너 좌우 정렬 */
            align-items: center;
            /* height: 100vh; */
            /* 웹브라우저 높잇값을 기준으로 영역의 크기가 정해짐 */
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
<body onload="javascript:window_onload()"
>
    <div id="root">
        <div class="container">
            <div class="wrapper">
                <div class="content">
                    <h1 class="Login">JoinSuccess</h1>
                    <h3>회원가입에 성공하였습니다.</h3>
                    <h3>3초후 로그인 화면으로 이동합니다.</h3> 
                    
              
                    <%response.sendRedirect("./Seconds_3");%>
                </div>



            </div>
        </div>
    </div>


</body>
</html>