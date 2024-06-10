<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이콘 예제</title>
   <style>

body {
    display: flex;
    justify-content: center;
    align-items: center;
  
    margin: 0;
    background-color: #f0f0f0;
}

.icon-container {
    display: flex;
    gap: 20px;
    background-color: white;
    align-items: center;
    padding: 10px;
}

.icon {
    width: 25px;
    height: 25px;
    cursor: pointer;
    transition: transform 0.2s;
}

.icon:hover {
    transform: scale(1.1);
}

#wrapper{
  height: auto;
  min-height: 100%;
  padding-bottom: (footer높이);
}
footer{
  height: (footer높이);
  position : relative;
  transform : translateY(-100%);
}
   </style>
</head>
<body>

    <div id='wrapper'>
        <div class="icon-container">
            <div class="icon">❤️</div>
            <div class="icon">✏️</div>
            <div class="icon">📰</div>
            <div class="icon">🌱</div>
            <div class="icon">💼</div>
        </div>
      </div>
      <footer></footer>
    


</body>
</html>