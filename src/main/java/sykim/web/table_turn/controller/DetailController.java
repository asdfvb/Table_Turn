package sykim.web.table_turn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DetailController {

    @GetMapping("/detail")
    public String detailPage(){
        return "detail";
    }
}
