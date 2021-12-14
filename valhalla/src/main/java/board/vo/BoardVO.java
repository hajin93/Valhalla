package board.vo;

import lombok.Data;

@Data
public class BoardVO {
	/* 怨듭��궗�빆 - notice */
	private String RNUM;
	private String count;
	private String noticeNo;
	private String noticeType;
	private String noticeTitle;
	private String noticeContent;
	private String rgstTime;
	private String udtTime;

	/* 1:1 臾몄쓽 - QnA */
	private String qnaNo;
	private String qnaType;
	private String qnaTitle;
	private String qnaContent;
	private String qnaTime;
	private String userNo;
	private String userName;
	private String email;

	/* �긽�뭹�썑湲� 寃뚯떆�뙋 - Review */
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

	/* �긽�뭹 */
	private String productPrice;
	private String stockQuantity;
}
