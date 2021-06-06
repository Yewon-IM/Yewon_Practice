package com.yewon.im.dtos;

import java.util.Date;

public class ProfileDto {
	
	private int seq;
	private String name;
	private String pwd;
	private int age;
	private String local;
	private String job;
	private Date birthday;
	private int like;
	private String gender;
	private String hobby;
	private int who;
	
	public ProfileDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProfileDto(int seq, String name, String pwd, int age, String local, String job, Date birthday, int like,
			String gender, String hobby, int who) {
		super();
		this.seq = seq;
		this.name = name;
		this.pwd = pwd;
		this.age = age;
		this.local = local;
		this.job = job;
		this.birthday = birthday;
		this.like = like;
		this.gender = gender;
		this.hobby = hobby;
		this.who = who;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
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

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getLocal() {
		return local;
	}

	public void setLocal(String local) {
		this.local = local;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public int getLike() {
		return like;
	}

	public void setLike(int like) {
		this.like = like;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public int getWho() {
		return who;
	}

	public void setWho(int who) {
		this.who = who;
	}

	@Override
	public String toString() {
		return "ProfileDto [seq=" + seq + ", name=" + name + ", pwd=" + pwd + ", age=" + age + ", local=" + local
				+ ", job=" + job + ", birthday=" + birthday + ", like=" + like + ", gender=" + gender + ", hobby="
				+ hobby + ", who=" + who + "]";
	}
	
}
