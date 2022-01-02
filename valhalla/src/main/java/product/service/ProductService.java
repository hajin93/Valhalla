package product.service;

import java.util.List;
import product.vo.ProductVO;


public interface ProductService {
	public List<ProductVO> getProductCategory(ProductVO productVo) throws Exception;
	public List<ProductVO> getAllProduct(ProductVO productVo) throws Exception;
	public List<ProductVO> getProductNo(ProductVO productVo) throws Exception;
	public List<ProductVO> getProductSeason(ProductVO productVo) throws Exception;
}
