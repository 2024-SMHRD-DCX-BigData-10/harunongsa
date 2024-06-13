<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상세 페이지</title>
<style>
* {
	box-sizing: border-box;
}

/* InfoDetail */
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

.card {
	background: #fff;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	overflow-y: visible;
	height: auto;
	max-width: 420px;
	margin: 0 auto;
	padding: 0;
}

.crops-image {
	width: 420px;
	height: auto;
}

.content {
	padding: 15px;
	height: auto;
}

h1 {
	margin: 0;
	font-size: 25px;
	color: #333;
}

.checkboxes {
	margin: 15px 0;
}

.checkboxes label {
	display: block;
	margin-bottom: 5px;
	font-size: 15px;
}

.management {
	background-color: #f0fff0;
	padding: 10px;
	border-radius: 5px;
}

.management p {
	margin: 0;
	font-weight: bold;
	color: #333;
}

.management ul {
	padding-left: 20px;
	margin: 5px 0;
	list-style-type: disc;
	font-size: 15Px;
}

.warning {
	background-color: #ffe6e6;
	padding: 10px;
	border-radius: 5px;
	margin-top: 10px;
	font-size: 15px;
	color: #b30000;
}

.warning p {
	margin: 0;
	font-weight: bold;
}

.warning ul {
	padding-left: 20px;
	margin: 5px 0;
	list-style-type: disc;
	font-size: 15Px;
}
</style>
</head>

<body>
	<!-- Main.jsp에서 넘겨준 쿼리스트링 데이터 받기 -->

	<%
		String cropname = request.getParameter("cropname");
		String image = request.getParameter("image");
		String cropidx = request.getParameter("cropidx");
	%>
	<div id="root">
		<div class="card">
			<img src="<%= image %>" alt="<%= cropidx %>" class="crops-image">
			<div class="content">
				<h1><%= cropname %></h1>
				<div class="checkboxes">
					<label><input type="checkbox" checked> 마음에 드는 작물
						찜하기</label> <label><input type="checkbox" checked> 키우기
						시작하기</label>
				</div>
				<div class="management">
					<p>특징</p>
					<p></p>
				</div>
				<div class="management">
					<p>파종시기</p>
					<p></p>
				</div>
				<div class="management">
					<p>파종법</p>
					<p></p>
				</div>
				<div class="management">
					<p>재배법</p>
					<p></p>
				</div>
				<div class="management">
					<p>수확시간</p>
					<p></p>
				</div>
				<div class="warning">
					<p>병해충정보</p>
					<p></p>
				</div>
				<div class="management">
					<p>요리법</p>
					<p></p>
				</div>

			</div>
		</div>
	</div>
</body>

</html>