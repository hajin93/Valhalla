package order.service;

import java.util.List;

import order.vo.OrderVO;


public interface OrderService {
	public void setPut(OrderVO orderVo) throws Exception;
	public void setwishPut(OrderVO orderVo) throws Exception;
	public List<OrderVO> getuserwishList(OrderVO orderVo)throws Exception;
	public List<OrderVO> getuserbasketList(OrderVO orderVo)throws Exception;
}
