package product.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import product.service.ProductService;
import product.service.dao.ProductDAO;
import product.vo.ProductVO;


@Service("productService")
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDAO productDao;

	@Override
	public List<ProductVO> getProductCategory(ProductVO productVo) {
		return productDao.productCategory(productVo);
	}
	
	@Override
	public List<ProductVO> getAllProduct(ProductVO productVo) {
		return productDao.allProduct(productVo);
	}
	
	@Override
	public List<ProductVO> getProductNo(ProductVO productVo) {
		return productDao.productNo(productVo);
	}
	

	
	

}
