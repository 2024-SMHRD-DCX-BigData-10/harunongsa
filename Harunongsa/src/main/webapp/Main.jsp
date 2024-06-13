<%@ page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page import="java.util.List"%>
<%@ page import="com.smhrd.model.CropDTO"%>
<%@ page import="com.smhrd.model.CropDAO"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>메인 페이지</title>
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
    height: auto;
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

.headerM .icon {
    font-size: 20px;
}

.contentM {
    padding: 20px;
}

.InfosM {
    display: flex;
    padding-bottom: 10px;
    margin-bottom: 10px;
    border-bottom: 1px solid #e0e0e0;
}

.crops-container {
    display: flex;
}

.crop {
    flex: 0 0 auto;
    margin-right: 10px;
    text-align: center;
}

.crop img {
    width: 60px;
    height: 60px;
    border-radius: 50%;
    object-fit: cover;
}

.crop p {
    font-size: 15px;
    margin: 5px 0 0;
}

.recommended, .raise-child {
    margin-bottom: 20px;
}

.recommended h2, .raise-child h2 {
    font-size: 20px;
    margin-bottom: 10px;
}

.recommended img, .raise-child img {
    width: 100%;
    border-radius: 10px;
}

.tags {
    font-size: 18px;
    color: #888;
}

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

.icon-containerF {
    display: flex;
    justify-content: space-between;
    background-color: white;
    align-items: center;
    padding: 10px;
    width: 370px;
}

.icon, .menu {
    width: 25px;
    height: 25px;
    cursor: pointer;
    transition: transform 0.2s;
    font-size: 20px;
}

.icon:hover {
    transform: scale(1.1);
}

#wrapperF {
    height: auto;
    min-height: 100%;
    padding-bottom: (footer높이);
}

.crops-container {
    display: flex;
    overflow-x: hidden;
}
</style>
</head>
<body>
    <!-- 작물 정보 DB 리스트 가져오기 -->
    <%
        List<CropDTO> allCrop = new CropDAO().allCrop();
    %>
    <div id="root">
        <div class="containerM">
            <div class="headerM">
                <a href="MyPage.jsp" style="text-decoration: none; color: black;">
                    <div class="menu">☰</div>
                </a>
                <h1>하루농사</h1>
                <a href="Notify.jsp" style="text-decoration: none;">
                    <div class="icon">🔔</div>
                </a>
            </div>
            <div class="contentM">
                <h4>
                    베란다에서 무엇을 키울 수 있을까요?
                </h4>
                <div class="InfosM">
                    <div class="crops-container" id="crops-container">
                        <% for(CropDTO c: allCrop){ %>
                            <div class="crop">
                                <!-- 폼을 추가하여 이미지를 클릭하면 데이터를 전송 -->
                                <form action="InfoDetail.jsp" method="POST" id="cropForm<%= c.getCropidx() %>" style="display: none;">
                                    <input type="hidden" name="cropname" value="<%= c.getCropname() %>">
                                    <input type="hidden" name="image" value="<%= c.getImage() %>">
                                    <input type="hidden" name="cropidx" value="<%= c.getCropidx() %>">
                                    <input type="hidden" name="feature" value="<%= c.getFeature() %>">
                                    <input type="hidden" name="sowingperiod" value="<%= c.getSowingperiod() %>">
                                    <input type="hidden" name="sowingmethod" value="<%= c.getSowingmethod() %>">
                                    <input type="hidden" name="cultivationmethod" value="<%= c.getCultivationmethod() %>">
                                    <input type="hidden" name="harvestperiod" value="<%= c.getHarvestperiod() %>">
                                    <input type="hidden" name="diseasepestinfo" value="<%= c.getDiseasepestinfo() %>">
                                    <input type="hidden" name="recipe" value="<%= c.getRecipe() %>">
                                </form>
                                <a href="#" onclick="document.getElementById('cropForm<%= c.getCropidx() %>').submit();" style="text-decoration: none; color: black;">
                                    <img src="<%= c.getImage() %>" alt="<%= c.getCropname() %>">
                                    <p><%= c.getCropname() %></p>
                                </a>
                            </div>
                        <% } %>
                    </div>
                </div>
                <!-- 추천 농작물 섹션 -->
                <a href="#" onclick="document.getElementById('cropFormRecommended').submit();" style="text-decoration: none; color: black;">
                    <div class="recommended">
                        <h2>이달의 추천 농작물<br><%= allCrop.get(8).getCropname() %></h2>
                        <img src="<%= allCrop.get(8).getImage() %>" alt="<%= allCrop.get(8).getCropidx() %>">
                        <p class="tags">#쑥쑥 #금방</p>
                    </div>
                </a>
                <form action="InfoDetail.jsp" method="POST" id="cropFormRecommended" style="display: none;">
                    <input type="hidden" name="cropname" value="<%= allCrop.get(8).getCropname() %>">
                    <input type="hidden" name="image" value="<%= allCrop.get(8).getImage() %>">
                    <input type="hidden" name="cropidx" value="<%= allCrop.get(8).getCropidx() %>">
                </form>
                <a href="#" onclick="document.getElementById('cropFormEco').submit();" style="text-decoration: none; color: black;">
                    <div class="recommended">
                        <h2>친환경 텃밭 가꾸기<br><%= allCrop.get(9).getCropname() %></h2>
                        <img src="<%= allCrop.get(9).getImage() %>" alt="<%= allCrop.get(9).getCropidx() %>">
                        <p class="tags">#쑥쑥 #금방</p>
                    </div>
                </a>
                <form action="InfoDetail.jsp" method="POST" id="cropFormEco" style="display: none;">
                    <input type="hidden" name="cropname" value="<%= allCrop.get(9).getCropname() %>">
                    <input type="hidden" name="image" value="<%= allCrop.get(9).getImage() %>">
                    <input type="hidden" name="cropidx" value="<%= allCrop.get(9).getCropidx() %>">
                </form>
                <a href="#" onclick="document.getElementById('cropFormKids').submit();" style="text-decoration: none; color: black;">
                    <div class="recommended">
                        <h2>아이들과 함께 이런 곳은 어때요?<br><%= allCrop.get(10).getCropname() %></h2>
                        <img src="<%= allCrop.get(10).getImage() %>" alt="<%= allCrop.get(10).getCropidx() %>">
                        <p class="tags">#쑥쑥 #금방</p>
                    </div>
                </a>
                <form action="InfoDetail.jsp" method="POST" id="cropFormKids" style="display: none;">
                    <input type="hidden" name="cropname" value="<%= allCrop.get(10).getCropname() %>">
                    <input type="hidden" name="image" value="<%= allCrop.get(10).getImage() %>">
                    <input type="hidden" name="cropidx" value="<%= allCrop.get(10).getCropidx() %>">
                </form>
                <!--  -->
                <div id='wrapperF'>
                    <div class="icon-containerF">
                        <a href="HeartInfo.jsp" style="text-decoration: none;">
                            <div class="icon">❤️</div>
                        </a>
                        <a href="GrowPost.jsp" style="text-decoration: none;">
                            <div class="icon">✏️</div>
                        </a>
                        <a href="GrowPostManage.jsp" style="text-decoration: none;">
                            <div class="icon">📰</div>
                        </a>
                        <a href="EcoActivityMain.jsp" style="text-decoration: none;">
                            <div class="icon">🌱</div>
                        </a>
                        <a href="Store.jsp" style="text-decoration: none;">
                            <div class="icon">💼</div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script>
window.onload = function() {
    const container = document.getElementById('crops-container');
    let scrollAmount = 0;
    const scrollMax = container.scrollWidth - container.clientWidth;

    function autoScroll() {
        scrollAmount += 1;
        if (scrollAmount > scrollMax) {
            scrollAmount = 0;
        }
        container.scrollLeft = scrollAmount;
        console.log("Scrolling:", scrollAmount); // 로그 추가
    }

    setInterval(autoScroll, 20);
}
</script>
</html>
