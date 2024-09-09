const swiperClass = new SwiperClass({
    swiperTarget: ".mainSwiper"
    , pagingEl: ".swiper-pagination"
    , navigateNextTarget: ".swiper-button-next"
    , navigatePrevTarget: ".swiper-button-prev"
});

$(() => {

    //버튼 이벤트 함수
    setButtonEvent();

    //로드한 사용자 위치 바인딩
    loadCurrentLocation();

    //main페이지 카테고리별 추천 식당 슬라이드
    startSwiper();
});

function setButtonEvent(){

    //현위치로 설정 버튼 클릭 이벤트
    $("#btnCurrentArea").click((e) => {
        loadCurrentLocation();
    });

    $("#btnSearchPlace").click(async (e) => {

        var _inptSearchPlace = $("#inptSearchPlace");

        if(!_inptSearchPlace.val()){
            alert("검색어를 입력해주세요");
            _inptSearchPlace.focus();
            return false;
        }

        const placeList = await findPlaceList({
            apiCode: "KAKAO00002"
            , dto: {
                searchPlaceName: _inptSearchPlace.val()
            }
        });

        console.log(placeList);
    });
}

function startSwiper(){
    swiperClass.createSwiper();
}

