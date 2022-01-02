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
	public void setorderPut(OrderVO orderVo) {
		orderDao.setorderPut(orderVo);
	}

	@Override
	public void setcartPut(OrderVO orderVo) {
		orderDao.setcartPut(orderVo);
	}
	
	@Override
	public void setPut(OrderVO orderVo) {
		orderDao.put(orderVo);
	}
	
	@Override
	public void setwishPut(OrderVO orderVo) {
		orderDao.wishput(orderVo);
		
	}
	
	public List<OrderVO> getProductList(OrderVO orderVo) {
		return orderDao.getProductList(orderVo);
	}

	@Override
	public String getOrderNo(OrderVO orderVo) {
		return orderDao.getOrderNo(orderVo);
	}

	@Override
	public String getOrderPrice(OrderVO orderVo) {
		return orderDao.getOrderPrice(orderVo);
	}
	
	@Override
	public List<OrderVO> getuserwishList(OrderVO orderVo) {
		return orderDao.userwishList(orderVo);
	}

	@Override
	public List<OrderVO> getuserbasketList(OrderVO orderVo) {
		return orderDao.userbasketList(orderVo);
	}


}
