<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Table-Turn</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" type="text/css" />
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
</head>
<body>
<!-- Navigation-->
<nav class="navbar navbar-light bg-light static-top">
    <div class="container">
        <a class="navbar-brand" href="#!" about="테이블의 경험을 바꾼다.">Table-Turn</a>
        <a class="btn btn-primary d-none" href="#signup">Sign Up</a>
    </div>
</nav>
<!-- Masthead-->
<header class="masthead">
    <div class="container position-relative">
        <div class="row justify-content-center">
            <div class="col-xl-6">
                <div class="text-center text-white">
                    <form class="form-subscribe" id="contactForm" data-sb-form-api-token="API_TOKEN">
                        <!-- Email address input-->
                        <div class="row mb-5">
                            <div class="col">
                                <input class="form-control form-control-lg" id="emailAddress" type="text" placeholder="맛집 이름을 검색해주세요."/>
                            </div>
                            <div class="col-auto"><button class="btn btn-primary btn-lg" id="btnSearchPlace">Search</button></div>
                        </div>

                        <div class="row mb-2">
                            <div class="col-auto"><button class="btn btn-primary btn-sm" id="btnSelectArea">지역 선택</button></div>
                            <div class="col-auto"><button class="btn btn-primary btn-sm" id="btnCurrentArea">현위치로 설정</button></div>
                        </div>

                        <div class="row mb-2">
                            <div class="col-auto">
                                <label id="inpSelectArea">서울시 가산디지털1로 212</label>
                            </div>
                        </div>
                        <div class="row" style="border: red 1px solid;">
                            <div class="col">
<%--                                카테고리 나열 하는 곳--%>
                                <label>카테고리 리스트 나열 될 곳</label>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</header>



<section class="showcase bg-light text-center">
    <div class="container">
        <h2>중식</h2>
        <div class="row">
            <div class="col-lg-4" style="padding:5rem;">
                <a target="_blank" href="#">
                    <span style="float:left; position: relative; width: 100%; height: 206px; overflow: hidden;">
                        <img style="position: absolute;left: 0;top: 0;width: 100%;height: 100%; object-fit: cover;" src="assets/img/bg-showcase-1.jpg"/>
                    </span>
                    <div>
                        <h2>Fully Responsive Design</h2>
                        <p class="lead mb-0">When you use a theme created by Start Bootstrap, you know that the theme will look great on any device, whether it's a phone, tablet, or desktop the page will behave responsively!</p>
                    </div>

                </a>
            </div>
            <div class="col-lg-4" style="padding:5rem;">
                <a target="_blank" href="#">
                    <span style="float:left; position: relative; width: 100%; height: 206px; overflow: hidden;">
                        <img style="position: absolute;left: 0;top: 0;width: 100%;height: 100%; object-fit: cover;" src="assets/img/bg-showcase-1.jpg"/>
                    </span>
                    <div>
                        <h2>Fully Responsive Design</h2>
                        <p class="lead mb-0">When you use a theme created by Start Bootstrap, you know that the theme will look great on any device, whether it's a phone, tablet, or desktop the page will behave responsively!</p>
                    </div>

                </a>
            </div>
            <div class="col-lg-4" style="padding:5rem;">
                <a target="_blank" href="#">
                    <span style="float:left; position: relative; width: 100%; height: 206px; overflow: hidden;">
                        <img style="position: absolute;left: 0;top: 0;width: 100%;height: 100%; object-fit: cover;" src="assets/img/bg-showcase-1.jpg"/>
                    </span>
                    <div>
                        <h2>Fully Responsive Design</h2>
                        <p class="lead mb-0">When you use a theme created by Start Bootstrap, you know that the theme will look great on any device, whether it's a phone, tablet, or desktop the page will behave responsively!</p>
                    </div>

                </a>
            </div>


        </div>
    </div>
</section>



<!-- Footer-->
<footer class="footer bg-light">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 h-100 text-center text-lg-start my-auto">
                <ul class="list-inline mb-2">
                    <li class="list-inline-item"><a href="#!">About</a></li>
                    <li class="list-inline-item">⋅</li>
                    <li class="list-inline-item"><a href="#!">Contact</a></li>
                    <li class="list-inline-item">⋅</li>
                    <li class="list-inline-item"><a href="#!">Terms of Use</a></li>
                    <li class="list-inline-item">⋅</li>
                    <li class="list-inline-item"><a href="#!">Privacy Policy</a></li>
                </ul>
                <p class="text-muted small mb-4 mb-lg-0">&copy; Your Website 2023. All Rights Reserved.</p>
            </div>
            <div class="col-lg-6 h-100 text-center text-lg-end my-auto">
                <ul class="list-inline mb-0">
                    <li class="list-inline-item me-4">
                        <a href="#!"><i class="bi-facebook fs-3"></i></a>
                    </li>
                    <li class="list-inline-item me-4">
                        <a href="#!"><i class="bi-twitter fs-3"></i></a>
                    </li>
                    <li class="list-inline-item">
                        <a href="#!"><i class="bi-instagram fs-3"></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</footer>
    <%--javascript cdn--%>
    <script src="https://code.jquery.com/jquery-3.6.1.js"></script>

    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Core theme JS-->
    <script src="js/common.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
