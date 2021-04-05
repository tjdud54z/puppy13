package com.spring5.puppy13.member.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.spring5.puppy13.member.dao.MemberDAO;
import com.spring5.puppy13.member.vo.MemberVO;

/*@Transactional(propagation=Propagation.REQUIRED) */

@Service("memberService1")
public class MemberServiceImpl  implements MemberService{
	
	   @Autowired
	   @Inject
	   private MemberDAO memberDAO;
	   
	   /*
	   public void setMemberDAO(MemberDAO memberDAO){
		  
		   this.memberDAO = memberDAO;
		  
	   }
	   */

	   @Override
	   public List<MemberVO> listMembers() throws DataAccessException {
		   
	      List<MemberVO> membersList = null;
	      membersList = memberDAO.selectAllList();
	      return membersList;
	      
	   }

	   @Override
	   public int addUser13(MemberVO memberVO) throws DataAccessException {
		   
	     return memberDAO.insertUser13(memberVO);
	     
	   }


	   @Override
	   public int removeUser13(String id) throws DataAccessException {
		   
	      return memberDAO.deleteUser13(id);
	      
	   }
	   
	   @Override
	   public int updateUser13(MemberVO memberVO) throws DataAccessException {
		   
	      return memberDAO.updateUser13(memberVO);
	      
	   }
	   
	
	   @Override
	   public String idCheck(String id) throws DataAccessException {
		 
		 return memberDAO.idCheck(id);
		 
	   }
	   
	   @Override
	   public String nicknameCheck(String nickname) throws DataAccessException {
		 
		 return memberDAO.nicknameCheck(nickname);
		 
	   }
	   
		
		  @Override public boolean loginCheck(MemberVO memberVO, HttpSession session) throws DataAccessException {
		  
		  boolean result = memberDAO.loginCheck(memberVO);
		  
		  if(result) {
		  
		  MemberVO memberVO2 = viewMember(memberVO);
		  
		  session.setAttribute("id", memberVO2.getId());
		  session.setAttribute("password", memberVO2.getPassword());
		  session.setAttribute("name", memberVO2.getName());
		  session.setAttribute("nickname", memberVO2.getNickname());
		  session.setAttribute("outuser", memberVO2.getOutuser());
		  
		  
		  }
		  
		  return result;
		  
		  }
		  
		  @Override
		  public MemberVO viewMember(MemberVO memberVO) throws DataAccessException{
			  
			  return memberDAO.viewMember(memberVO);
		  
		  }
		  
		  @Override
		  public void logout(HttpSession session) throws DataAccessException {
			  
			  session.invalidate();
			  
		  }
		  
		   @Override
		   public int outuser(MemberVO memberVO) throws DataAccessException {
			   
		      return memberDAO.outuser(memberVO);
		      
		   }

}
