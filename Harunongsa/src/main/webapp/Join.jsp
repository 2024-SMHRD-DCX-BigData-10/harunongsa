<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원 가입</title>
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
            background-size: contain;
            height: 880px;
            text-align: center;
            max-width: 420px;
            margin: 0 auto;
            padding: 0;
            font-size: 15px;
        }

        .wrapper {
            align-items: center;
            display: flex;
            justify-content: flex-start;
            background-color: #ffffff;
            border: 5px solid #ffffff;
            flex-direction: column;
            /* height: auto; */
            height: 880px;
            width: 420px;
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
            font-size: 13px;
        }

        .btn1 {
            margin-top: 25px;
            background-color: #BEDC52;
            border-radius: 7px;
            border: 0px solid #ffffff;
            color: #fff;
            height: 30px;
            width: 200px;
        }

        .btn {
            margin-top: 7px;
            background-color: #BEDC52;
            border-radius: 8px;
            border: 0px solid #ffffff;
            color: #fff;
            height: 30px;
            width: 200px;


        }
        
        h1{font-family: 'Noto Serif KR';}
        input{font-family: 'Noto Sans KR';}
        
    </style>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            let today = new Date();
            let year = today.getFullYear();
            let month = ('0' + (today.getMonth() + 1)).slice(-2);
            let day = ('0' + today.getDate()).slice(-2);
            let formattedDate = year + '-' + month + '-' + day;
            document.getElementById('joinedAt').value = formattedDate;
        });
    </script>
</head>
<body>

	<div class="container">
		<div class="wrapper">
			<div class="content">
				<h1 class="Login">회원가입</h1>

				<%
                        // 세션에서 이메일 정보를 가져옵니다.
                        String email = (String) session.getAttribute("email");
                    %>

				<form action="JoinProgram" method="post">
					<input class="input" name="memberID" type="text"
						placeholder="아이디를 입력해주세요"> <br> <input class="input"
						name="password" type="text" placeholder="비밀번호를 입력해주세요"> <br>
					<input class="input" name="name" type="text"
						placeholder="이름을 입력해주세요"> <br> <input class="input"
						name="phoneNumber" type="text" placeholder="핸드폰 번호를 입력해주세요">
					<br>
					<!-- 이메일 입력 필드에 세션에서 가져온 이메일 값을 자동으로 채웁니다. -->
					<input class="input" name="email" type="text"
						placeholder="이메일을 입력해주세요"
						value="<%= email != null ? email : "" %>"> <br> <input
						class="input" name="preference" type="text"
						placeholder="선호도 입력해주세요"> <br> <input type="hidden"
						value="1" class="input" name="memberType"
						placeholder="멤버타입을 입력해주세요"> <br> <input type="hidden" id="joinedAt"
						name="joinedAt"> <br> <input class="btn1"
						type="submit" value="회원가입">
				</form>

			</div>
		</div>
	</div>
</body>
</html>
