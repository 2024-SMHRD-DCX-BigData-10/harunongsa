<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>찜목록</title>
        <style>
             *{box-sizing: border-box;}



            .headerN {
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 10px 20px;
                background-color: #fff;
                border-bottom: 1px solid #e0e0e0;
            }

            .containerN {
               width: 100%;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    overflow: hidden;
    max-width: 420px;
    margin: 0 auto;
    padding: 0;
    margin-top: 20px; /* 추가된 부분 */

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


            body {
                 background-image: url(https://images.unsplash.com/photo-1617957743162-76ab3199a672?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D);
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    height: 100vh;
    background-size: cover;
    padding-top: 20px; /* 추가된 부분 */
            }


            .card {
                display: flex;
                background-color: white;
                border-radius: 8px;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                margin-bottom: 20px;
                overflow: hidden;
            }

            .card img {
                width: 150px;
                height: auto;
                object-fit: cover;
            }

            .card-content {
                padding: 15px;
            }

            .card-content h2 {
                margin: 0 0 10px;
                font-size: 18px;
                color: #555;
            }

            .card-content p {
                margin: 5px 0;
                font-size: 14px;
                color: #777;
            }

            .card-content p strong {
                color: #333;}
        </style>
    </head>

    <body>
      
            <div class="containerN">
                <div class="headerN">
                
                <a href="MyPage.jsp" style="hidden;text-decoration:none;color:black;">
 <div class="menu">☰</div>
</a>
                   
                    <h1>찜 농작물</h1>
                    <a href="Notify.jsp" style="hidden;text-decoration:none;">
            <div class="icon">🔔</div>
            </a>

                </div>
                <div class="contentN">
                    <a href="./InfoDetail.jsp" style="text-decoration: none; color: black;">
                        <section class="card">
                            <img src="https://images.unsplash.com/photo-1607305387299-a3d9611cd469?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                                alt="Profile Picture" alt="Bean sprouts">
                            <div class="card-content">
                                <h2>Recommended Crop of the Month</h2>
                                <p><strong>Bean sprouts</strong></p>
                                <p>#물만 줘도 잘 자라요 #쑥쑥 #금방</p>
                            </div>
                        </section>
                    </a>
                </div>
            </div>
       
    </body>

    </html>