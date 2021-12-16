package order.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import order.service.OrderService;
import order.service.dao.OrderDAO;
import order.vo.OrderVO;


@Service("orderService")
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	private OrderDAO orderDao;

	@Override
	public List<OrderVO> selectBoardList(OrderVO orderVo){
		return orderDao.selectBoardList(orderVo);
	}

	@Override
	public void setPut(OrderVO orderVo) {
		orderDao.put(orderVo);
	}

}
