package board;

import java.io.File;
import java.io.IOException;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import board.service.impl.BoardServiceImpl;
import board.vo.BoardVO;
import common.Criteria;
import common.PageMaker;

@Controller
@RequestMapping("/")
public class BoardController {

	@Autowired
	private BoardServiceImpl boardServiceImpl;

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	private static final String FILE_PATH = "�뾽濡쒕뱶�맆 寃쎈줈 吏��젙"; // file-upload

	// 1:1臾몄쓽 寃뚯떆�뙋
	@RequestMapping("qnaList.do")
	public String qna_list(Model model, BoardVO boardVo) {
		List<BoardVO> qnaList = boardServiceImpl.qnaList(boardVo);
		model.addAttribute("qnaList", qnaList);
		logger.debug("log李띻린");
		return "/board/qna/qnaList";
	}

	// 1:1臾몄쓽 �닔�젙
	@RequestMapping("qnaModify.do")
	public String qna_modify() {
		return "/board/qna/qnaModify";
	}

	// 1:1臾몄쓽 �긽�꽭
	@RequestMapping("qnaRead.do")
	public String qna_read(Model model, String qnaNo) {
		BoardVO qnaDetail = boardServiceImpl.qnaDetail(qnaNo);
		model.addAttribute("qnaDetail", qnaDetail);
		return "/board/qna/qnaRead";
	}

	// 1:1臾몄쓽 �떟蹂� - 愿�由ъ옄
	@RequestMapping("qnaReply.do")
	public String qna_reply() {
		return "/board/qna/qnaReply";
	}

	// 1:1臾몄쓽 �벐湲�
	@RequestMapping("qnaWrite.do")
	public String qna_write() {
		return "/board/qna/qnaWrite";
	}

	// 怨듭��궗�빆 紐⑸줉
	@RequestMapping("noticeList.do")
	public String notice_list(Model model, BoardVO boardVo, Criteria criteria) {
		
        List<BoardVO> noticeList = boardServiceImpl.noticeList(criteria);
		
		model.addAttribute("noticeList", noticeList);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(criteria);
		pageMaker.setTotalCount(boardServiceImpl.listCount(boardVo));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/board/notice/noticeList";
	}

	// 怨듭��궗�빆 �씫湲�
	@RequestMapping("noticeRead.do")
	public String notice_read(Model model, BoardVO boardVo, String noticeNo) {
		BoardVO noticeDetail = boardServiceImpl.noticeDetail(noticeNo);
		model.addAttribute("noticeDetail", noticeDetail);
		return "/board/notice/noticeRead";
	}

	// 怨듭��궗�빆 �벐湲� - 愿�由ъ옄
	@RequestMapping("noticeWrite.do")
	public String notice_write(Model model, BoardVO boardVo, String noticeNo) {
		return "/board/notice/noticeWrite";
	}

	// 怨듭��궗�빆 �벐湲곗셿猷� - 愿�由ъ옄
	@RequestMapping("noticeWriteComplete.do")
	public String write_complete(Model model, BoardVO boardVo) {
		boardServiceImpl.writeNotice(boardVo);
		return "redirect:/noticeList.do";
	}

	// 怨듭��궗�빆 �닔�젙 - 愿�由ъ옄
	@RequestMapping("noticeModify.do")
	public String notice_modify(Model model, HttpServletRequest request) {
		String noticeNo = request.getParameter("noticeNum");
		BoardVO noticeDetail = boardServiceImpl.noticeDetail(noticeNo);
		model.addAttribute("noticeDetail", noticeDetail);

		return "/board/notice/noticeModify";
	}

	// 怨듭��궗�빆 �닔�젙 �셿猷�
	@RequestMapping("noticeModifyComplete.do")
	public String notice_modifycomplete(Model model, BoardVO boardVo) {
		boardServiceImpl.updateNotice(boardVo);

		return "redirect:/noticeList.do";
	}

	// 怨듭��궗�빆 �궘�젣
	@RequestMapping("noticeDelete.do")
	public String notice_delete(Model model, BoardVO boardVo) {
		boardServiceImpl.deleteNotice(boardVo);

		return "redirect:/noticeList.do";
	}

	// �긽�뭹�썑湲� 寃뚯떆�뙋 �럹�씠吏�
	@RequestMapping("reviewList.do")
	public String review_list(Model model, BoardVO boardVo, String productNo) {
		List<BoardVO> review = boardServiceImpl.review(boardVo);
		model.addAttribute("review", review);

		BoardVO productDetail = boardServiceImpl.productDetail(productNo);
		model.addAttribute("productDetail", productDetail);
		return "/board/review/reviewList";
	}

	// �긽�뭹�썑湲� �긽�꽭蹂닿린 �럹�씠吏�
	@RequestMapping("reviewRead.do")
	public String review_read(Model model, BoardVO boardVo, String productNo, String reviewNo) {
		BoardVO productDetail = boardServiceImpl.productDetail(productNo);
		model.addAttribute("productDetail", productDetail);

		BoardVO reviewDetail = boardServiceImpl.reviewDetail(reviewNo);
		model.addAttribute("reviewDetail", reviewDetail);
		return "/board/review/reviewRead";
	}

	// �긽�뭹�썑湲� �닔�젙 �럹�씠吏�
	@RequestMapping("reviewModify.do")
	public String review_modify(Model model, HttpServletRequest request) {
		String productNo = request.getParameter("productNum");
		BoardVO productDetail = boardServiceImpl.productDetail(productNo);
		model.addAttribute("productDetail", productDetail);

		String reviewNo = request.getParameter("reviewNum");
		BoardVO reviewDetail = boardServiceImpl.reviewDetail(reviewNo);
		model.addAttribute("reviewDetail", reviewDetail);

		return "/board/review/reviewModify";
	}

	// �긽�뭹�썑湲� �닔�젙 �셿猷�
	@RequestMapping("reviewModifyComplete.do")
	public String review_modifycomplete(Model model, BoardVO boardVo) {
		System.out.println(boardVo);
		boardServiceImpl.updateReview(boardVo);

		return "redirect:/reviewList.do";
	}

	// �긽�뭹�썑湲� �벐湲� �럹�씠吏�
	@RequestMapping("reviewWrite.do")
	public String review_write(Model model, BoardVO boardVo, String productNo) {
		BoardVO productDetail = boardServiceImpl.productDetail(productNo);
		model.addAttribute("productDetail", productDetail);
		return "/board/review/reviewWrite";
	}

	// �긽�뭹�썑湲� �궘�젣
	@RequestMapping("reviewDelete.do")
	public String review_delete(Model model, BoardVO boardVo) {
		boardServiceImpl.deleteReview(boardVo);

		return "redirect:/reviewList.do";
	}

	@RequestMapping(value = "upload", method = RequestMethod.POST)
	public String upload(@RequestParam("uploadFile") MultipartFile file, Model model)
			throws IllegalStateException, IOException {
		String fileName = file.getOriginalFilename();

		if (!file.getOriginalFilename().isEmpty()) {
			file.transferTo(new File(FILE_PATH, fileName));
			model.addAttribute("msg", "�뙆�씪�뾽濡쒕뱶 �꽦怨�");
			model.addAttribute("fileName", fileName);
		} else {
			model.addAttribute("msg", "�뙆�씪�쓣 �꽑�깮�븯�꽭�슂...");
		}

		return "/board/notice/noticeWrite";
	}

}
