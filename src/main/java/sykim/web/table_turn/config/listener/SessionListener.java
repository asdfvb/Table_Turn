package sykim.web.table_turn.config.listener;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.HttpSessionEvent;
import jakarta.servlet.http.HttpSessionListener;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import sykim.web.table_turn.common.dao.VisitorDao;
import sykim.web.table_turn.common.vo.VisitorVo;

@Component
@RequiredArgsConstructor
public class SessionListener implements HttpSessionListener {


    private final VisitorDao visitorDao;

    @Override
    public void sessionCreated(HttpSessionEvent args) {
        HttpSession session = args.getSession();
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();

        VisitorVo visitor = new VisitorVo(
                request.getRemoteAddr(), request.getHeader("User-Agent"), request.getHeader("referer")
        );

        this.visitorDao.insertVisitor(visitor);

    }
}
