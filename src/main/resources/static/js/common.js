const customAjax = (options) => {
    const url = options.url || "";
    const data = options.data || {};
    const async = options.async || true //async 기본값 true
    const method = options.method || "POST" //async 기본값 true
    const showLoading = ( options.showLoading == undefined || options.showLoading == null ) ? true : options.showLoading; //showLoading 기본값 true
    const elementIds = options.elementIds || [];
    const elementNames = options.elementNames || [];
    const successFunc = options.successFunc || null;
    const errorFunc = options.errorFunc || null;
    const headers = options.headers || {};
    const completeFunc = options.completeFunc || null;

    return $.ajax({
        url : url,
        method: method,
        type: "json",
        async: async,
        contentType: "application/json; charset=utf-8",
        data : JSON.stringify(data),
        headers : {
            'Authorization' : 'KakaoAK ed7f5e1e8b31dc1156e3276d9584c7a0'
        }, success : function(data,status,request){

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
        this.delay = obj.delay || 3000;
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

const loadCurrentLocation = () => {
    navigator.geolocation.getCurrentPosition((pos => {
        console.log("success : ", pos);

    }), err => {
        console.warn(err);
    }, {
        enableHighAccuracy : true,
        timeout : 5000,
        maximumAge : 0
    });
}

const locationInfoByKaKao = async (pos) => {


    await apiRequestInfo({
        targetCode: "KAKAO00001"
    });

    customAjax({
        url: "https://dapi.kakao.com/v2/local/geo/coord2address.json?x="+pos.coords.longitude+'&y=' + pos.coords.latitude
        ,method: "GET"
        ,headers: {'Authorization' : 'KakaoAK ed7f5e1e8b31dc1156e3276d9584c7a0'}
        ,successFunc: (result) => {
            console.log(result);
        }
    })
}
