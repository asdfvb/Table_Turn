<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Restaurant Recommendation</title>
    <link rel="stylesheet" type="text/css" href="css/custom.css">
</head>
<body>
<div class="header">
    <h1>Find Your Favorite Restaurant</h1>
    <div class="search-bar">
        <input type="text" placeholder="Search..." />
    </div>
    <div class="buttons">
        <button>Region Selection</button>
        <button>Set Location</button>
    </div>
    <p class="note">Provide location-based search information...</p>
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
    <div class="restaurant-list-header">
        <h2>Category Name</h2>
        <div class="restaurant-list-option">
            <select>
                <option>이름순</option>
                <option>평점순</option>
                <option>리뷰순</option>
            </select>
        </div>
    </div>

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
                <p>Rating: ★★★★★</p>
            </div>
        </div>
        <!-- Repeat this block for each restaurant -->
        <div class="restaurant-item">
            <img src="assets/img/bg-showcase-2.jpg" alt="Restaurant Image" />
            <div class="restaurant-info">
                <h3>Restaurant Name</h3>
                <p>Location: Example Address</p>
                <p>Rating: ★★★★★</p>
            </div>
        </div>
        <!-- End of restaurant block -->
    </div>
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
                <p>Rating: ★★★★★</p>
            </div>
        </div>
        <!-- Repeat this block for each restaurant -->
        <div class="restaurant-item">
            <img src="assets/img/bg-showcase-2.jpg" alt="Restaurant Image" />
            <div class="restaurant-info">
                <h3>Restaurant Name</h3>
                <p>Location: Example Address</p>
                <p>Rating: ★★★★★</p>
            </div>
        </div>
        <!-- End of restaurant block -->
    </div>
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
                <p>Rating: ★★★★★</p>
            </div>
        </div>
        <!-- Repeat this block for each restaurant -->
        <div class="restaurant-item">
            <img src="assets/img/bg-showcase-2.jpg" alt="Restaurant Image" />
            <div class="restaurant-info">
                <h3>Restaurant Name</h3>
                <p>Location: Example Address</p>
                <p>Rating: ★★★★★</p>
            </div>
        </div>
        <!-- End of restaurant block -->
    </div>
</div>
</body>
</html>