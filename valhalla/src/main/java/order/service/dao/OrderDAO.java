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
	public void setorderPut(OrderVO orderVo) {
		sqlSession.selectList("orderDAO.setorderPut", orderVo);
	}

	public void setcartPut(OrderVO orderVo) {
		sqlSession.selectList("orderDAO.setcartPut", orderVo);
	}
	
	public List<OrderVO> getProductList(OrderVO orderVo) {
		return sqlSession.selectList("orderDAO.getProductList", orderVo);
	}

	public String getOrderNo(OrderVO orderVo) {
		return sqlSession.selectOne("orderDAO.getOrderNo", orderVo);
	}
	
	public String getOrderPrice(OrderVO orderVo) {
		return sqlSession.selectOne("orderDAO.getOrderPrice", orderVo);
	}

	public List<OrderVO> userwishList(OrderVO orderVo) {
		return sqlSession.selectList("orderDAO.wishList", orderVo);
	}

	public List<OrderVO> userbasketList(OrderVO orderVo) {
		return sqlSession.selectList("orderDAO.basketList", orderVo);
	}
	
}
