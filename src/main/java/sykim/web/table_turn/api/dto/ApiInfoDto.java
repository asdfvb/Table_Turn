package sykim.web.table_turn.api.dto;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@RequiredArgsConstructor
@Setter
@Getter
public class ApiInfoDto {
    private String url;
    private String token;

}
