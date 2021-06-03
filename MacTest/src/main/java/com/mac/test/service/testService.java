package com.mac.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mac.test.daos.ItestDao;
import com.mac.test.dtos.HelloDto;

@Service
public class testService implements ItestService{
	
	@Autowired
	private ItestDao testService;

	@Override
	public List<HelloDto> helloList() {
		return testService.helloList();
	}
}
