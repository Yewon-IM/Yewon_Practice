package com.yewon.im.daos;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ProfileDaoImp implements IProfileDao{
	
	private String namespace = "com.yewon.im.";
	
	private SqlSessionTemplate sqlSession;
	
}
