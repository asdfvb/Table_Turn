package sykim.web.table_turn.api.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestClient;
import sykim.web.table_turn.api.dto.ApiInfoDto;

import java.util.HashMap;

@RestController
@RequiredArgsConstructor
public class RouteController {

    private final RestClient restClient;

    private final ObjectMapper objectMapper;

    @Value("${kakao_location_api_key}")
    private String KAKAO_LOCATION_API_KEY;

    @PostMapping(value = "/apiRequestByGetMethod")
    public String apiRequestByGetMethod(@RequestBody ApiInfoDto param) {

        String body = restClient.get()
                .uri(param.getApi().getUrl(param))
                .header("Authorization", "KakaoAK "+KAKAO_LOCATION_API_KEY)
                .retrieve()
                .toEntity(String.class)
                .getBody();

       return body;
    }

    @PostMapping(value = "/apiRequestWithImageByGetMethod")
    public String apiRequestWithImageByGetMethod(@RequestBody ApiInfoDto param) throws JsonProcessingException {

        String result = apiRequestByGetMethod(param);

        ApiInfoDto apiInfoDto = this.objectMapper.readValue(result, ApiInfoDto.class);

        for(ApiInfoDto apiResult : apiInfoDto.getDocuments()){

        }

        String body = restClient.get()
                .uri(param.getApi().getUrl(param))
                .header("Authorization", "KakaoAK "+KAKAO_LOCATION_API_KEY)
                .retrieve()
                .toEntity(String.class)
                .getBody();

        return body;
    }

}
