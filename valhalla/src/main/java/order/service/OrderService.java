package order.service;

import java.util.List;

import order.vo.OrderVO;


public interface OrderService {
	public void setorderPut(OrderVO orderVo) throws Exception;
	public void setcartPut(OrderVO orderVo) throws Exception;
	public void setPut(OrderVO orderVo) throws Exception;
	public void setwishPut(OrderVO orderVo) throws Exception;
	public List<OrderVO> getProductList(OrderVO orderVo) throws Exception;
	public List<OrderVO> getuserwishList(OrderVO orderVo)throws Exception;
	public List<OrderVO> getuserbasketList(OrderVO orderVo)throws Exception;
	public String getOrderNo(OrderVO orderVo) throws Exception;
	public String getOrderPrice(OrderVO orderVo) throws Exception;
}
