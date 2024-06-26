<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이 페이지</title>
<style>
		* {
			box-sizing: border-box;
		}

		.container {
			width: 420px;
			border: 1px solid #ddd;
			height: 880px; 
			background-color: #fff;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
			
overflow-y: visible;

		}

		.profile {
			text-align: center;
			padding: 20px;
			border-bottom: 1px solid #ddd;
		}

		.profile-pic img {
			width: 60px;
			height: 60px;
			border-radius: 50%;
			object-fit: cover;
		}

		.welcome-message {
			margin-top: 10px;
			font-size: 20px;
			color: #333;
		}

		.menu {
			display: flex;
			flex-direction: column;
			align-items: center;
		}

		.menu-item {
			width: 420px;
			text-align: center;
			padding: 15px 0;
			cursor: pointer;
			font-size: 15px;
			color: #007bff;
			border-top: 1px solid #ddd;
			color:black;
		
		}

		.menu-item:hover {
			background-color: #6b8e23;
			color:white;
		}

		.mypage {
			margin-bottom: 20px;
		}

		body {
			background-image:
				url(https://images.unsplash.com/photo-1617957743162-76ab3199a672?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D);
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
		
		.mypage{font-family: 'Noto Serif KR';}
		.welcome-message{font-family: 'Noto Sans KR';}
		.menu-item{font-family: 'Noto Sans KR';}
		
		
		
	</style>
</head>
<body>

	<div class="container">
		<div class="profile">
			<div class="mypage">마이페이지</div>
			<div class="profile-pic">
				<img
					src="https://images.unsplash.com/photo-1607305387299-a3d9611cd469?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
					alt="Profile Picture">
			</div>
			<div class="welcome-message"><%= session.getAttribute("name") %>님 환영합니다!</div>
		</div>
		<div class="menu">


			<a href="UpdateMemberMain.jsp" style="text-decoration: none;">
				<div class="menu-item">회원정보수정</div>
			</a> <a href="LogoutMember.jsp" style="text-decoration: none;">
				<div class="menu-item">로그아웃</div>
			</a> <a href="DeleteMember.jsp" style="text-decoration: none;">
				<div class="menu-item">회원탈퇴</div>
			</a>


		</div>

	</div>
</body>
</html>