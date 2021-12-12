package product.service.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import product.vo.ProductVO;


@Transactional
@Component
public class ProductDAO {

	@Autowired
	private SqlSession sqlSession;

	public List<ProductVO> productCategory(ProductVO productVo) {
		return sqlSession.selectList("productDAO.productCategory", productVo);
	}

	public List<ProductVO> allProduct(ProductVO productVo) {
		return sqlSession.selectList("productDAO.allProduct", productVo);
	}

	public List<ProductVO> productNo(ProductVO productVo) {
		return sqlSession.selectList("productDAO.productNo", productVo);
	}
	
}
