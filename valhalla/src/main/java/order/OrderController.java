package order;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String order_basket(OrderVO orderVo, Model model){
			
			System.out.println("qweqwe_____" + orderVo);	
			
			List<OrderVO> list = new ArrayList<OrderVO>();
			
		    list = OrderServiceImpl.getuserbasketList(orderVo);
		    model.addAttribute("list", list);	
		
		
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
		   map.put("userNo", orderVo.getUserNo());
		   
		   return map;
	   }
	
	@RequestMapping("mypageWishlist.do")
	public String wish_list(OrderVO orderVo, Model model){
		
		System.out.println("qweqwe_____" + orderVo);	
		
		List<OrderVO> list = new ArrayList<OrderVO>();
		
	    list = OrderServiceImpl.getuserwishList(orderVo);
	    model.addAttribute("list", list);
	    
		
		return "/mypage/mypage_wish_list"; 
	}
	
	
	//위시리스트 ajax 작성자 하진
	@RequestMapping("wishPut.do")
	@ResponseBody
	public Map<String,Object> wishputAjax(OrderVO orderVo){
		Map<String,Object> map = new HashMap<String,Object>();
			   
		OrderServiceImpl.setwishPut(orderVo);
		map.put("userNo", orderVo.getUserNo());
			     
		return map;
	}
}
