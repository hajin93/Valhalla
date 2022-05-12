package user;

import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import javax.mail.MessagingException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import common.MailHandler;
import common.SHA256;
import order.vo.OrderVO;
import user.service.impl.UserServiceImpl;
import user.vo.UserVO;

@Controller
@RequestMapping("/")
public class UserController {
	
	@Autowired
	private UserServiceImpl userServiceImpl;
	
	@Autowired
	private JavaMailSender mailSender;

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	//ȸ������
	@RequestMapping("memberJoin.do")
	public String member_join(){
		logger.debug("log��� example~ ó���Ẹ�°Ŵ� ���۸�~");
		return "/member/member_join"; 

	}
	
	//ȸ�����ԿϷ�
	@RequestMapping("memberJoinResult.do")
	public String member_join_result(Model model, UserVO userVo) {
		
		try {
			
			SHA256 sha = new SHA256();
			String pw = userVo.getUserPw();
			pw = sha.encrypt(pw).toString();
			userVo.setUserPw(pw);
			
			userServiceImpl.joinInsert(userVo);
			
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("userId", userVo.getUserId());
		model.addAttribute("userName", userVo.getUserName());
		model.addAttribute("email", userVo.getEmail());
		
		return "/member/member_join_result"; 
	}
	
	//���� �����ϴ��� üũ (chkNum > 1)
	@RequestMapping("userInfo.do")
	@ResponseBody
	public Map<String,Object> userInfo(UserVO userVo){
		Map<String,Object> map = new HashMap<String,Object>();
		
		int chkNum = userServiceImpl.getUserInfo(userVo);
		
		map.put("chkNum", chkNum);
		
		return map;
	}
	
	//�̸��� ������ȣ ����
	@RequestMapping("emailCert.do")
	@ResponseBody
	public Map<String,Object> emailCert(UserVO userVo){
		Map<String,Object> map = new HashMap<String,Object>();
		
		Random r = new Random();
        int key = r.nextInt(4589362) + 49311; //�̸��Ϸ� �޴� �����ڵ� �κ� (����)
		
        try {
        	//���� ����
            MailHandler sendMail = new MailHandler(mailSender);
            
        	sendMail.setSubject("���� �̸��� ����");
            sendMail.setText(
                    new StringBuffer()
                    .append("<h1>��������</h1><br/>")
                    .append(key)
                    .toString());
			sendMail.setTo(userVo.getEmail());
			sendMail.send();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
        
		map.put("certNum", key);
		
		return map;
	}
	
	//�ߺ�Ȯ��
	@RequestMapping("duplicate.do")
	@ResponseBody
	public Map<String,Object> duplicate(UserVO userVo){
		Map<String,Object> map = new HashMap<String,Object>();
		
		int chkNum = userServiceImpl.getDuplicate(userVo);
		
		map.put("chkNum", chkNum);
		
		return map;
	}
	
	//ȸ���������� �� ��й�ȣ üũ
	@RequestMapping("memberModifyPwChk.do")
	public String memberModifyPwChk(UserVO userVo, Model model) {
		return "/member/member_modify_pwChk";
	}
	
	//ȸ����������
	@RequestMapping("memberModify.do")
	public String member_modify(Model model , UserVO userVo){
		
		List<UserVO> list = userServiceImpl.getUserInfoSession(userVo);
		
		model.addAttribute("list", list.get(0));
		
		return "/member/member_modify"; 
	}
	
	//ȸ������ ��й�ȣ ��Ī
	@RequestMapping("userPwCompare.do")
	@ResponseBody
	public Map<String,Object> userPwCompare(UserVO userVo){
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		try {
			SHA256 sha = new SHA256();			
			String pw = userVo.getUserPw();
			pw = sha.encrypt(pw);
			userVo.setUserPw(pw);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		int chkNum = userServiceImpl.getUserPwCompare(userVo);
		
		map.put("chkNum", chkNum);
		
		return map;
	}
	
	//�������
	@RequestMapping("memberAgreement.do")
	public String member_agreement(){
		return "/member/member_agreement"; 
	}
	
	//�α���
	@RequestMapping("memberLogin.do")
	public String member_login(){
		return "/member/member_login"; 
	}
	
	//�α��� üũ (chkNum > 1)
	@RequestMapping("loginChking.do")
	@ResponseBody
	public Map<String,Object> loginChking(UserVO userVo){
		Map<String,Object> map = new HashMap<String,Object>();
		List<UserVO> userList = new ArrayList<UserVO>();
		
		try {
			
			SHA256 sha = new SHA256();
			String pw = userVo.getUserPw();
			pw = sha.encrypt(pw);
			userVo.setUserPw(pw);
			
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		int chkNum = userServiceImpl.getLoginChking(userVo);
		if(chkNum > 0) {
			userList = userServiceImpl.getUserInfoSession(userVo);
			map.put("list", userList.get(0));
		}
		
		map.put("chkNum", chkNum);
		
		
		return map;
	}
	
	//���̵�ã��
	@RequestMapping("memberFindId.do")
	public String member_find_id(){
		return "/member/id/member_id_find_id";
	}
	
	//���̵�ã�� ���������
	@RequestMapping("memberFindIdResult.do")
	public String member_find_id_result(Model model, UserVO userVo){
		
		List<UserVO> list = new ArrayList<UserVO>();
		list = userServiceImpl.getSearchId(userVo);
		
		model.addAttribute("userName", list.get(0).getUserName());
		model.addAttribute("userId", list.get(0).getUserId());
		model.addAttribute("size", list.size());
		model.addAttribute("list", list);
		
		return "/member/id/member_id_find_id_result"; 
	}
	
	//��й�ȣ
	@RequestMapping("memberFindPw.do")
	public String member_find_pw(){
		logger.debug("log��� example~ ó���Ẹ�°Ŵ� ���۸�~");
		return "/member/pw/member_pw_find_pw"; 

	}
	
	//��й�ȣ ����������
	@RequestMapping("memberChangePw.do")
	public String member_change_pw(UserVO userVo, Model model){
		
		model.addAttribute("userName", userVo.getUserName());
		model.addAttribute("email", userVo.getEmail());
		
		return "/member/pw/member_pw_change_pw"; 

	}
	
	//��й�ȣ ����
	@RequestMapping("updatePw.do")
	@ResponseBody
	public Map<String,Object> updatePw(UserVO userVo){
		Map<String,Object> map = new HashMap<String,Object>();
		
		try {
			
			SHA256 sha256 = new SHA256();
			String pw = userVo.getUserPw();
			pw = sha256.encrypt(pw);
			userVo.setUserPw(pw);
			
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		userServiceImpl.getUpdatePw(userVo);
		
		map.put("msg", "��й�ȣ������ �Ϸ�Ǿ����ϴ�.");
		
		return map;
	}
	
	//ȸ��Ż��
	@RequestMapping("deleteInfo.do")
	@ResponseBody
	public Map<String,Object> deleteInfo(UserVO userVo){
		Map<String,Object> map = new HashMap<String,Object>();
		
		userServiceImpl.deleteInfo(userVo);
		
		map.put("exit", "exit");
		
		return map;
	}
	
	////////////////shopInfo////////////
	
	@RequestMapping("shopInfoGuide.do")
	public String shopInfo_guide(){
		return "/shopInfo/shopInfo_guide";
	}
	
	//////////////////mypage/////////////
	
	//���������� �ֹ�����
	@RequestMapping("mypageOrderIndex.do")
	public String mypage_orderindex(OrderVO orderVo, Model model){
		
		List<OrderVO> list = userServiceImpl.getOrderList(orderVo);
		
		model.addAttribute("list" , list);
		
		return "/mypage/mypage_orderindex"; 

	}
	
	@RequestMapping("mypageBoard.do")
	public String mypage_board(){
		return "/mypage/mypage_board";
	}
	
	@RequestMapping("orderList.do")
	public String mypage_orderlist(){
		return "/mypage/order/mypage_order_orderlist"; 
	}
	
	@RequestMapping("orderReturn.do")
	public String mypage_return(){
		return "/mypage/order/mypage_order_return"; 
	}
	
	@RequestMapping("orderExchange.do")
	public String mypage_exchange(){
		return "/mypage/order/mypage_order_exchange"; 
	}
	
	@RequestMapping("orderCancel.do")
	public String mypage_cancel(){
		return "/myshop/order/mypage_order_cancel"; 
	}
	
	@RequestMapping("orderDetailOld.do")
	public String mypage_detail_old(){
		return "/mypage/order/mypage_order_detail_old"; 
	}
	
	@RequestMapping("orderDetail.do")
	public String mypage_detail(){
		return "/mypage/order/mypage_order_detail";
	}
	
	@RequestMapping("addrList.do")
	public String mypage_list(){
		return "/mypage/addr/mypage_addr_list";
	}
	
	@RequestMapping("mypageAddrModify.do")
	public String mypage_addr_modify(){
		return "/mypage/addr/mypage_addr_modify"; 
	}
	
	@RequestMapping("mypageAddrRegister.do")
	public String mypage_addr_registery(){
		return "/mypage/addr/mypage_addr_registery"; 
	}
	
	@RequestMapping("adminOrder.do")
	public String mypage_order_adminorder(){
		return "/mypage/addr/mypage_order_adminorder"; 
	}
	
	
	
}
