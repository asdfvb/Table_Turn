package sykim.web.table_turn.common.vo;


import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class VisitorVo {
    private String visitorIp;
    private String visitorTime;
    private String visitorRefer;
    private String visitorAgent;

    public VisitorVo(String remoteAddr, String agent, String referer) {
        this.visitorIp = remoteAddr;
        this.visitorAgent = agent;
        this.visitorRefer = referer;
    }
}
