package board.service;

import java.util.List;

import board.vo.BoardVO;
import common.Criteria;

public interface BoardService {
	public List<BoardVO> qnaList(BoardVO boardVo) throws Exception; // 1:1문의 게시판

	public BoardVO qnaDetail(String qnaNo) throws Exception; // 1:1문의 상세

	public BoardVO noticeDetail(String noticeNo) throws Exception; // 공지사항 상세

	public void writeNotice(BoardVO boardVo) throws Exception; // 공지사항 쓰기

	public void updateNotice(BoardVO boardVo) throws Exception; // 공지사항 수정

	public void deleteNotice(BoardVO boardVo) throws Exception; // 공지사항 삭제
	
	public List<BoardVO> review(BoardVO boardVo) throws Exception; // 상품후기 게시판

	public BoardVO productDetail(String productNo) throws Exception; // 상품상세후기 - 상품정보

	public BoardVO reviewDetail(String reviewNo) throws Exception; // 상품상세후기 - 리뷰

	public void updateReview(BoardVO boardVo) throws Exception; // 상품수정

	public void writeReview(BoardVO boardVo) throws Exception; // 상품쓰기
	
	public void deleteReview(BoardVO boardVo) throws Exception; // 상품후기 삭제
	
	public List<BoardVO> noticeList(Criteria criteria) throws Exception; //페이징처리 공지사항 리스트
	
	public int listCount(BoardVO boardVo) throws Exception; //페이징처리 공지사항 총 갯수 카운팅

}
