<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>친환경 활동 게시글 작성</title>
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
			align-items: flex-start;
			font-family: Arial, sans-serif;
			background-color: #f0f0f0;
			min-height: 100vh;
			/* 변경됨 */
			background-size: cover;
			overflow-y: visible;
		}

			.container {
				align-items: center;
				display: flex;
				justify-content: center;
				background-position: 50%;
				background-repeat: no-repeat;
				background-size: contain;
				height: 900px
				/* 변경됨 */
				text-align: center;
				max-width: 420px;
				margin: 0 auto;
				padding: 0;
				
			}

			.wrapper {
				align-items: center;
				display: flex;
				justify-content: flex-start;
				background-color: #ffffff;
				border: 5px solid #ffffff;
				flex-direction: column;
				height: 880px;
				/* 변경됨 */
				background-color: #FCFCFC;
				width: 420px;
				overflow-y: visible;
				
			}

			.content {
				text-align: center;
				
			}

			.image-container {
				width: 100%;
				margin-bottom: 20px;
			}

			.main-image {
				width: 100%;
				height: auto;
				border-radius: 10px;
			}

			h1 {
				font-size: 20px;
				color: #333;
				margin-bottom: 20px;
			}

			.certification-form {
				display: flex;
				flex-direction: column;
				align-items: flex-start;
			}

			.certification-form label {
				font-size: 15px;
				margin-bottom: 5px;
				color: #555;
			}

			.certification-form input,
			.certification-form textarea {
				width: 100%;
				margin-bottom: 20px;
				border: 1px solid #ddd;
				border-radius: 5px;
				font-size: 15px;
				box-sizing: border-box;
			}

			.certification-form .inline-label {
				display: inline;
				margin-left: 5px;
				font-size: 15px;
				color: #555;
			}

			.certification-form input[type="checkbox"] {
				width: auto;
				margin-right: 10px;
			}

			.certification-form a {
				padding: 10px 20px;
				font-size: 15px;
				background-color: #BEDC52;
				color: white;
				border: none;
				border-radius: 5px;
				cursor: pointer;
				transition: background-color 0.3s ease;
				text-decoration: none;
			}

			.certification-form a:hover {
				background-color: #00a047;
			}

			textarea {
				resize: none;
			}
	</style>
</head>

<body>


	<div id="root">
		<div class="container">
			<div class="wrapper">
				<div class="content">

	<h1>인증글 작성하기</h1>

	<form class="certification-form" action="GardenCon" method="post" enctype="multipart/form-data">
    <input type="hidden" id="certidx" name="certidx" value="0">
    
    <label for="image">사진</label>
    <input type="file" name="img" style="float: right;">
    
    <label for="PostName">글제목</label>
    <input type="text" id="PostName" name="title" placeholder="글 제목을 입력하세요">
    
    <label for="content">내용</label>
    <textarea id="content" name="content" rows="5" placeholder="활동 내용을 입력하세요"></textarea>
    
    <label for="seed">받고 싶은 씨앗 상추/치커리</label>
    <input type="text" id="seed" name="desiredseed" placeholder="씨앗을 입력하세요">
    
    <label for="address">수령자 주소</label>
    <input type="text" id="address" name="deliaddr" placeholder="주소를 입력하세요">
    
    <label for="name">수령자 이름</label>
    <input type="text" id="name" name="recipientname" placeholder="이름을 입력하세요">
    
    <label for="phone">수령자 전화번호</label>
    <input type="text" id="phone" name="recipientphone" placeholder="전화번호를 입력하세요">
    
    <label for="agree">공개 여부</label>
    <input type="checkbox" id="agree" name="issecret">
    <input type="hidden" value="session.memberid" name="memberid">
    
    <div class="button-container">
        <a href="EcoCertificationBoard.jsp" class="button-link">뒤로가기</a>
        <button type="submit" class="button-link">제출하기</button>
    </div>
</form>





				</div>
			</div>
		</div>
	</div>

</body>

</html>