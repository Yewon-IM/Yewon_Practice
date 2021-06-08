package com.yogi.hoxy.dtos;

import java.util.Date;

public class BookDto {
	private int seq;
	private String id;
	private String goodsName;
	private String url;
	private String category;
	private Date regDate;
	private int stock;
	
	public BookDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BookDto(int seq, String id, String goodsName, String url, String category, Date regDate, int stock) {
		super();
		this.seq = seq;
		this.id = id;
		this.goodsName = goodsName;
		this.url = url;
		this.category = category;
		this.regDate = regDate;
		this.stock = stock;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	@Override
	public String toString() {
		return "BookDto [seq=" + seq + ", id=" + id + ", goodsName=" + goodsName + ", url=" + url + ", category="
				+ category + ", regDate=" + regDate + ", stock=" + stock + "]";
	}
	
}
