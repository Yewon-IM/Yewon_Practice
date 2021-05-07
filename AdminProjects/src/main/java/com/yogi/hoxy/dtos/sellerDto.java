package com.yogi.hoxy.dtos;

public class sellerDto {
	private String id;
	private String shoptel;
	private String shopname;
	private String shopadd;
	private String local;
	private int businessnum;
	private int shopid;
	private String power;
	
	public sellerDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public sellerDto(String id, String shoptel, String shopname, String shopadd, String local, int businessnum,
			int shopid, String power) {
		super();
		this.id = id;
		this.shoptel = shoptel;
		this.shopname = shopname;
		this.shopadd = shopadd;
		this.local = local;
		this.businessnum = businessnum;
		this.shopid = shopid;
		this.power = power;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getShoptel() {
		return shoptel;
	}

	public void setShoptel(String shoptel) {
		this.shoptel = shoptel;
	}

	public String getShopname() {
		return shopname;
	}

	public void setShopname(String shopname) {
		this.shopname = shopname;
	}

	public String getShopadd() {
		return shopadd;
	}

	public void setShopadd(String shopadd) {
		this.shopadd = shopadd;
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

	public int getShopid() {
		return shopid;
	}

	public void setShopid(int shopid) {
		this.shopid = shopid;
	}

	public String getPower() {
		return power;
	}

	public void setPower(String power) {
		this.power = power;
	}

	@Override
	public String toString() {
		return "sellerDto [id=" + id + ", shoptel=" + shoptel + ", shopname=" + shopname + ", shopadd=" + shopadd
				+ ", local=" + local + ", businessnum=" + businessnum + ", shopid=" + shopid + ", power=" + power + "]";
	}
	
}
