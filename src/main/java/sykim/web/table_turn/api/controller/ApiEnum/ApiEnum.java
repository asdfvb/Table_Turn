package sykim.web.table_turn.api.controller.ApiEnum;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import sykim.web.table_turn.api.dto.ApiInfoDto;

import java.util.function.Function;

@RequiredArgsConstructor
@Getter
public enum ApiEnum {
    KAKAO_CURRENT_LOCATION(
        "KAKAO00001"
        , "https://dapi.kakao.com/v2/local/geo/coord2address.json", (dto) -> {
            return new ApiInfoDto();
    })
    ;

    private String code;
    private String url;
    private Function<ApiInfoDto, ApiInfoDto> getRequestInfo;

    ApiEnum(String code, String url, Function<ApiInfoDto, ApiInfoDto> getRequestInfo) {
        this.code = code;
        this.url = url;
        this.getRequestInfo = getRequestInfo;
    }
}
