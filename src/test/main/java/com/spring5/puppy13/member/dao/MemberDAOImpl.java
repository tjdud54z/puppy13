package com.spring5.puppy13.member.dao;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring5.puppy13.member.vo.MemberVO;

@Repository("memberDAO1")
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<MemberVO> selectAllList() throws DataAccessException {
		
		List<MemberVO> membersList = null;
		membersList = sqlSession.selectList("User13Mapper.selectAllList");
		return membersList;
		
	}

	@Override
	public int insertUser13(MemberVO memberVO) throws DataAccessException {
		
		int result = sqlSession.insert("User13Mapper.insertUser13", memberVO);
		return result;
		
	}
	
	@Override
	public int deleteUser13(String id) throws DataAccessException {
		
		int result = sqlSession.delete("User13Mapper.deleteUser13", id);
		return result;
		
	}
	
	@Override
	public int updateUser13(MemberVO memberVO) throws DataAccessException {
		
		int result = sqlSession.update("User13Mapper.updateUser13", memberVO);
		return result;
		
	}
	
	@Override
	public String idCheck(String id) throws DataAccessException {
	
		return sqlSession.selectOne("User13Mapper.idCheck", id);
	 
	}
	
	@Override
	public String nicknameCheck(String nickname) throws DataAccessException {
	
		return sqlSession.selectOne("User13Mapper.nicknameCheck", nickname);
	 
	}
	
	
	@Override
	public boolean loginCheck(MemberVO memberVO) throws DataAccessException {
	  
	  String name = sqlSession.selectOne("User13Mapper.loginCheck", memberVO);
	  return (name == null) ? false:true;
	  
	}
	  
	@Override
	public MemberVO viewMember(MemberVO memberVO) throws DataAccessException {
		
		return sqlSession.selectOne("User13Mapper.viewMember", memberVO);
	  
	}
	  
	@Override
	public void logout(HttpSession session) throws DataAccessException {
		  
	}
	
	@Override
	public int outuser(MemberVO memberVO) throws DataAccessException {
		
		int result = sqlSession.update("User13Mapper.outuser", memberVO);
		return result;
		
	}
	 
	
}
