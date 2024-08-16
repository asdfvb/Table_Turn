package sykim.web.table_turn.config.listener;

import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.HttpSessionEvent;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.SpyBean;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

import static org.junit.jupiter.api.Assertions.*;

@WebMvcTest
public class SessionListenerTest {

    @Autowired
    MockMvc mockMvc;

    @SpyBean
    private SessionListener sessionListener;

    @Test
    void testSessionListener() {
        MockHttpServletRequest request = new MockHttpServletRequest();

//        this.mockMvc.perform( get("/") )
    }

}