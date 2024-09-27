const customAjax = (options) => {
    const url = options.url || "";
    const data = options.data || {};
    const async = options.async || true //async 기본값 true
    const showLoading = ( options.showLoading == undefined || options.showLoading == null ) ? true : options.showLoading; //showLoading 기본값 true
    const elementIds = options.elementIds || [];
    const elementNames = options.elementNames || [];
    const successFunc = options.successFunc || null;
    const errorFunc = options.errorFunc || null;
    const headers = options.headers || {};
    const completeFunc = options.completeFunc || null;

    return $.ajax({
        url : url,
        method: "POST",
        type: "json",
        async: async,
        contentType: "application/json; charset=utf-8",
        data : JSON.stringify(data),
        success : function(data,status,request){

            if(typeof successFunc === "function"){successFunc(data);}
            designer(false);

        }, error : function(request,status,error) {

            designer(false);

            if(request.status == 404) {
                err("status : " + request.status + ". 유효하지 않은 주소 입니다.");
                return false;
            }

            if(request.status == 401) {
                warn("다시 로그인을 해야 합니다.");
                document.location.href="/logout.lims";
                return false;
            } else {
                if(request.responseText != undefined){
                    const resTxt = JSON.parse(request.responseText);
                    if( !!resTxt.error ){
                        const errorMsg = (!!resTxt.error.dvlprDc) ? resTxt.error.dvlprDc : "[ system message가 제공되지 않았습니다. 관리자에게 문의해 주세요.]";
                        warn(
                            "system code : " + resTxt.error.excpLogSeqno + "<br/>"
                            + "system message : " + errorMsg + "<br/>"
                        );
                    }
                }
            }

            if(typeof errorFunc === "function"){errorFunc(request, status, error);}
        }
        ,complete : function(){
            if(typeof completeFunc === "function"){completeFunc();}
            designer(false);
        }
    });

    /**
     * ajax designer.
     */
    function designer(bool) {

        // mouse cursor wait !
        (bool) ? $('html').css("cursor", "wait") : $('html').css("cursor", "auto");

        buttonDisable(elementIds,elementNames,bool);

        // loading Spinner
        if(showLoading){
            (bool) ? $("#wrap-loading").show() : $("#wrap-loading").hide();
        }
    }

    //button disabled true or false
    function buttonDisable(elementIds,elementNames,bool){

        if(elementIds.length > 0){
            for(let i=0; i<elementIds.length; i++){
                const el = elementIds[i];
                document.getElementById(el).disabled = bool;
            }
        }

        if(elementNames.length > 0){
            for(let i=0; i<elementNames.length; i++){
                const name = elementNames[i];
                const elements = document.getElementsByName(name);

                for(let k=0; k<elements.length; k++){
                    const el = elements[k];
                    el.disabled = bool;
                }
            }
        }
    }
}

class SwiperClass {

    swiper = null;

    isPossiblStart = true;

    constructor(obj) {


        if(!obj.swiperTarget){
            console.warn("swiperTarget 객체를 찾을 수 없습니다.");
            this.isPossiblStart = false;
        }

        if(!obj.pagingEl){
            console.warn("pagingEl 객체를 찾을 수 없습니다.");
            this.isPossiblStart = false;
        }

        if(!obj.navigateNextTarget || !obj.navigatePrevTarget){
            console.warn(("navigateTarget 객체를 찾을 수 없습니다."))
            this.isPossiblStart = false;
        }

        this.swiperTarget = obj.swiperTarget;
        this.spaceBetween = obj.spaceBetween || 30;
        this.centeredSlides = obj.centeredSlides || true;
        this.delay = obj.delay || 5000;
        this.disableOnInteraction = obj.disableOnInteraction || false;
        this.pagingEl = obj.pagingEl;
        this.clickable = obj.clickable || true;
        this.navigateNextTarget = obj.navigateNextTarget;
        this.navigatePrevTarget = obj.navigatePrevTarget;

    }

    createSwiper(){

        if(!this.isPossiblStart){
            console.warn("Swiper 객체를 생성 할 수 없습니다.");
            return false;
        }

        this.swiper =  new Swiper(this.swiperTarget, {
            spaceBetween: this.spaceBetween,
            centeredSlides: this.centeredSlides,
            autoplay: {
                delay: this.delay,
                disableOnInteraction: this.disableOnInteraction,
            },
            pagination: {
                el: this.pagingEl,
                clickable: this.clickable,
            },
            navigation: {
                nextEl: this.navigateNextTarget,
                prevEl: this.navigatePrevTarget
            },
        });
    }
}

const apiRequestByGetMethod = async (param) => {
    return await customAjax({
        url: "/apiRequestByGetMethod"
        ,data: param
    });
}

//경도 x, y 좌표를 이용하여 해당 위치 정보 찾는 메소드
const locationInfoByKaKao = async (param) => {
    const locationInfo = await apiRequestByGetMethod(param);

    return JSON.parse(locationInfo);


}

//현재 위치 정보 구하는 메소드
const loadCurrentLocation = async (callback, keyword) => {

    await navigator.geolocation.getCurrentPosition(async (pos) => {
        let info = await locationInfoByKaKao({
            dto: {
                longitude: pos.coords.longitude
                , latitude: pos.coords.latitude
            }
            , apiCode: "KAKAO00001"
        });

        const roadName = info.documents[0].road_address.address_name;

        $("#locationInfo").text(roadName);

        if(typeof callback === "function"){
            callback(roadName + " 맛집");
        }
    }, err => {
        console.warn(err);
    }, {
        enableHighAccuracy : true,
        timeout : 5000,
        maximumAge : 0
    });


}


//장소 검색 리스트 구하기
const findPlaceList = async (param) => {
    const placeList = await apiRequestByGetMethod(param);

    if(!placeList) {
        alert("찾을수 없는 장소 입니다.");
        return false;
    }

    return JSON.parse(placeList);
}

const drawPlaceListByCategory = (target, swiperTarget, categoryName, placeList) => {
    const _target = $(target);
    const lastIndex = $(".mainSwiper").length + 1;
    let _swiperHtml = `
        <div class="swiper mainSwiper${lastIndex}">
        <h2>${categoryName}</h2>
            <div class="swiper-wrapper">
    `;

    let _swiperItemHtml = '';

    for (let i = 0; i < placeList.length; i++){

        if (i % 3 == 0) {
            _swiperItemHtml += '<div class="swiper-slide"><div class="restaurant-list">';
        }

        _swiperItemHtml += `
            <div class="restaurant-item">
                <a href="${placeList[i].place_url}" style="text-decoration-line: none; cursor: pointer;" target="_blank">
                <img src="assets/img/bg-showcase-1.jpg" alt="Restaurant Image" />
                <div class="restaurant-info">
                    <h3>${placeList[i].place_name}</h3>
                    <p>Location: ${placeList[i].road_address_name}</p>
                    <p></p>
                </div>
                </a>
            </div>
        `;

        if ((i % 3 == 2) || placeList.length == i) {
            _swiperItemHtml += '</div></div>';
        }

    }

    _swiperItemHtml += `
            </div>  
            <div class="swiper-pagination paging${lastIndex}"></div>
            <div class="swiper-button-prev btnPrev${lastIndex}"></div>
            <div class="swiper-button-next btnNext${lastIndex}"></div>
        </div>
    `;


    _swiperHtml += _swiperItemHtml;


    _swiperHtml += "</div>";

    _target.html(_swiperHtml);

    swiperTarget = new SwiperClass({
        swiperTarget: ".mainSwiper"+lastIndex
        , pagingEl: ".paging"+lastIndex
        , navigateNextTarget: ".btnNext"+lastIndex
        , navigatePrevTarget: ".btnPrev"+lastIndex
    });

    swiperTarget.createSwiper();
}

const searchPlaceList = async (keyword) => {
    if(!keyword){
        alert("검색어를 입력해주세요");
        return false;
    }

    const placeList = await findPlaceList({
        apiCode: "KAKAO00002"
        , dto: {
            searchPlaceName: keyword
        }
    });

    console.log(placeList);

    drawPlaceListByCategory(".main-content", swiperClass1, "맛집 랭킹", placeList.documents);
}

const categoryEvent = () => {
    const categories = $(".category p");

    categories.click((e) => {
       e.target.classList.contains("clicked")
           ? e.target.classList.remove("clicked")
           : e.target.classList.add("clicked")


    });
}