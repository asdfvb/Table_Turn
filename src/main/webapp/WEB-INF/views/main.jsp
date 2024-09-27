<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Table-Turn</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <link rel="stylesheet" type="text/css" href="css/custom.css">
</head>

<body>
<div class="header">
    <h1>Find Your Favorite Restaurant</h1>
    <div class="search-bar">
        <input type="text" id="inptSearchPlace" placeholder="Search..." />
        <button id="btnSearchPlace" class="searchBtn">검색</button>
    </div>
    <div class="buttons">
        <button>지역 선택</button>
        <button id="btnCurrentArea">현 위치로 설정</button>
    </div>
    <p class="note" id="locationInfo"></p>
    <div class="category">
        <button>Top Rated</button>
        <button>Popular</button>
        <button>Fine Dining</button>
        <button>Casual</button>
        <button>Delivery Available</button>
        <button>Date Night</button>
    </div>
</div>

<div class="main-content"></div>
<%--javascript cdn--%>
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>

<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

<!-- Core theme JS-->
<script src="js/common.js"></script>
<script src="js/main.js"></script>

</body>
</html>