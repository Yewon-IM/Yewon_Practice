package com.yogi.hoxy.dtos;

import java.util.Date;

public class MemberDto {
	
	private String id;
	private String pwd;
	private String name;
	private String email;
	private String tel;
	private String local;
	private String oAdd;
	private String add;
	private String detailAdd;
	private Date regDate;
	private String who;
	private String power;
	private String del;
	private String profileImg;
	
	public MemberDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberDto(String id, String pwd, String name, String email, String tel, String local, String oAdd,
			String add, String detailAdd, Date regDate, String who, String power, String del, String profileImg) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.tel = tel;
		this.local = local;
		this.oAdd = oAdd;
		this.add = add;
		this.detailAdd = detailAdd;
		this.regDate = regDate;
		this.who = who;
		this.power = power;
		this.del = del;
		this.profileImg = profileImg;
	}
	
	public MemberDto(String id, String pwd, String name, String email, String tel, String oAdd,
			String add, String detailAdd, String who) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.tel = tel;
		this.oAdd = oAdd;
		this.add = add;
		this.detailAdd = detailAdd;
		this.who = who;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getLocal() {
		return local;
	}

	public void setLocal(String local) {
		this.local = local;
	}

	public String getoAdd() {
		return oAdd;
	}

	public void setoAdd(String oAdd) {
		this.oAdd = oAdd;
	}

	public String getAdd() {
		return add;
	}

	public void setAdd(String add) {
		this.add = add;
	}

	public String getDetailAdd() {
		return detailAdd;
	}

	public void setDetailAdd(String detailAdd) {
		this.detailAdd = detailAdd;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getWho() {
		return who;
	}

	public void setWho(String who) {
		this.who = who;
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

	public String getProfileImg() {
		return profileImg;
	}

	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}

	@Override
	public String toString() {
		return "MemberDto [id=" + id + ", pwd=" + pwd + ", name=" + name + ", email=" + email + ", tel=" + tel
				+ ", local=" + local + ", oAdd=" + oAdd + ", add=" + add + ", detailAdd=" + detailAdd + ", regDate="
				+ regDate + ", who=" + who + ", power=" + power + ", del=" + del + ", profileImg=" + profileImg + "]";
	}



}
