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
	
	@RequestMapping("orderForm.do")
	public String orderForm(Model model, OrderVO orderVo) {
		List<OrderVO> productList = OrderServiceImpl.getProductList(orderVo);
		model.addAttribute("productList", productList); // 주문상품정보
		model.addAttribute("orderQuantity", orderVo.getQuantity()); // 주문수량
		model.addAttribute("orderPrice", orderVo.getTotalPrice()); // 결제정보

		return "/order/orderForm";

	}
	
	@RequestMapping("orderPut.do")
	@ResponseBody
	public Map<String, Object> orderputAjax(OrderVO orderVo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("productNo", orderVo.getProductNo());
		map.put("quantity", orderVo.getQuantity());
		map.put("totalPrice", orderVo.getTotalPrice());

		return map;
	}
	
	@RequestMapping("orderResult.do")
	public String orderResult(Model model, OrderVO orderVo) throws Exception {
		OrderServiceImpl.setorderPut(orderVo);
		
		String orderNo = OrderServiceImpl.getOrderNo(orderVo);
		String orderPrice = OrderServiceImpl.getOrderPrice(orderVo);
		orderVo.setOrderNo(orderNo);
		orderVo.setOrderPrice(orderPrice);
		System.out.println(orderPrice);
		model.addAttribute("orderNo", orderNo);
		model.addAttribute("orderPrice", orderPrice);
		return "/order/orderResult";

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
