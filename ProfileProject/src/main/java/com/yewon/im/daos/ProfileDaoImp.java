package com.yewon.im.daos;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yewon.im.dtos.BoardDto;
import com.yewon.im.dtos.CommentDto;
import com.yewon.im.dtos.ProfileDto;

@Repository
public class ProfileDaoImp implements IProfileDao{
	
	private String namespace = "com.yewon.im.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<ProfileDto> memberList(){
		return sqlSession.selectList(namespace + "memberList");
	}
	
	public List<ProfileDto> numberthMemberList(Integer numberth){
		return sqlSession.selectList(namespace + "numberthMemberList", numberth);
	}
	
	public List<Map<String, String>> local(){
		return sqlSession.selectList(namespace + "local");
	}
	
	public List<ProfileDto> memberListFunction(String[] local, String[] gender){
		Map<String, String[]> map = new HashMap<>();
		map.put("locals", local);
		map.put("genders", gender);
		//System.out.println(orderBy);
		//System.out.println("locals : " + Arrays.toString(local) + "  //genders : " + Arrays.toString(gender) + "  //orderBys : " + Arrays.toString(orderBy) + "si :" + orderBy.getClass().getName());
		return sqlSession.selectList(namespace + "memberListFunction", map);
	}
	
	public List<ProfileDto> main(String[] local, String[] gender, String keyword, String orderBy){
		Map<String, Object> map = new HashMap<>();
		map.put("locals", local);
		map.put("genders", gender);
		map.put("keyword", keyword);
		map.put("orderBy", orderBy);
		
		System.out.println("dlocal : " + local);
		System.out.println("dgender : " + gender);
		System.out.println("dkeyword : " + keyword);
		System.out.println("dorderBy : " + orderBy);
		
		return sqlSession.selectList(namespace + "main", map);
	}
	
	public List<ProfileDto> keyword(String keyword){
		return sqlSession.selectList(namespace + "keyword", keyword);
	}
	
	public List<ProfileDto> orderBy(String orderBy){
		return sqlSession.selectList(namespace + "orderBy", orderBy);
	}
	
	public ProfileDto memberHome(int seq){
		return sqlSession.selectOne(namespace + "memberHome", seq);
	}
	
	public List<BoardDto> memberBoard(int member_seq) {
		return sqlSession.selectList(namespace + "memberBoard", member_seq);
	}
	
	public boolean writeBoard(BoardDto dto) {
		int count = sqlSession.insert(namespace + "writeBoard", dto);
		return count > 0 ? true:false;
	}
	
	public List<CommentDto> comment(ArrayList<Integer> board_seqs){
		Map<String, ArrayList<Integer>> map = new HashMap<String, ArrayList<Integer>>();
		map.put("board_seqs", board_seqs);
		return sqlSession.selectList(namespace + "comment", map);
	}
	
	public List<Map<String, Integer>> countComment(){
		return sqlSession.selectList(namespace + "countComment");
	}
	
	public boolean writeComment(CommentDto dto) {
		int count = sqlSession.insert(namespace + "writeComment", dto);
		return count > 0? true:false;
	}
	
	public boolean likeup(int board_seq){
		int count = sqlSession.update(namespace + "likeup", board_seq);
		return count > 0? true:false;
	}
}
