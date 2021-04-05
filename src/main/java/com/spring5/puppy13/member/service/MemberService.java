package com.spring5.puppy13.member.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.dao.DataAccessException;
import com.spring5.puppy13.member.vo.MemberVO;

public interface MemberService {
	
	 public List<MemberVO> listMembers() throws DataAccessException;
	 
	 public int addUser13(MemberVO memberVO) throws DataAccessException;
	 
	 public int removeUser13(String id) throws DataAccessException;

	 public int updateUser13(MemberVO memberVO) throws DataAccessException;
	 
	 public String idCheck(String id) throws DataAccessException; 
	 
	 public String nicknameCheck(String nickname) throws DataAccessException;

	 public boolean loginCheck(MemberVO memberVO, HttpSession session) throws DataAccessException;
	 
	 public MemberVO viewMember(MemberVO memberVO) throws DataAccessException;
	 
	 public void logout(HttpSession session) throws DataAccessException;
	 
	 public int outuser(MemberVO memberVO) throws DataAccessException;

	 
}
