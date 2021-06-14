package com.yewon.im.service;

import java.util.ArrayList;
import java.util.List;

import com.yewon.im.dtos.BoardDto;
import com.yewon.im.dtos.CommentDto;
import com.yewon.im.dtos.ProfileDto;

public interface IProfileService {

	public List<ProfileDto> memberList();
	
	public ProfileDto memberHome(int seq);
	
	public List<BoardDto> memberBoard(int member_seq);
	
	public boolean writeBoard(BoardDto dto);
	
	public List<CommentDto> comment(ArrayList<Integer> board_seqs);
}
