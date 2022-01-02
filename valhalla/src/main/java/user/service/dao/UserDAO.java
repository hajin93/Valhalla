package user.service.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import order.vo.OrderVO;
import user.vo.UserVO;


@Repository
public class UserDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public void joinInfoInsert(UserVO userVo) {
		sqlSession.insert("userDAO.insertJoinInfo", userVo);
		
	}

	public int duplicate(UserVO userVo) {
		return sqlSession.selectOne("userDAO.duplicate", userVo);
	}

	public List<UserVO> searchId(UserVO userVo) {
		return sqlSession.selectList("userDAO.searchId", userVo);
	}

	public int userInfo(UserVO userVo) {
		return sqlSession.selectOne("userDAO.userInfo", userVo);
	}

	public void updatePw(UserVO userVo) {
		sqlSession.update("userDAO.updatePw", userVo);
	}

	public int loginChking(UserVO userVo) {
		return sqlSession.selectOne("userDAO.loginChking",userVo);
	}

	public List<UserVO> userInfoSession(UserVO userVo) {
		return sqlSession.selectList("userDAO.userInfoSession", userVo);
	}

	public int userPwCompare(UserVO userVo) {
		return sqlSession.selectOne("userDAO.userPwCompare", userVo);
	}

	public void deleteInfo(UserVO userVo) {
		sqlSession.delete("userDAO.deleteInfo", userVo);
		
	}
	
	public List<OrderVO> getOrderList(OrderVO orderVo) {
		return sqlSession.selectList("userDAO.orderList", orderVo);
	}
	
}
