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

        .Grow-form {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }

        .Grow-form label {
            font-size: 15px;
            margin-bottom: 5px;
            color: #555;
        }

        .Grow-form input,
        .Grow-form textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 15px;
            box-sizing: border-box;
        }

        .Grow-form .inline-label {
            display: inline;
            margin-left: 5px;
            font-size: 15px;
            color: #555;
        }

        .Grow-form input[type="checkbox"] {
            width: auto;
            margin-right: 10px;
        }

        .Grow-form a {
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

        .Grow-form a:hover {
            background-color: #00a047;
        }
        
        button{
        
       
            padding: 8px 20px;
            font-size: 15px;
            background-color: #BEDC52;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none;
        }


        textarea {

            resize: none;
        }
        
       button{		padding: 8.5px 20px;
				font-size: 15px;
				background-color: #BEDC52;
				color: white;
				border: none;
				border-radius: 5px;
				cursor: pointer;
				transition: background-color 0.3s ease;
				text-decoration: none;}
				.button-container {
    text-align: center; /* 가운데 정렬을 위한 스타일 */
}

.button-container a,
.button-container button {
    margin: 0 20px; /* 버튼 사이의 간격을 조절 */
}
    </style>
</head>

<body>


	<div id="root">
		<div class="container">
			<div class="wrapper">
				<div class="content">

					<h1>성장글 작성하기</h1>

					<form class="Grow-form" action="GrowthCon" method="post" enctype="multipart/form-data">

						<label for="image">사진</label> <input type="file" name="image"
							style="float: right;"> <label for="PostName">글제목</label>
						
						<input type="text" id="PostName" name="title"
							placeholder="글제목을 입력하세요"> 
						<label for="content">글내용</label>
						
						<input type="text" id="content" name="content"
							placeholder="글내용을 입력하세요"> 
						<label for="seedname">농작물 이름</label> 
						
						<input type="text" id="seedname" name="seedname"
							placeholder="농작물 이름을 입력하세요"> 
						<label for="memberid">작성자 이름</label> 
							
						<input type="text" id="name" name="memberid"
							placeholder="이름을 입력하세요">


						 <div class="button-container">
    <a href="EcoGrowBoard.jsp" class="button-link">뒤로가기</a>
   <button type="submit" class="button-link">제출하기</button>
</div>


					</form>




				</div>
			</div>
		</div>
	</div>

</body>

</html>