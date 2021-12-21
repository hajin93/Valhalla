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
	

	public void put(OrderVO orderVo) {
		sqlSession.selectList("orderDAO.put", orderVo);
	}

	public void wishput(OrderVO orderVo) {
		sqlSession.selectList("orderDAO.wishput", orderVo);
		
	}

	public List<OrderVO> userwishList(OrderVO orderVo) {
		return sqlSession.selectList("orderDAO.wishList", orderVo);
	}

	public List<OrderVO> userbasketList(OrderVO orderVo) {
		return sqlSession.selectList("orderDAO.basketList", orderVo);
	}
	
}
