package com.yewon.im.service;

import java.util.List;

import com.yewon.im.dtos.ProfileDto;

public interface IProfileService {

	public List<ProfileDto> memberList();
	
	public ProfileDto memberHome(int seq);
}
