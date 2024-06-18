<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>알림 페이지</title>
 <style>
        * {
            box-sizing: border-box;
        }



        .containerN {
            width: 100%;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            height: 880px; 
            overflow-y: visible;

            max-width: 420px;
            margin: 0 auto;
            padding: 0;
            width: 420px;
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
            font-size: 20px;
            margin: 0;
        }

        .headerN .icon,
        .menu {
            font-size: 20px;
            color: black;
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
            font-size: 15px;
            color: #888;
        }

        .notificationN .icon {
            font-size: 30px;
            color: orange;
        }

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
    </style>
</head>
<body>
	
		<div class="containerN">
			<div class="headerN">
			
			
			
<a href="MyPage.jsp" style="hidden;text-decoration:none;">
	<div class="menu">☰</div>
</a>
			

			</div>
			<div class="contentN">
				
					
				<div class="notificationN">
					<img
						src="https://www.nongnet.or.kr/image.do?file=upload/pumImage/352/20230414183737_586690368.png&size=894x612&pos=C">
					<div class="details">
						<p>파슬리에 물 줄 시간이에요!</p>
						<p class="time">1분 전</p>
					</div>

					<div class="icon">❤</div>
				</div>
				
			
		</div>
	</div>
</body>
</html>