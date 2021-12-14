package board.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import board.service.BoardService;
import board.service.dao.BoardDAO;
import board.vo.BoardVO;
import common.Criteria;

@Service("boardService")
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDAO boardDao;

	@Override
	public List<BoardVO> qnaList(BoardVO boardVo) {
		return boardDao.qnaList(boardVo);
	}

	@Override
	public BoardVO qnaDetail(String qnaNo) {
		return boardDao.qnaDetail(qnaNo);
	}

	@Override
	public List<BoardVO> noticeList(Criteria criteria) {
		return boardDao.noticeList(criteria);
	}

	@Override
	public BoardVO noticeDetail(String noticeNo) {
		return boardDao.noticeDetail(noticeNo);
	}

	@Override
	public void writeNotice(BoardVO boardVo) {
		boardDao.writeNotice(boardVo);
	}

	@Override
	public void updateNotice(BoardVO boardVo) {
		boardDao.updateNotice(boardVo);
	}
	
	@Override
	public void deleteNotice(BoardVO boardVo) {
		boardDao.deleteNotice(boardVo);
	}

	@Override
	public List<BoardVO> review(BoardVO boardVo) {
		return boardDao.review(boardVo);
	}

	@Override
	public BoardVO reviewDetail(String reviewNo) {
		return boardDao.reviewDetail(reviewNo);
	}

	@Override
	public BoardVO productDetail(String productNo) {
		return boardDao.productDetail(productNo);
	}

	@Override
	public void updateReview(BoardVO boardVo) {
		boardDao.updateReview(boardVo);
	}

	@Override
	public void writeReview(BoardVO boardVo) {
		boardDao.writeReview(boardVo);
	}
	
	@Override
	public void deleteReview(BoardVO boardVo) {
		boardDao.deleteReview(boardVo);
	}

	@Override
	public int listCount(BoardVO boardVo) {
		return boardDao.listCount(boardVo);
	}

}
