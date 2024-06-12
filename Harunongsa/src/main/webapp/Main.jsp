<%@ page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page import="java.util.List"%>
<%@ page import="com.smhrd.model.CropDTO"%>
<%@ page import="com.smhrd.model.CropDAO"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>메인 페이지</title>
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
	overflow-y: visible;
	height: 880px;
	max-width: 420px;
	margin: 0 auto;
	padding: 0;
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
	font-size: 20px;
	margin: 0;
}

.headerM .icon {
	font-size: 20px;
}

.contentM {
	padding: 20px;
}

.InfosM {
    display: flex;
    overflow-x: scroll; /* 변경된 부분 */
    padding-bottom: 10px;
    margin-bottom: 10px;
    border-bottom: 1px solid #e0e0e0;
}

.crops-container {
    display: flex; /* 변경된 부분 */
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
	font-size: 15px;
	margin: 5px 0 0;
}

.recommended, .raise-child {
	margin-bottom: 20px;
}

.recommended h2, .raise-child h2 {
	font-size: 20px;
	margin-bottom: 10px;
}

.recommended img, .raise-child img {
	width: 100%;
	border-radius: 10px;
}

.tags {
	font-size: 18px;
	color: #888;
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

.icon-containerF {
	display: flex;
	justify-content: space-between;
	/* 아이콘들 사이의 간격을 균등하게 조정 */
	background-color: white;
	align-items: center;
	padding: 10px;
	width: 370px;
	/* 너비를 420px로 설정 */
}

.icon, .menu {
	width: 25px;
	height: 25px;
	cursor: pointer;
	transition: transform 0.2s;
	font-size: 20px;
	/* 아이콘의 폰트 크기를 50px로 설정 */
}

.icon:hover {
	transform: scale(1.1);
}

#wrapperF {
	height: auto;
	min-height: 100%;
	padding-bottom: (footer높이);
}
</style>
</head>
<body>
	<!-- 작물 정보 DB 리스트 가져오기 -->
	<%
			List<CropDTO> allCrop = new CropDAO().allCrop();
		%>
	<div id="root">
		<div class="containerM">
			<div class="headerM">
				<a href="MyPage.jsp" style="text-decoration: none; color: black;">
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
   <div class="crops-container">
      <% for(CropDTO c: allCrop){ %>
         <div class="crop">
            <img src="<%= c.getImage() %>" alt="<%= c.getCropname() %>">
            <p><%=c.getCropname() %></p>
         </div>
      <% } %>
   </div>
</div>
					<a
						href="./InfoDetail.jsp?cropname=<%= allCrop.get(8).getCropname() %>&image=<%= allCrop.get(8).getImage() %>&cropidx=<%= allCrop.get(8).getCropidx() %>"
						style="text-decoration: none; color: black;">
						<div class="recommended">
							<h2>
								이달의 추천 농작물<br><%= allCrop.get(8).getCropname() %>
							</h2>
							<img src="<%= allCrop.get(8).getImage() %>"
								alt="<%= allCrop.get(8).getCropidx() %>">
							<p class="tags">#쑥쑥 #금방</p>
						</div>
					</a>


					<!--  -->

					<div id='wrapperF'>
						<div class="icon-containerF">

							<a href="HeartInfo.jsp" style="text-decoration: none;">
								<div class="icon">❤️</div>
							</a> <a href="GrowPost.jsp" style="text-decoration: none;">
								<div class="icon">✏️</div>
							</a> <a href="GrowPostManage.jsp" style="text-decoration: none;">
								<div class="icon">📰</div>
							</a> <a href="EcoActivityMain.jsp" style="text-decoration: none;">
								<div class="icon">🌱</div>
							</a> <a href="Store.jsp" style="text-decoration: none;">
								<div class="icon">💼</div>
							</a>

						</div>
					</div>


					<!--  -->
			</div>
		</div>
</body>
</html>