package com.yogi.hoxy.dtos;

import java.util.Date;

public class ShopDto {
	
	private String id;
	private String shopId;
	private String shopName;
	private String shopOdd;
	private String shopAdd;
	private String shopDetailAdd;
	private String shopTel;
	private String local;
	private String businessNum;
	private Date openDate;
	private String power;
	private String del;
	private String shopImg;
	
	public ShopDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ShopDto(String id, String shopId, String shopName, String shopOdd, String shopAdd, String shopDetailAdd,
			String shopTel, String local, String businessNum, Date openDate, String power, String del, String shopImg) {
		super();
		this.id = id;
		this.shopId = shopId;
		this.shopName = shopName;
		this.shopOdd = shopOdd;
		this.shopAdd = shopAdd;
		this.shopDetailAdd = shopDetailAdd;
		this.shopTel = shopTel;
		this.local = local;
		this.businessNum = businessNum;
		this.openDate = openDate;
		this.power = power;
		this.del = del;
		this.shopImg = shopImg;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getShopId() {
		return shopId;
	}

	public void setShopId(String shopId) {
		this.shopId = shopId;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public String getShopOdd() {
		return shopOdd;
	}

	public void setShopOdd(String shopOdd) {
		this.shopOdd = shopOdd;
	}

	public String getShopAdd() {
		return shopAdd;
	}

	public void setShopAdd(String shopAdd) {
		this.shopAdd = shopAdd;
	}

	public String getShopDetailAdd() {
		return shopDetailAdd;
	}

	public void setShopDetailAdd(String shopDetailAdd) {
		this.shopDetailAdd = shopDetailAdd;
	}

	public String getShopTel() {
		return shopTel;
	}

	public void setShopTel(String shopTel) {
		this.shopTel = shopTel;
	}

	public String getLocal() {
		return local;
	}

	public void setLocal(String local) {
		this.local = local;
	}

	public String getBusinessNum() {
		return businessNum;
	}

	public void setBusinessNum(String businessNum) {
		this.businessNum = businessNum;
	}

	public Date getOpenDate() {
		return openDate;
	}

	public void setOpenDate(Date openDate) {
		this.openDate = openDate;
	}

	public String getPower() {
		return power;
	}

	public void setPower(String power) {
		this.power = power;
	}

	public String getDel() {
		return del;
	}

	public void setDel(String del) {
		this.del = del;
	}

	public String getShopImg() {
		return shopImg;
	}

	public void setShopImg(String shopImg) {
		this.shopImg = shopImg;
	}

	@Override
	public String toString() {
		return "ShopDto [id=" + id + ", shopId=" + shopId + ", shopName=" + shopName + ", shopOdd=" + shopOdd
				+ ", shopAdd=" + shopAdd + ", shopDetailAdd=" + shopDetailAdd + ", shopTel=" + shopTel + ", local="
				+ local + ", businessNum=" + businessNum + ", openDate=" + openDate + ", power=" + power + ", del="
				+ del + ", shopImg=" + shopImg + "]";
	}

	
}
