package com.yewon.im.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yewon.im.daos.IProfileDao;
import com.yewon.im.dtos.BoardDto;
import com.yewon.im.dtos.CommentDto;
import com.yewon.im.dtos.ProfileDto;

@Service
public class ProfileService implements IProfileService{
	
	@Autowired
	private IProfileDao profileService;

	@Override
	public List<ProfileDto> memberList() {
		return profileService.memberList();
	}
	
	@Override
	public List<ProfileDto> numberthMemberList(Integer numberth) {
		return profileService.numberthMemberList(numberth);
	}
	
	@Override
	public int pageCount(int seqs) {
		return profileService.pageCount(seqs);
	}
	
	@Override
	public List<Map<String, String>> local() {
		return profileService.local();
	}
	
	@Override
	public List<ProfileDto> memberListFunction(String[] local, String[] gender) {
		return profileService.memberListFunction(local, gender);
	}
	
	@Override
	public List<ProfileDto> main(String[] local, String[] gender, String keyword, String orderBy,
			String numberth) {
		return profileService.main(local, gender, keyword, orderBy, numberth);
	}
	
	@Override
	public List<ProfileDto> keyword(String keyword) {
		return profileService.keyword(keyword);
	}
	
	@Override
	public List<ProfileDto> orderBy(String orderBy) {
		return profileService.orderBy(orderBy);
	}
	
	@Override
	public ProfileDto memberHome(int seq) {
		return profileService.memberHome(seq);
	}

	@Override
	public List<BoardDto> memberBoard(int member_seq) {
		return profileService.memberBoard(member_seq);
	}

	@Override
	public boolean writeBoard(BoardDto dto) {
		return profileService.writeBoard(dto);
	}

	@Override
	public List<CommentDto> comment(ArrayList<Integer> board_seqs) {
		return profileService.comment(board_seqs);
	}

	@Override
	public List<Map<String, Integer>> countComment() {
		return profileService.countComment();
	}

	@Override
	public boolean writeComment(CommentDto dto) {
		return profileService.writeComment(dto);
	}

	@Override
	public boolean likeup(int board_seq) {
		return profileService.likeup(board_seq);
	}

}
