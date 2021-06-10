package com.yewon.im.daos;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yewon.im.dtos.BoardDto;
import com.yewon.im.dtos.ProfileDto;

@Repository
public class ProfileDaoImp implements IProfileDao{
	
	private String namespace = "com.yewon.im.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<ProfileDto> memberList(){
		return sqlSession.selectList(namespace + "memberList");
	}
	
	public ProfileDto memberHome(int seq){
		return sqlSession.selectOne(namespace + "memberHome", seq);
	}
	
	public List<BoardDto> memberBoard(int member_seq) {
		return sqlSession.selectList(namespace + "memberBoard", member_seq);
	}
	
	public boolean writeBoard(BoardDto dto) {
		int count = sqlSession.insert(namespace + "writeDate", dto);
		return count > 0 ? true:false;
	}
}
