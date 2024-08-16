package sykim.web.table_turn.common.dao;

import org.apache.ibatis.annotations.Mapper;
import sykim.web.table_turn.common.vo.VisitorVo;

@Mapper
public interface VisitorDao {
    int insertVisitor(VisitorVo visitor);
}
