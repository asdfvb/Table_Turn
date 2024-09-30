<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Table-Turn</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <link rel="stylesheet" type="text/css" href="css/custom.css">
    <link rel="stylesheet" type="text/css" href="css/popup.css">
</head>

<body>
<div class="header">
    <h1>Find Your Favorite Restaurant</h1>
    <div class="search-bar">
        <input type="text" id="inptSearchPlace" placeholder="Search..." />
        <button id="btnSearchPlace" class="searchBtn">검색</button>
    </div>
    <div class="buttons">
        <button id="openPopup">지역 선택</button>
        <button id="btnCurrentArea">현 위치로 설정</button>
    </div>
    <p class="note" id="locationInfo"></p>
    <div class="category">
        <p>#Top Rated</p>
        <p>#Popular</p>
        <p>#Fine Dining</p>
        <p>#Casual</p>
        <p>#Delivery Available</p>
        <p>#Date Night</p>
    </div>
</div>

<div class="main-content"></div>

<div id="locationPopup" class="popup">
    <div class="popup-content">
        <span class="close">&times;</span>
        <h2>지역 선택</h2>
        <div class="select-container">
            <select id="city">
                <option value="">시/도 선택</option>
            </select>
            <select id="district" disabled>
                <option value="">시/군/구 선택</option>
            </select>
            <select id="dong" disabled>
                <option value="">읍/면/동 선택</option>
            </select>
        </div>
    </div>
</div>

<%--javascript cdn--%>
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>

<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

<!-- Core theme JS-->
<script src="js/common.js"></script>
<script src="js/main.js"></script>

</body>
</html>