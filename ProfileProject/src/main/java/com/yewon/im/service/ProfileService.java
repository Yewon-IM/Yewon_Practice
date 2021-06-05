package com.yewon.im.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yewon.im.daos.IProfileDao;

@Service
public class ProfileService implements IProfileService{
	
	@Autowired
	private IProfileDao profileSerive;
	
}
