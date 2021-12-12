package board.service;

import java.util.List;

import board.vo.BoardVO;

public interface BoardService {
	public List<BoardVO> qnaList(BoardVO boardVo); // 1:1���� �Խ���

	public BoardVO qnaDetail(String qnaNo); // 1:1���� ��

	public List<BoardVO> noticeList(BoardVO boardVo); // ��������

	public BoardVO noticeDetail(String noticeNo); // �������� ��

	public void writeNotice(BoardVO boardVo); // �������� ����

	public void updateNotice(BoardVO boardVo); // �������� ����

	public void deleteNotice(BoardVO boardVo); // �������� ����

	public List<BoardVO> review(BoardVO boardVo); // ��ǰ�ı� �Խ���

	public BoardVO productDetail(String productNo); // ��ǰ���ı� - ��ǰ����

	public BoardVO reviewDetail(String reviewNo); // ��ǰ���ı� - ����

	public void updateReview(BoardVO boardVo); // ��ǰ����

	public void writeReview(BoardVO boardVo); // ��ǰ����

	public void deleteReview(BoardVO boardVo); // ��ǰ�ı� ����

}
