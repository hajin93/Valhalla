package product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import product.service.impl.ProductServiceImpl;
import product.vo.ProductVO;


@Controller
@RequestMapping("/")
public class ProductController {
   
   @Autowired
   private ProductServiceImpl productServiceImpl;

   private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
   
   @RequestMapping("productDetail.do")
   public String product_detail(ProductVO productVo, Model model){
      
      List<ProductVO> list = new ArrayList<ProductVO>();
      list = productServiceImpl.getProductNo(productVo);
      
      model.addAttribute("list", list.get(0));
      model.addAttribute("productNo", productVo.getProductNo());
      
      return "/product/product_detail"; 

   }
   
   @RequestMapping("index.do")
   public String main(HttpServletRequest request, ProductVO productVo, Model model) {
      List<ProductVO> list = new ArrayList<ProductVO>();
      list = productServiceImpl.getAllProduct(productVo);
      
      model.addAttribute("list", list);
      model.addAttribute("allProduct", productVo);
      
      return "/common/index";
   }
   
   
   @RequestMapping("productCategory.do")
   public String product_category(ProductVO productVo, Model model){
      
      List<ProductVO> list = new ArrayList<ProductVO>();
      list = productServiceImpl.getProductCategory(productVo);
      
      model.addAttribute("list", list);
      model.addAttribute("size", list.size());
      model.addAttribute("productCategory", productVo.getProductCategory());
      
      return "/product/product_category"; 

   }
   
   @RequestMapping("productCategoryAjax.do")
   @ResponseBody
   public Map<String,Object> productCategoryAjax(ProductVO productVo){
	   Map<String,Object> map = new HashMap<String,Object>();
	   
	   List<ProductVO> list = new ArrayList<ProductVO>();
	   list = productServiceImpl.getProductCategory(productVo);
	      
	   map.put("list", list);
	   
	   return map;
   }
   
   
   
}