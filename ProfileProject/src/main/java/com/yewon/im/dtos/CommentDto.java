package com.yewon.im.dtos;

import java.util.Date;

public class CommentDto {
	
	private int comment_seq;
	private int board_seq;
	private String content;
	private int member_seq;
	private Date writeDate;
	private int like;
	private ProfileDto profileDto;
	
	public CommentDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CommentDto(int comment_seq, int board_seq, String content, int member_seq, Date writeDate, int like,
			ProfileDto profileDto) {
		super();
		this.comment_seq = comment_seq;
		this.board_seq = board_seq;
		this.content = content;
		this.member_seq = member_seq;
		this.writeDate = writeDate;
		this.like = like;
		this.profileDto = profileDto;
	}
	
	public CommentDto(int board_seq, String content, int member_seq) {
		super();
		this.board_seq = board_seq;
		this.content = content;
		this.member_seq = member_seq;
	}

	public int getComment_seq() {
		return comment_seq;
	}

	public void setComment_seq(int comment_seq) {
		this.comment_seq = comment_seq;
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

	public ProfileDto getProfileDto() {
		return profileDto;
	}

	public void setProfileDto(ProfileDto profileDto) {
		this.profileDto = profileDto;
	}

	@Override
	public String toString() {
		return "CommentDto [comment_seq=" + comment_seq + ", board_seq=" + board_seq + ", content=" + content
				+ ", member_seq=" + member_seq + ", writeDate=" + writeDate + ", like=" + like + ", profileDto="
				+ profileDto + "]";
	}

}
