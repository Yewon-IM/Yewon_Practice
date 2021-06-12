package com.yewon.im.dtos;

import java.util.Date;

public class BoardDto {
	
	private int board_seq;
	private String content;
	private int member_seq;
	private Date writeDate;
	private int like;
	private String board_img;
	
	public BoardDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BoardDto(int board_seq, String content, int member_seq, Date writeDate, int like, String board_img) {
		super();
		this.board_seq = board_seq;
		this.content = content;
		this.member_seq = member_seq;
		this.writeDate = writeDate;
		this.like = like;
		this.board_img = board_img;
	}
	
	public BoardDto(String content, int member_seq) {
		super();
		this.content = content;
		this.member_seq = member_seq;
	}
	
	

	public int getBoard_seq() {
		return board_seq;
	}

	public void setBoard_seq(int board_seq) {
		this.board_seq = board_seq;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getMember_seq() {
		return member_seq;
	}

	public void setMember_seq(int member_seq) {
		this.member_seq = member_seq;
	}

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}

	public int getLike() {
		return like;
	}

	public void setLike(int like) {
		this.like = like;
	}

	public String getBoard_img() {
		return board_img;
	}

	public void setBoard_img(String board_img) {
		this.board_img = board_img;
	}

	@Override
	public String toString() {
		return "BoardDto [board_seq=" + board_seq + ", content=" + content + ", member_seq=" + member_seq
				+ ", writeDate=" + writeDate + ", like=" + like + ", board_img=" + board_img + "]";
	}
	
}
