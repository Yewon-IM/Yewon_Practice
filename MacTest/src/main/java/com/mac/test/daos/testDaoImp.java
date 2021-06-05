package com.mac.test.daos;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mac.test.dtos.HelloDto;

@Repository
public class testDaoImp implements ItestDao{
	
	private String namespace = "com.mac.test.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<HelloDto> helloList(){
		return sqlSession.selectList(namespace + "helloList");
	}
}
