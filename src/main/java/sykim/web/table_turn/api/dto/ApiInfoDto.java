package sykim.web.table_turn.api.dto;

import lombok.*;
import sykim.web.table_turn.api.controller.ApiEnum.ApiEnum;
import sykim.web.table_turn.common.dao.ApiQuery;

import java.util.List;

@Setter
@Getter
@Builder
@RequiredArgsConstructor
@AllArgsConstructor
public class ApiInfoDto {
    private String url;     //Request url
    private String token;   //Rest API Token
    private String apiCode; //Request Code
    private ApiQuery dto;     //Request Parameter
    @Setter(AccessLevel.NONE)
    private ApiEnum api;    //Request Enum


    //documents field
    private List<ApiInfoDto> documents;
    private String address_name;
    private String category_group_code;
    private String category_group_name;
    private String category_name;
    private String distance;
    private String id;
    private String phone;
    private String place_name;
    private String place_url;
    private String road_address_name;
    private String x;
    private String y;

    //meta field
    private ApiInfoDto meta;
    private String keyword;
    private String selected_region;


    private void getApiEnum(){
        this.api = ApiEnum.findApiInfo(this.apiCode);
    }

    public void setApiCode(String apiCode){
        this.apiCode = apiCode;
        this.getApiEnum();
    }
}
