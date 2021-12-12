package board.vo;

import lombok.Data;

@Data
public class BoardVO {
	/* 공지사항 - notice */
	private String noticeNo;
	private String noticeType;
	private String noticeTitle;
	private String noticeContent;
	private String rgstTime;
	private String udtTime;

	/* 1:1 문의 - QnA */
	private String qnaNo;
	private String qnaType;
	private String qnaTitle;
	private String qnaContent;
	private String qnaTime;
	private String userNo;
	private String userName;
	private String email;

	/* 상품후기 게시판 - Review */
	private String reviewNo;
	private String productNo;
	private String productName;
	private String mainImg;
	private String productSize;
	private String productColor;
	private String reviewTitle;
	private String reviewContent;
	private String grade;
	private String fileName;

	/* 상품 */
	private String productPrice;
	private String stockQuantity;
}
