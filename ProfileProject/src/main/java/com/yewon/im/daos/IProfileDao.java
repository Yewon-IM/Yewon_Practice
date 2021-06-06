package com.yewon.im.daos;

import java.util.List;

import com.yewon.im.dtos.ProfileDto;

public interface IProfileDao {
	
	public List<ProfileDto> memberList();
}
