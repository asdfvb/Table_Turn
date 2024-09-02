package sykim.web.table_turn.api.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestClient;
import sykim.web.table_turn.api.controller.ApiEnum.ApiEnum;
import sykim.web.table_turn.common.dao.MapDto;

@RestController
@RequiredArgsConstructor
public class RouteController {

    private final RestClient restClient;

    @Value("${kakao_location_api_key}")
    private String KAKAO_LOCATION_API_KEY;

    @PostMapping(value = "/getCurrentLocation")
    public String getApiRequestInfo(@RequestBody MapDto dto) {
        String body = restClient.get()
                .uri(ApiEnum.KAKAO_CURRENT_LOCATION.getUrl() + "?x="+dto.getLongitude() + "&y="+dto.getLatitude())
                .header("Authorization", "KakaoAK "+KAKAO_LOCATION_API_KEY)
                .retrieve()
                .toEntity(String.class)
                .getBody();

       return body;
    }

}
