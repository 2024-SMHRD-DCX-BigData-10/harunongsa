<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>네비게이션</title>
   <style>
  *{box-sizing: border-box;}
body {
    display: flex;
    justify-content: center;
    align-items: center;
  
    margin: 0;
    background-color: #f0f0f0;
}

.icon-container {
    display: flex;
    justify-content: space-between; /* 아이콘들 사이의 간격을 균등하게 조정 */
    background-color: white;
    align-items: center;
    padding: 10px;
    width: 420px; /* 너비를 420px로 설정 */
}

.icon {
    width: 25px;
    height: 25px;
    cursor: pointer;
    transition: transform 0.2s;
    font-size: 17px; /* 아이콘의 폰트 크기를 50px로 설정 */
}

.icon:hover {
    transform: scale(1.1);
}

#wrapperF{
  height: auto;
  min-height: 100%;
  padding-bottom: (footer높이);
}

   </style>
</head>
<body>

    <div id='wrapperF'>
        <div class="icon-container">
        
        <a href="HeartInfo.jsp" style="hidden;text-decoration:none;">
 <div class="icon">❤️</div>
</a>
        
           <a href="GrowPost.jsp" style="hidden;text-decoration:none;">
  <div class="icon">✏️</div>
</a>
           
          <a href="GrowPostManage.jsp" style="hidden;text-decoration:none;">
   <div class="icon">📰</div>
</a>
          <a href="EcoActivityMain.jsp" style="hidden;text-decoration:none;">
   <div class="icon">🌱</div>
</a>
         
         <a href="Store.jsp" style="hidden;text-decoration:none;">
 <div class="icon">💼</div>
</a>
           
        </div>
      </div>
   
    


</body>
</html>