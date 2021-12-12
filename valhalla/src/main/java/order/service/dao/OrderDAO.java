package order.service.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import order.vo.OrderVO;


@Transactional
@Component
public class OrderDAO {

	@Autowired
	private SqlSession sqlSession;
	
	public List<OrderVO> selectBoardList(OrderVO orderVo) {
		return sqlSession.selectList("orderDAO.selectBoardList", orderVo);
	}
	
}
