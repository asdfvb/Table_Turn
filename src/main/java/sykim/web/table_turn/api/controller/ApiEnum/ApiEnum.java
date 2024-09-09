package sykim.web.table_turn.api.controller.ApiEnum;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import sykim.web.table_turn.api.dto.ApiInfoDto;

import java.util.Arrays;
import java.util.function.Function;

@RequiredArgsConstructor
@Getter
public enum ApiEnum {
    KAKAO_CURRENT_LOCATION( //현재 위치 정보 조회
        "KAKAO00001"
        , "https://dapi.kakao.com/v2/local/geo/coord2address.json", (dto) -> {

            return dto.getApi().getUrl() + dto.getApi().getCommonQuery() + "&x="+dto.getDto().getLongitude()+"&y="+dto.getDto().getLatitude();
    })
    , KAKAO_SEARCH_PLACE( //장소 검색
        "KAKAO00002"
        ,"https://dapi.kakao.com/v2/local/search/keyword.json", (dto) -> {
            return dto.getApi().getUrl() + dto.getApi().getCommonQuery() + "&query="+dto.getDto().getSearchPlaceName();
    })
    , KAKAO_SEARCH_IMAGE(
        "KAKAO00003"
        ,  "https://dapi.kakao.com/v2/search/image", (dto) -> {
        return dto.getApi().getUrl() + "?sort=accuracy&query="+dto.getDto().getSearchPlaceName();
    })
    ;

    private String code;
    private String url;
    private String commonQuery="?category_group_code=FD6";
    private Function<ApiInfoDto, String> getRequestInfo;

    ApiEnum(String code, String url, Function<ApiInfoDto, String> getRequestInfo) {
        this.code = code;
        this.url = url;
        this.getRequestInfo = getRequestInfo;
    }

    public static ApiEnum findApiInfo(String code){
        return Arrays.asList(ApiEnum.values())
                .stream().filter(api -> api.getCode().equals(code))
                .findFirst()
                .orElseThrow(() -> new RuntimeException( code + "-> Not found code")
                );
    }

    public String getUrl(ApiInfoDto dto){
        return this.getRequestInfo.apply(dto);
    }
}
