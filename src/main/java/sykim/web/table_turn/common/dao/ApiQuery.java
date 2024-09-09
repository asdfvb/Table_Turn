package sykim.web.table_turn.common.dao;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ApiQuery {
    private String searchPlaceName;
    private String longitude; //경도 x
    private String latitude; //경도 y
}
