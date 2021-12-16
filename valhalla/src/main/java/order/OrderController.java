package order;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import order.service.impl.OrderServiceImpl;
import order.vo.OrderVO;


@Controller
@RequestMapping("/")
public class OrderController {
	
	@Autowired
	private OrderServiceImpl OrderServiceImpl;

	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);
	
	
	@RequestMapping("orderBasket.do")
	public String order_basket(){
		logger.debug("log찍기 example~ 처음써보는거니 구글링~");
		return "/order/order_basket";

	}
	
	@RequestMapping("orderOrderform.do")
	public String order_orderform(){
		logger.debug("log찍기 example~ 처음써보는거니 구글링~");
		return "/order/order_orderform"; 

	}
	
	@RequestMapping("orderOrderResult.do")
	public String order_order_result(){
		logger.debug("log찍기 example~ 처음써보는거니 구글링~");
		return "/order/order_order_result"; 

	}
	
	@RequestMapping("cartPut.do")
	 @ResponseBody
	   public Map<String,Object> putAjax(OrderVO orderVo){
		   Map<String,Object> map = new HashMap<String,Object>();
		   
		   OrderServiceImpl.setPut(orderVo);
		     
		   return map;
	   }
}
