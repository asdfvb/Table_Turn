/*!
* Start Bootstrap - Landing Page v6.0.6 (https://startbootstrap.com/theme/landing-page)
* Copyright 2013-2023 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-landing-page/blob/master/LICENSE)
*/
// This file is intentionally blank
// Use this file to add JavaScript to your project

$(() => {
    navigator.geolocation.getCurrentPosition((pos => {
        console.log("success : ", pos);
        customAjax({
            url: "https://dapi.kakao.com/v2/local/geo/coord2address.json?x="+pos.coords.longitude+'&y=' + pos.coords.latitude
            ,method: "GET"
            ,headers: {'Authorization' : 'KakaoAK ed7f5e1e8b31dc1156e3276d9584c7a0'}
            ,successFunc: (result) => {
                console.log(result);
            }
        })
    }), err => {
        console.warn(err);
    }, {
        enableHighAccuracy : true,
        timeout : 5000,
        maximumAge : 0
    });
})