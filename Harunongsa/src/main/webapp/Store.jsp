<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>판매 페이지</title>
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

        .headerM .icon,
        .menu {
            font-size: 20px;
        }

        .contentM {
            padding: 20px;
            width: 420px;


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


        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
            background-color: white;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .menu-icon,
        .notification-icon {
            font-size: 25px;
            cursor: pointer;
        }

        h1 {
            margin: 0;
            font-size: 25px;
        }

        main {
            padding: 20px;
            display: flex;
            justify-content: center;
        }

        .product-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
        }

        .product-card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
        }

        .product-image {
            background-color: #ddd;
            width: 100%;
            height: 150px;
            margin-bottom: 10px;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #666;
        }

        .price-button {
            padding: 10px 20px;
            font-size: 15px;
            width: 125px;
            color: white;
            background-color: #00c853;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .price-button:hover {
            background-color: #00a047;
        }
        
        h1{font-family: 'Noto Serif KR';}
        button{font-family: 'Noto Sans KR';
        font-size: 8px;}
        
    </style>
    </head>

    <body>
        <div id="root">
            <div class="containerM">
                <div class="headerM">
                    <div class="menu">☰</div>
                    <h1>하루농사</h1>
                    <a href="Notify.jsp" style="hidden;text-decoration:none;">
                        <div class="icon">🔔</div>
                    </a>
                </div>
                <div class="contentM">
                    <div class="product-grid">
                        <div class="product-card">
                            <a href="https://www.coupang.com/np/search?component=&q=%ED%99%94%EB%B6%84&channel=user">
                            <div class="product-image">상품 이미지 화분</div>
                            <button class="price-button">화분</button>
                            </a>                     
                        </div>
                        
                            <div class="product-card">
                            <a href="https://www.coupang.com/np/search?component=&q=%EC%94%A8%EC%95%97&channel=user">
                            <div class="product-image">상품 이미지 씨앗</div>
                            <button class="price-button">씨앗</button>
                            </a>                     
                        </div>
                        
                             <div class="product-card">
                            <a href="https://www.coupang.com/np/search?component=&q=%EB%AA%A8%EC%A2%85%EC%82%BD&channel=user">
                            <div class="product-image">상품 이미지 모종삽</div>
                            <button class="price-button">모종삽</button>
                            </a>                     
                        </div>
                        
                        
                             <div class="product-card">
                            <a href="https://www.coupang.com/np/search?component=&q=%EC%98%81%EC%96%91%EC%A0%9C+%EC%8B%9D%EB%AC%BC&channel=user">
                            <div class="product-image">상품 이미지 영양제</div>
                            <button class="price-button">영양제</button>
                            </a>                     
                        </div>
                        
                        
                             <div class="product-card">
                            <a href="https://www.coupang.com/np/search?component=&q=%EC%8B%9D%EB%AC%BC+%EB%B9%84%EB%A3%8C&channel=user">
                            <div class="product-image">상품 이미지 비료</div>
                            <button class="price-button">비료</button>
                            </a>                     
                        </div>
                        
                        
                             <div class="product-card">
                            <a href="https://www.coupang.com/np/search?component=&q=%EC%8B%9D%EB%AC%BC+%EB%B6%84%EB%AC%B4%EA%B8%B0&channel=user">
                            <div class="product-image">상품 이미지 분무기</div>
                            <button class="price-button">분무기</button>
                            </a>                     
                        </div>
                        
                        
                        
                        
                        
                    </div>


                </div>
            </div>
        </div>
    </body>

    </html>