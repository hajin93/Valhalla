package order.service;

import java.util.List;

import order.vo.OrderVO;


public interface OrderService {
	public List<OrderVO> selectBoardList(OrderVO orderVo) throws Exception;
	public void setPut(OrderVO orderVo) throws Exception;
}
