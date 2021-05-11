package com.yogi.hoxy.dtos;

import java.util.Date;

public class sellerDto {
	private String id;
	private String shopTel;
	private String shopName;
	private String shopAdd;
	private String local;
	private int businessNum;
	private int shopId;
	private Date openDate;
	private String power;
	private String del;
	
	public sellerDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public sellerDto(String id, String shopTel, String shopName, String shopAdd, String local, int businessNum,
			int shopId, Date openDate, String power, String del) {
		super();
		this.id = id;
		this.shopTel = shopTel;
		this.shopName = shopName;
		this.shopAdd = shopAdd;
		this.local = local;
		this.businessNum = businessNum;
		this.shopId = shopId;
		this.openDate = openDate;
		this.power = power;
		this.del = del;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getShopTel() {
		return shopTel;
	}

	public void setShopTel(String shopTel) {
		this.shopTel = shopTel;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public String getShopAdd() {
		return shopAdd;
	}

	public void setShopAdd(String shopAdd) {
		this.shopAdd = shopAdd;
	}

	public String getLocal() {
		return local;
	}

	public void setLocal(String local) {
		this.local = local;
	}

	public int getBusinessNum() {
		return businessNum;
	}

	public void setBusinessNum(int businessNum) {
		this.businessNum = businessNum;
	}

	public int getShopId() {
		return shopId;
	}

	public void setShopId(int shopId) {
		this.shopId = shopId;
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

	@Override
	public String toString() {
		return "sellerDto [id=" + id + ", shopTel=" + shopTel + ", shopName=" + shopName + ", shopAdd=" + shopAdd
				+ ", local=" + local + ", businessNum=" + businessNum + ", shopId=" + shopId + ", openDate=" + openDate
				+ ", power=" + power + ", del=" + del + "]";
	}

}
