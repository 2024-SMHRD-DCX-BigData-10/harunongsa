<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
* {
	box-sizing: border-box;
}

.containerM {
	width: 100%;
	max-width: 422px;
	margin: auto;
	background-color: #fff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	overflow: hidden;
	height: 100vh;
}

.headerM {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px 20px;
	background-color: #fff;
	border-bottom: 1px solid #e0e0e0;
}

.headerM h1 {
	font-size: 1.2em;
	margin: 0;
}

.headerM .icon {
	font-size: 1.5em;
}

.contentM {
	padding: 20px;
}

.InfosM {
	display: flex;
	overflow-x: hidden;
	padding-bottom: 10px;
	margin-bottom: 10px;
	border-bottom: 1px solid #e0e0e0;
}

.crop {
	flex: 0 0 auto;
	margin-right: 10px;
	text-align: center;
}

.crop img {
	width: 60px;
	height: 60px;
	border-radius: 50%;
	object-fit: cover;
}

.crop p {
	font-size: 0.8em;
	margin: 5px 0 0;
}

.recommended, .raise-child {
	margin-bottom: 20px;
}

.recommended h2, .raise-child h2 {
	font-size: 1em;
	margin-bottom: 10px;
}

.recommended img, .raise-child img {
	width: 100%;
	border-radius: 10px;
}

.tags {
	font-size: 0.8em;
	color: #888;
}

#root {
	background-image:
		url(https://images.unsplash.com/photo-1617957743162-76ab3199a672?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D);
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
</style>
</head>
<body>
	<div id="root">
		<div class="containerM">
			<div class="headerM">
			<a href="MyPage.jsp" style="hidden;text-decoration:none;color:black;">
<div class="menu">☰</div>
</a>
			
				
				<h1>하루농사</h1>
				<a href="Notify.jsp" style="text-decoration: none;">
					<div class="icon">🔔</div>
				</a>
			</div>
			<div class="contentM">
				<h4>
					베란다에서 무엇을 키울 수 있을까요?
					</h2>
					<div class="InfosM">
						<div class="crop">
							<img
								src="https://images.unsplash.com/photo-1607305387299-a3d9611cd469?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
								alt="Tomato">
							<p>tomato</p>
						</div>
						<div class="crop">
							<img
								src="https://images.unsplash.com/photo-1607305387299-a3d9611cd469?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
								alt="Potato">
							<p>tomato</p>
						</div>
						<div class="crop">
							<img
								src="https://images.unsplash.com/photo-1607305387299-a3d9611cd469?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
								alt="Corn">
							<p>tomato</p>
						</div>
						<div class="crop">
							<img
								src="https://images.unsplash.com/photo-1607305387299-a3d9611cd469?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
								alt="Bean">
							<p>tomato</p>
						</div>
						<div class="crop">
							<img
								src="https://images.unsplash.com/photo-1607305387299-a3d9611cd469?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
								alt="Bean">
							<p>tomato</p>
						</div>

					</div>
					<a href="./InfoDetail.jsp"
						style="text-decoration: none; color: black;">
						<div class="recommended">
							<h2>
								이달의 추천 농작물<br>토마토
							</h2>
							<img
								src="https://images.unsplash.com/photo-1607305387299-a3d9611cd469?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
								alt="Bean sprouts">
							<p class="tags">#쑥쑥 #금방</p>
						</div>
					</a>
					<%--@inclue file = "Navigation.jsp" --%>
			</div>
		</div>
	</div>
</body>
</html>