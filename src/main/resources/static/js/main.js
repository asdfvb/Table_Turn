const swiperClass1 = null;

$(async () => {

    //버튼 이벤트 함수
    setButtonEvent();

    //접속한 사용자 위치 바인딩
    await loadCurrentLocation( searchPlaceList );

    categoryEvent();
});

function setButtonEvent(){

    //현위치로 설정 버튼 클릭 이벤트
    $("#btnCurrentArea").click((e) => {
        loadCurrentLocation( searchPlaceList );
    });

    $("#btnSearchPlace").click(async (e) => {

        var _inptSearchPlace = $("#inptSearchPlace");

        searchPlaceList(_inptSearchPlace.val());
    });
}

