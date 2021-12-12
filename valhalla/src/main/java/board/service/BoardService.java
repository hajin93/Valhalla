package board.service;

import java.util.List;

import board.vo.BoardVO;

public interface BoardService {
	public List<BoardVO> qnaList(BoardVO boardVo); // 1:1문의 게시판

	public BoardVO qnaDetail(String qnaNo); // 1:1문의 상세

	public List<BoardVO> noticeList(BoardVO boardVo); // 공지사항

	public BoardVO noticeDetail(String noticeNo); // 공지사항 상세

	public void writeNotice(BoardVO boardVo); // 공지사항 쓰기

	public void updateNotice(BoardVO boardVo); // 공지사항 수정

	public void deleteNotice(BoardVO boardVo); // 공지사항 삭제

	public List<BoardVO> review(BoardVO boardVo); // 상품후기 게시판

	public BoardVO productDetail(String productNo); // 상품상세후기 - 상품정보

	public BoardVO reviewDetail(String reviewNo); // 상품상세후기 - 리뷰

	public void updateReview(BoardVO boardVo); // 상품수정

	public void writeReview(BoardVO boardVo); // 상품쓰기

	public void deleteReview(BoardVO boardVo); // 상품후기 삭제

}
