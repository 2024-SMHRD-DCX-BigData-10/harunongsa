<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포스트 뷰어</title>
    <style>
        * {
            box-sizing: border-box;
        }



        /* InfoDetail */

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
            width: 100%;
            height: auto;
        }

        .content {
            padding: 25px;
            width: 420px;
        }

        h1 {
            margin: 0;
            font-size: 25px;
            color: #333;
        }



        .need {
            background-color: #f4f4f4;
            padding: 10px;
            border-radius: 5px;
            margin-top: 10px;
        }

        .need p {
            margin: 0;
            font-weight: bold;
            color: #333;
        }

        .need ul {
            padding-left: 20px;
            margin: 5px 0;
            list-style-type: disc;
            font-size: 15Px;
        }
    </style>
</head>

<body>

    <div class="card">
        <!-- <img src="https://images.unsplash.com/photo-1607305387299-a3d9611cd469?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
            alt="Tomatoes" class="crops-image"> -->
        <div class="content">
            <h1>글제목</h1>

            
            <div class="need">
                
                <p>사진</p>
                
            </div>
            <div class="need">
               
                <p>작물 이름</p>
                
            </div>
            <div class="need">
               
                <p>내용</p>
                
            </div>
            <div class="need">
             
                <p>작성일시</p>
            </div>


          

        </div>
    </div>

</body>
</html>