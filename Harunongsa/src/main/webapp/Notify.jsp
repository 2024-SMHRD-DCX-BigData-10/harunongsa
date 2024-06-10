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



 .containerN {
    width: 100%;
    max-width: 422px;
    margin: auto;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
   height: 100vh;
    overflow: hidden;
}
 .headerN {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px 20px;
    background-color: #fff;
    border-bottom: 1px solid #e0e0e0;
}
 .headerN h1 {
    font-size: 1.2em;
    margin: 0;
}
.headerN .icon {
    font-size: 1.5em;
}


.contentN {
    padding: 20px;
    height: 100vh;
}

/* Notify */
.notificationN {
    display: flex;
    align-items: center;
    padding: 10px 0;
    border-bottom: 1px solid #e0e0e0;
}
.notificationN img {
    width: 50px;
    height: 50px;
    border-radius: 50%;
    object-fit: cover;
    margin-right: 10px;
}
.notificationN .details {
    flex-grow: 1;
}
.notificationN .details p {
    margin: 0;
}
.notificationN .details .time {
    font-size: 0.8em;
    color: #888;
}
.notificationN .icon {
    font-size: 1.5em;
    color: orange;
}

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
</style>
</head>
<body>
	<div id="root">
		<div class="containerN">
			<div class="headerN">
				<div class="menu">☰</div>

			</div>
			<div class="contentN">
				<a href="./InfoDetail.jsp"
					style="text-decoration: none; color: black;">
				<div class="notificationN">
					<img
						src="https://images.unsplash.com/photo-1607305387299-a3d9611cd469?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D">
					<div class="details">
						<p>토마토에 물 줄 시간이에요!</p>
						<p class="time">1분 전</p>
					</div>

					<div class="icon">❤</div>
				</div>
				</a>
			</div>
		</div>
	</div>
</body>
</html>