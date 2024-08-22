$(() => {

    loadCurrentLocation();


    //main페이지 카테고리별 추천 식당 슬라이드
    const swiperClass = new SwiperClass({
        swiperTarget: ".swiper"
        , pagingEl: ".swiper-pagination"
        , navigateNextTarget: ".swiper-button-next"
        , navigatePrevTarget: ".swiper-button-prev"
    });

    swiperClass.createSwiper();
})