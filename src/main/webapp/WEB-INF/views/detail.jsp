<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Restaurant Details</title>
    <link rel="stylesheet" type="text/css" href="css/custom.css">
</head>
<body>
<div class="restaurant-header">
    <img src="assets/img/bg-masthead.jpg" alt="Selected Restaurant Image" class="restaurant-image"/>
    <div class="overlay">
        <div class="restaurant-summary">
            <h2>Restaurant Name</h2>
            <p>Address: Example Address</p>
            <p>Rating: ★★★★☆</p>
        </div>
        <div class="restaurant-actions">
            <button>Get Directions</button>
            <button>Call</button>
            <button>Save</button>
        </div>
    </div>
</div>

<div class="main-content flex">
    <div class="restaurant-details">
        <h3>Details</h3>
        <p>Information about the restaurant...</p>
    </div>

    <div class="restaurant-menu-reviews">
        <div class="menu">
            <h3>Menu</h3>
            <p>Display the menu items...</p>
        </div>
        <div class="reviews">
            <h3>Reviews</h3>
            <p>Display user reviews...</p>
        </div>
    </div>
</div>
</body>
</html>
