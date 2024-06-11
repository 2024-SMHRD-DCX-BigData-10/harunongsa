<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>친환경 활동 성장 게시판</title>
<style>
* {
	box-sizing: border-box;
}

body {
	background-image:
		url(https://images.unsplash.com/photo-1617957743162-76ab3199a672?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D);
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	height: 100vh;
	background-size: cover;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
}

thead {
	background-color: #BEDC52;
}

th, td {
	padding: 10px;
	border: 1px solid #ddd;
	text-align: center;
}

tbody tr:nth-child(even) {
	background-color: #f9f9f9;
}

.create-button {
	background-color: #BEDC52;
	color: black;
	border: none;
	/* border-radius: 5px; */
	padding: 10px 20px;
	cursor: pointer;
	font-size: 14px;
	margin-bottom: 20px;
	transition: background-color 0.3s ease;
	border-radius: 8px;
}

.create-button:hover {
	background-color: #6aae66;
}

.container {
	width: 100%;
	max-width: 422px;
	background-color: #fff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	/* border-radius: 10px; */
	overflow: hidden;
	max-width: 420px;
	margin: 0 auto;
	padding: 0;
	height: 100vh;
}

.wrapper {
	align-items: center;
	display: flex;
	justify-content: center;
	background-color: #ffffff;
	border: 5px solid #ffffff;
	flex-direction: column;
	height: 100vh;
	background-color: #FCFCFC;
}

.header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px 20px;
	background-color: #fff;
	border-bottom: 1px solid #e0e0e0;
}

.header h1 {
	font-size: 1.2em;
	margin: 0;
}

.header .icon {
	font-size: 1.5em;
}

.content {
	padding: 20px;
}
</style>
</head>

<body>

	<div class="container">

		<div class="header">
			<div class="menu">☰</div>
			<h1>성장 게시판</h1>
			<a href="Notify.jsp" style="text-decoration: none;">
				<div class="icon">🔔</div>
			</a>
		</div>
		<div class="content">
			<table>
				<thead>
					<tr>
						<th>순번</th>
						<th>제목</th>
						<th>작성자</th>
						<th>시간</th>
					</tr>
				</thead>
				<tbody>
					<!-- 예시 데이터 -->
					<tr>
						<td>1</td>
						<td>예시 제목</td>
						<td>홍길동</td>
						<td>10:00</td>
					</tr>
					<!-- 추가 데이터는 여기에 -->
				</tbody>
			</table>

			<a href="./EcoGrowPost.jsp" style="text-decoration: none;">
				<button class="create-button">글 작성하기</button>
			</a>



		</div>
	</div>
</body>

</html>