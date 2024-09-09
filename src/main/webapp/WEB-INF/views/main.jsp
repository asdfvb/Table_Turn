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

<div class="main-content">

    <div class="swiper mainSwiper">
        <!-- Additional required wrapper -->
        <div class="swiper-wrapper">
            <!-- Slides -->
            <div class="swiper-slide">
                <h2>Category Name</h2>
                <div class="restaurant-list">
                    <!-- Repeat this block for each restaurant -->
                    <div class="restaurant-item">
                        <img src="assets/img/bg-showcase-1.jpg" alt="Restaurant Image" />
                        <div class="restaurant-info">
                            <h3>Restaurant Name</h3>
                            <p>Location: Example Address</p>
                            <p>Rating: ★★☆☆☆</p>
                        </div>
                    </div>
                    <!-- Repeat this block for each restaurant -->
                    <div class="restaurant-item">
                        <img src="assets/img/bg-showcase-2.jpg" alt="Restaurant Image" />
                        <div class="restaurant-info">
                            <h3>Restaurant Name</h3>
                            <p>Location: Example Address</p>
                            <p>Rating: ★★☆☆☆</p>
                        </div>
                    </div>
                    <!-- Repeat this block for each restaurant -->
                    <div class="restaurant-item">
                        <img src="assets/img/bg-showcase-2.jpg" alt="Restaurant Image" />
                        <div class="restaurant-info">
                            <h3>Restaurant Name</h3>
                            <p>Location: Example Address</p>
                            <p>Rating: ★☆☆☆☆</p>
                        </div>
                    </div>
                <!-- End of restaurant block -->
                </div>
            </div>

            <div class="swiper-slide">
                <h2>Category Name2</h2>
                <div class="restaurant-list">
                    <!-- Repeat this block for each restaurant -->
                    <div class="restaurant-item">
                        <img src="assets/img/bg-showcase-1.jpg" alt="Restaurant Image" />
                        <div class="restaurant-info">
                            <h3>Restaurant Name</h3>
                            <p>Location: Example Address</p>
                            <p>Rating: ★★★★☆</p>
                        </div>
                    </div>
                    <!-- Repeat this block for each restaurant -->
                    <div class="restaurant-item">
                        <img src="assets/img/bg-showcase-2.jpg" alt="Restaurant Image" />
                        <div class="restaurant-info">
                            <h3>Restaurant Name</h3>
                            <p>Location: Example Address</p>
                            <p>Rating: ★★★★☆</p>
                        </div>
                    </div>
                    <!-- Repeat this block for each restaurant -->
                    <div class="restaurant-item">
                        <img src="assets/img/bg-showcase-2.jpg" alt="Restaurant Image" />
                        <div class="restaurant-info">
                            <h3>Restaurant Name</h3>
                            <p>Location: Example Address</p>
                            <p>Rating: ★★★★☆</p>
                        </div>
                    </div>
                    <!-- End of restaurant block -->
                </div>
            </div>
        </div>
        <!-- If we need pagination -->
        <div class="swiper-pagination"></div>

        <!-- If we need navigation buttons -->
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
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