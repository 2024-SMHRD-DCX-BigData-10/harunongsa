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
                overflow: hidden;
                height: 100vh;
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
                font-size: 1.2em;
                margin: 0;
            }

            .headerM .icon {
                font-size: 1.5em;
            }

            .contentM {
                padding: 20px;
                width:420px;
                
               
            }


            body {
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
                font-size: 24px;
                cursor: pointer;
            }

            h1 {
                margin: 0;
                font-size: 24px;
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
                font-size: 16px;
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
                            <div class="product-image">상품 이미지</div>
                            <button class="price-button">가격</button>
                        </div>
                        <div class="product-card">
                            <div class="product-image">상품 이미지</div>
                            <button class="price-button">가격</button>
                        </div>
                        <div class="product-card">
                            <div class="product-image">상품 이미지</div>
                            <button class="price-button">가격</button>
                        </div>
                        <div class="product-card">
                            <div class="product-image">상품 이미지</div>
                            <button class="price-button">가격</button>
                        </div>
                        <div class="product-card">
                            <div class="product-image">상품 이미지</div>
                            <button class="price-button">가격</button>
                        </div>
                        <div class="product-card">
                            <div class="product-image">상품 이미지</div>
                            <button class="price-button">가격</button>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </body>

    </html>