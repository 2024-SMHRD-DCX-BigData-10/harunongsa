<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        @import url(./HarunongsaCss.css);
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