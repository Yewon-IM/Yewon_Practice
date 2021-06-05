package com.yogi.hoxy.dtos;

import java.util.Date;

public class ProductDto {
	
	private int product_seq;
	private String shopId;
	private String id;
	private String productName;
	private String content;
	private int price;
	private String stock;
	private String img_Url;
	private Date writeDate;
	private String category;
	private int like;
	private ShopDto shopDto;
	
	public ProductDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProductDto(int product_seq, String shopId, String id, String productName, String content, int price,
			String stock, String img_Url, Date writeDate, String category, int like, ShopDto shopDto) {
		super();
		this.product_seq = product_seq;
		this.shopId = shopId;
		this.id = id;
		this.productName = productName;
		this.content = content;
		this.price = price;
		this.stock = stock;
		this.img_Url = img_Url;
		this.writeDate = writeDate;
		this.category = category;
		this.like = like;
		this.shopDto = shopDto;
	}
	
	public ProductDto(int product_seq, String shopId, String id, String productName, String content, int price,
			String stock, String img_Url, Date writeDate, String category, int like) {
		super();
		this.product_seq = product_seq;
		this.shopId = shopId;
		this.id = id;
		this.productName = productName;
		this.content = content;
		this.price = price;
		this.stock = stock;
		this.img_Url = img_Url;
		this.writeDate = writeDate;
		this.category = category;
		this.like = like;
	}

	public int getProduct_seq() {
		return product_seq;
	}

	public void setProduct_seq(int product_seq) {
		this.product_seq = product_seq;
	}

	public String getShopId() {
		return shopId;
	}

	public void setShopId(String shopId) {
		this.shopId = shopId;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
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

	public String getStock() {
		return stock;
	}

	public void setStock(String stock) {
		this.stock = stock;
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

	public int getLike() {
		return like;
	}

	public void setLike(int like) {
		this.like = like;
	}

	public ShopDto getShopDto() {
		return shopDto;
	}

	public void setShopDto(ShopDto shopDto) {
		this.shopDto = shopDto;
	}

	@Override
	public String toString() {
		return "ProductDto [product_seq=" + product_seq + ", shopId=" + shopId + ", id=" + id + ", productName="
				+ productName + ", content=" + content + ", price=" + price + ", stock=" + stock + ", img_Url="
				+ img_Url + ", writeDate=" + writeDate + ", category=" + category + ", like=" + like + ", shopDto="
				+ shopDto + "]";
	}
	

}
