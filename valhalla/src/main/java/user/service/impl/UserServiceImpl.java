package user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import order.vo.OrderVO;
import user.service.UserService;
import user.service.dao.UserDAO;
import user.vo.UserVO;


@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAO userDao;

	@Override
	public void joinInsert(UserVO userVo) {
		userDao.joinInfoInsert(userVo);
		
	}

	@Override
	public int getDuplicate(UserVO userVo) {
		return userDao.duplicate(userVo);
	}

	@Override
	public List<UserVO> getSearchId(UserVO userVo) {
		return userDao.searchId(userVo);
	}

	@Override
	public int getUserInfo(UserVO userVo) {
		return userDao.userInfo(userVo);
	}

	@Override
	public void getUpdatePw(UserVO userVo) {
		userDao.updatePw(userVo);
	}

	@Override
	public int getLoginChking(UserVO userVo) {
		return userDao.loginChking(userVo);
	}

	@Override
	public List<UserVO> getUserInfoSession(UserVO userVo) {
		return userDao.userInfoSession(userVo);
	}

	@Override
	public int getUserPwCompare(UserVO userVo) {
		return userDao.userPwCompare(userVo);
	}
	
	@Override
	public void deleteInfo(UserVO userVo) {
		userDao.deleteInfo(userVo);
		
	}
	
	@Override
	public List<OrderVO> getOrderList(OrderVO orderVo) {
		return userDao.getOrderList(orderVo);
	}

}
