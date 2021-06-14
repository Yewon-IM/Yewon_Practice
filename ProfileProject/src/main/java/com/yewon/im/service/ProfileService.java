package com.yewon.im.service;

import java.util.ArrayList;
import java.util.List;

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
	
}
