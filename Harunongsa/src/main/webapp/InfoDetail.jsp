<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상세 페이지</title>
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
    justify-content: center;
    align-items: flex-start;
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
    width: 420px;
    height: auto;
}

.content {
    padding: 15px;
    height: auto;
}

h1 {
    margin: 0;
    font-size: 25px;
    color: #333;
}

.checkboxes {
    margin: 15px 0;
}

.checkboxes label {
    display: block;
    margin-bottom: 5px;
    font-size: 15px;
}

.management {
    background-color: rgb(253,253,253);
    padding: 10px;
    border-radius: 5px;
    margin:5px;
}

.management p {
    margin: 0;
    font-weight: bold;
    color: #333;
}

.management ul {
    padding-left: 20px;
    margin: 5px 0;
    list-style-type: disc;
    font-size: 15Px;
}

.warning {
    background-color: #ffe6e6;
    padding: 10px;
    border-radius: 5px;
    margin-top: 10px;
    font-size: 15px;
    color: #b30000;
}

.warning p {
    margin: 0;
    font-weight: bold;
}

.warning ul {
    padding-left: 20px;
    margin: 5px 0;
    list-style-type: disc;
    font-size: 15Px;
}
.heart {
width: 60px;
height: 30px;
text-align: center;
border-radius:10px;
border:0px;
color:black;

}
h1{font-family: 'Noto Serif KR';}
p{font-family: 'Noto Sans KR';}
span, .heart {font-family: 'Noto Sans KR';}



</style>
</head>

<body>
    <!-- Main.jsp에서 넘겨준 POST 데이터 받기 -->
    <%
    	request.setCharacterEncoding("UTF-8");
        String cropname = request.getParameter("cropname");
        String image = request.getParameter("image");
        String cropidx = request.getParameter("cropidx");
        String feature = request.getParameter("feature");
        String sowingperiod = request.getParameter("sowingperiod");
        String sowingmethod = request.getParameter("sowingmethod");
        String cultivationmethod = request.getParameter("cultivationmethod");
        String harvestperiod = request.getParameter("harvestperiod");
        String diseasepestinfo = request.getParameter("diseasepestinfo");
        String recipe = request.getParameter("recipe");
        String memberId = request.getParameter("memberId");
    %>
    <div id="root">
        <div class="card">
            <img src="<%= image %>" alt="<%= cropidx %>" class="crops-image">
            <div class="content">
                <h1><%= cropname %></h1>
                
               
                    <form action="favoriteCon" method="post" style="display:inline-block;">
                  <input type="hidden" name="favidx" value="<%= cropname %>">  
                <input type="hidden" name="cropname" value="<%= cropname %>">
                <input type="hidden" name="memberid" value="<%=memberId %>"><!-- 실제 member ID로 대체 필요 -->
                <button type="submit" class="heart">찜하기</button>
            </form>
               
                   
  
                <div class="management">
                    <p>특징</p>
                    <span><%=feature %></span>
                </div>
                <div class="management">
                    <p>파종시기</p>
                    <span><%=sowingperiod %></span>
                </div>
                <div class="management">
                    <p>파종법</p>
                    <span><%=sowingmethod %></span>
                </div>
                <div class="management">
                    <p>재배법</p>
                    <span><%=cultivationmethod %></span>
                </div>
                <div class="management">
                    <p>수확시간</p>
                    <span><%=harvestperiod %></span>
                </div>
                <div class="warning">
                    <p>병해충정보</p>
                    <span><%=diseasepestinfo %></span>
                </div>
                <div class="management">
                    <p>요리법</p>
                    <span><%=recipe %></span>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
