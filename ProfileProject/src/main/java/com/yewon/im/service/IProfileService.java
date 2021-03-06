package com.yewon.im.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.yewon.im.dtos.BoardDto;
import com.yewon.im.dtos.CommentDto;
import com.yewon.im.dtos.ProfileDto;

public interface IProfileService {

	public List<ProfileDto> memberList();
	
	public List<ProfileDto> numberthMemberList(Integer numberth);
	
	public List<Map<String, String>> local();
	
	public List<ProfileDto> memberListFunction(String[] local, String[] gender);
	
	public List<ProfileDto> main(String[] local, String[] gender, String keyword, String orderBy);

	public List<ProfileDto> keyword(String keyword);
	
	public List<ProfileDto> orderBy(String orderBy);
	
	public ProfileDto memberHome(int seq);
	
	public List<BoardDto> memberBoard(int member_seq);
	
	public boolean writeBoard(BoardDto dto);
	
	public List<CommentDto> comment(ArrayList<Integer> board_seqs);
	
	public List<Map<String, Integer>> countComment();
	
	public boolean writeComment(CommentDto dto); 
	
	public boolean likeup(int board_seq);
}
