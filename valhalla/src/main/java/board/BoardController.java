package board;

import java.io.File;
import java.io.IOException;
import java.util.List;

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

@Controller
@RequestMapping("/")
public class BoardController {

	@Autowired
	private BoardServiceImpl boardServiceImpl;

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	private static final String FILE_PATH = "업로드될 경로 지정"; // file-upload

	// 1:1문의 게시판
	@RequestMapping("qnaList.do")
	public String qna_list(Model model, BoardVO boardVo) {
		List<BoardVO> qnaList = boardServiceImpl.qnaList(boardVo);
		model.addAttribute("qnaList", qnaList);
		logger.debug("log찍기");
		return "/board/qna/qnaList";
	}

	// 1:1문의 수정
	@RequestMapping("qnaModify.do")
	public String qna_modify() {
		return "/board/qna/qnaModify";
	}

	// 1:1문의 상세
	@RequestMapping("qnaRead.do")
	public String qna_read(Model model, String qnaNo) {
		BoardVO qnaDetail = boardServiceImpl.qnaDetail(qnaNo);
		model.addAttribute("qnaDetail", qnaDetail);
		return "/board/qna/qnaRead";
	}

	// 1:1문의 답변 - 관리자
	@RequestMapping("qnaReply.do")
	public String qna_reply() {
		return "/board/qna/qnaReply";
	}

	// 1:1문의 쓰기
	@RequestMapping("qnaWrite.do")
	public String qna_write() {
		return "/board/qna/qnaWrite";
	}

	// 공지사항 목록
	@RequestMapping("noticeList.do")
	public String notice_list(Model model, BoardVO boardVo) {
		List<BoardVO> noticeList = boardServiceImpl.noticeList(boardVo);
		model.addAttribute("noticeList", noticeList);
		return "/board/notice/noticeList";
	}

	// 공지사항 읽기
	@RequestMapping("noticeRead.do")
	public String notice_read(Model model, BoardVO boardVo, String noticeNo) {
		BoardVO noticeDetail = boardServiceImpl.noticeDetail(noticeNo);
		model.addAttribute("noticeDetail", noticeDetail);
		return "/board/notice/noticeRead";
	}

	// 공지사항 쓰기 - 관리자
	@RequestMapping("noticeWrite.do")
	public String notice_write(Model model, BoardVO boardVo, String noticeNo) {
		return "/board/notice/noticeWrite";
	}

	// 공지사항 쓰기완료 - 관리자
	@RequestMapping("noticeWriteComplete.do")
	public String write_complete(Model model, BoardVO boardVo) {
		boardServiceImpl.writeNotice(boardVo);
		return "redirect:/noticeList.do";
	}

	// 공지사항 수정 - 관리자
	@RequestMapping("noticeModify.do")
	public String notice_modify(Model model, HttpServletRequest request) {
		String noticeNo = request.getParameter("noticeNum");
		BoardVO noticeDetail = boardServiceImpl.noticeDetail(noticeNo);
		model.addAttribute("noticeDetail", noticeDetail);

		return "/board/notice/noticeModify";
	}

	// 공지사항 수정 완료
	@RequestMapping("noticeModifyComplete.do")
	public String notice_modifycomplete(Model model, BoardVO boardVo) {
		boardServiceImpl.updateNotice(boardVo);

		return "redirect:/noticeList.do";
	}

	// 공지사항 삭제
	@RequestMapping("noticeDelete.do")
	public String notice_delete(Model model, BoardVO boardVo) {
		boardServiceImpl.deleteNotice(boardVo);

		return "redirect:/noticeList.do";
	}

	// 상품후기 게시판 페이지
	@RequestMapping("reviewList.do")
	public String review_list(Model model, BoardVO boardVo, String productNo) {
		List<BoardVO> review = boardServiceImpl.review(boardVo);
		model.addAttribute("review", review);

		BoardVO productDetail = boardServiceImpl.productDetail(productNo);
		model.addAttribute("productDetail", productDetail);
		return "/board/review/reviewList";
	}

	// 상품후기 상세보기 페이지
	@RequestMapping("reviewRead.do")
	public String review_read(Model model, BoardVO boardVo, String productNo, String reviewNo) {
		BoardVO productDetail = boardServiceImpl.productDetail(productNo);
		model.addAttribute("productDetail", productDetail);

		BoardVO reviewDetail = boardServiceImpl.reviewDetail(reviewNo);
		model.addAttribute("reviewDetail", reviewDetail);
		return "/board/review/reviewRead";
	}

	// 상품후기 수정 페이지
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

	// 상품후기 수정 완료
	@RequestMapping("reviewModifyComplete.do")
	public String review_modifycomplete(Model model, BoardVO boardVo) {
		System.out.println(boardVo);
		boardServiceImpl.updateReview(boardVo);

		return "redirect:/reviewList.do";
	}

	// 상품후기 쓰기 페이지
	@RequestMapping("reviewWrite.do")
	public String review_write(Model model, BoardVO boardVo, String productNo) {
		BoardVO productDetail = boardServiceImpl.productDetail(productNo);
		model.addAttribute("productDetail", productDetail);
		return "/board/review/reviewWrite";
	}

	// 상품후기 삭제
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
			model.addAttribute("msg", "파일업로드 성공");
			model.addAttribute("fileName", fileName);
		} else {
			model.addAttribute("msg", "파일을 선택하세요...");
		}

		return "/board/notice/noticeWrite";
	}

}
