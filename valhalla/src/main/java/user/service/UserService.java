package user.service;

import java.util.List;

import order.vo.OrderVO;
import user.vo.UserVO;


public interface UserService {
	public void joinInsert(UserVO userVo) throws Exception;
	public int getDuplicate(UserVO userVo) throws Exception;
	public List<UserVO> getSearchId(UserVO userVo) throws Exception;
	public int getUserInfo(UserVO userVo) throws Exception;
	public void getUpdatePw(UserVO userVo) throws Exception;
	public int getLoginChking(UserVO userVo) throws Exception;
	public List<UserVO> getUserInfoSession(UserVO userVo) throws Exception;
	public int getUserPwCompare(UserVO userVo) throws Exception;
	public void deleteInfo(UserVO userVo) throws Exception;
	public List<OrderVO> getOrderList(OrderVO orderVo) throws Exception;
}
