package com.yogi.hoxy.dtos;

import java.util.Date;

public class YHDto {
	
	private String id;
	private String name;
	private String pwd;
	private String tel;
	private String email;
	private Date regDate;
	private int who;
	private String power;
	private String shopName;
	private String shopAdd;
	private String local;
	private int businessnum;
	private int shopId;
	
	public YHDto(String id, String name, String pwd, String tel, String email, Date regDate, int who, String power,
			String shopName, String shopAdd, String local, int businessnum, int shopId) {
		super();
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.tel = tel;
		this.email = email;
		this.regDate = regDate;
		this.who = who;
		this.power = power;
		this.shopName = shopName;
		this.shopAdd = shopAdd;
		this.local = local;
		this.businessnum = businessnum;
		this.shopId = shopId;
	}

	public YHDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public int getWho() {
		return who;
	}

	public void setWho(int who) {
		this.who = who;
	}

	public String getPower() {
		return power;
	}

	public void setPower(String power) {
		this.power = power;
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

	public int getBusinessnum() {
		return businessnum;
	}

	public void setBusinessnum(int businessnum) {
		this.businessnum = businessnum;
	}

	public int getShopId() {
		return shopId;
	}

	public void setShopId(int shopId) {
		this.shopId = shopId;
	}

	@Override
	public String toString() {
		return "YHDto [id=" + id + ", name=" + name + ", pwd=" + pwd + ", tel=" + tel + ", email=" + email
				+ ", regDate=" + regDate + ", who=" + who + ", power=" + power + ", shopName=" + shopName + ", shopAdd="
				+ shopAdd + ", local=" + local + ", businessnum=" + businessnum + ", shopId=" + shopId + "]";
	}
	
	
}
