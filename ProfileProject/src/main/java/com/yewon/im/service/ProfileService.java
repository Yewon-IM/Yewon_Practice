package com.yewon.im.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yewon.im.daos.IProfileDao;
import com.yewon.im.dtos.ProfileDto;

@Service
public class ProfileService implements IProfileService{
	
	@Autowired
	private IProfileDao profileSerive;

	@Override
	public List<ProfileDto> memberList() {
		return profileSerive.memberList();
	}

	@Override
	public ProfileDto memberHome(int seq) {
		return profileSerive.memberHome(seq);
	}
	
}
