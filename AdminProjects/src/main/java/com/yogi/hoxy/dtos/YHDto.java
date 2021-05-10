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
	private int businessNum;
	private int shopId;
	private String del;
	
	public YHDto(String id, String name, String pwd, String tel, String email, Date regDate, int who, String power,
			String shopName, String shopAdd, String local, int businessNum, int shopId, String del) {
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
		this.businessNum = businessNum;
		this.shopId = shopId;
		this.del = del;
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

	public int getBusinessNum() {
		return businessNum;
	}

	public void setBusinessnum(int businessNum) {
		this.businessNum = businessNum;
	}

	public int getShopId() {
		return shopId;
	}

	public void setShopId(int shopId) {
		this.shopId = shopId;
	}

	public String getDel() {
		return del;
	}
	
	public void setDel(String del) {
		this.del = del;
	}

	@Override
	public String toString() {
		return "YHDto [id=" + id + ", name=" + name + ", pwd=" + pwd + ", tel=" + tel + ", email=" + email
				+ ", regDate=" + regDate + ", who=" + who + ", power=" + power + ", shopName=" + shopName + ", shopAdd="
				+ shopAdd + ", local=" + local + ", businessNum=" + businessNum + ", shopId=" + shopId + ", del=" + del
				+ "]";
	}
	
	
	
}
