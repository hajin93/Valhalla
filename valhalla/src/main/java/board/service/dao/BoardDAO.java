package board.service.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import board.vo.BoardVO;
import common.Criteria;

@Transactional
@Component
public class BoardDAO {

	@Autowired
	private SqlSession sqlSession;

	public List<BoardVO> qnaList(BoardVO boardVo) {
		return sqlSession.selectList("boardDAO.qnaList", boardVo);
	}
	
	public BoardVO qnaDetail(String qnaNo) {
		return sqlSession.selectOne("boardDAO.qnaDetail", qnaNo);
	}

	public List<BoardVO> noticeList(Criteria criteria) {
		return sqlSession.selectList("boardDAO.noticeList", criteria);
	}
	
	public BoardVO noticeDetail(String noticeNo) {
		return sqlSession.selectOne("boardDAO.noticeDetail", noticeNo);
	}

	public void writeNotice(BoardVO boardVo) {
		sqlSession.insert("boardDAO.writeNotice", boardVo);
	}
	
	public void updateNotice(BoardVO boardVo) {
		sqlSession.update("boardDAO.updateNotice", boardVo);
	}
	
	public void deleteNotice(BoardVO boardVo) {
		sqlSession.delete("boardDAO.deleteNotice", boardVo);
	}

	public List<BoardVO> review(BoardVO boardVo) {
		return sqlSession.selectList("boardDAO.review", boardVo);
	}

	public BoardVO reviewDetail(String reviewNo) {
		return sqlSession.selectOne("boardDAO.reviewDetail", reviewNo);
	}

	public BoardVO productDetail(String productNo) {
		return sqlSession.selectOne("boardDAO.productDetail", productNo);
	}

	public void updateReview(BoardVO boardVo) {
		sqlSession.update("boardDAO.updateReview", boardVo);
	}

	public void writeReview(BoardVO boardVo) {
		sqlSession.insert("boardDAO.writeReview", boardVo);
	}
	
	public void deleteReview(BoardVO boardVo) {
		sqlSession.delete("boardDAO.deleteReview", boardVo);
	}

	public int listCount(BoardVO boardVo) {
		return sqlSession.selectOne("boardDAO.listCnt", boardVo);
	}
}
