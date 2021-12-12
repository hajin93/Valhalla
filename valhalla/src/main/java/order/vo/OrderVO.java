package order.vo;

import java.util.Date;

import lombok.Data;

@Data
public class OrderVO {
	private int num;
	private String name;
	private String title;
	private String content;
	private int readCount;
	private Date writeDate;
	

}
