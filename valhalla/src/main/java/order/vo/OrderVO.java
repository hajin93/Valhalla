package order.vo;

import java.util.Date;

import lombok.Data;

@Data
public class OrderVO {
	/*cart*/
	private String cartNo;
	private String userNo;		
	private String productNo;	
	private String productName;	
	private String quantity;		
	private String productPrice;	
	private String productSize;	
	private String productColor;
	private String mainImg;	
	private String totalPrice;	
	
	/*wish*/
	private String wishNo;	
	/*
	 * private String userNo; 
	 * private String productNo;
	 */
	private String rgstTime;
	private String udtTime;	
	 
	 /*order*/
	private String orderNo;			
	private String orderPrice;	
	private String orderMeans;		
	private String orderTime;		
	private String orderStatus;		
	private String deliveryStart;
	private String deliveryEnd;		
	private String cancelDate;		
	/* private String userNo; */			
	private String receiver;			
	private String zipcode;		
	private String address;			
	private String detailedAddress;
	private String phone;			
	/*
	 * private String rgstTime; private String udtTime; private String productNo;
	 * private String mainImg; private String productName; private String
	 * productSize; private String productColor; private String productPrice;
	 * private String quantity;
	 */			
	 
	 
	 /*product*/
	/* private String productNo; */		
	private String productCategory;
	/*
	 * private String productName; private String productPrice; private String
	 * productSize; private String productColor; private String mainImg; private
	 * String rgstTime;
	 */	
	private String stockQuantity;
	private String productEx;		
}
