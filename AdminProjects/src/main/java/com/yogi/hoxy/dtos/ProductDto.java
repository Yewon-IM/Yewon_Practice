package com.yogi.hoxy.dtos;

import java.util.Date;

public class ProductDto {
	
	private int seq;
	private String shopId;
	private String title;
	private String content;
	private int price;
	private String img_Url;
	private Date writeDate;
	private String category;
	
	public ProductDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProductDto(int seq, String shopId, String title, String content, int price, String img_Url, Date writeDate,
			String category) {
		super();
		this.seq = seq;
		this.shopId = shopId;
		this.title = title;
		this.content = content;
		this.price = price;
		this.img_Url = img_Url;
		this.writeDate = writeDate;
		this.category = category;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getShopId() {
		return shopId;
	}

	public void setShopId(String shopId) {
		this.shopId = shopId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getImg_Url() {
		return img_Url;
	}

	public void setImg_Url(String img_Url) {
		this.img_Url = img_Url;
	}

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "ProductDto [seq=" + seq + ", shopId=" + shopId + ", title=" + title + ", content=" + content
				+ ", price=" + price + ", img_Url=" + img_Url + ", writeDate=" + writeDate + ", category=" + category
				+ "]";
	}
	
	
}
