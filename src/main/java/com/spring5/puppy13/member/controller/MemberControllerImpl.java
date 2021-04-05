package com.spring5.puppy13.member.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring5.puppy13.member.service.MemberService;
import com.spring5.puppy13.member.vo.MemberVO;

@Controller("memberController1")
public class MemberControllerImpl implements MemberController {
	
	@Autowired
	@Inject
	private MemberService memberService;
	
	/*
	public MemberControllerImpl(MemberService memberService) {
		this.memberService = memberService;
	}
	*/
	
	/*
	 public void setMemberService(MemberServiceImpl memberService) {
	 
	 	this.memberService = memberService;
	 
	 }
	 */
	
	@Override
	@RequestMapping(value = "/admin_member.do", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView listMembers() throws Exception {
		
		List<MemberVO> membersList = memberService.listMembers();
		ModelAndView mav = new ModelAndView("admin_member");
		mav.addObject("membersList", membersList);
		return mav;
		
	}
	
	
	
	@Override
	@RequestMapping(value = "/User13/addUser13.do", method = RequestMethod.POST)
	//@ModelAttribute("member") MemberVO member은
	//member을 MemberVO 객체를 사용하여 jstl로 사용을 할 때 member을 주면 vo객체를 저절로
	//getter, setter을 사용을 할 수 있다.
	public ModelAndView addMember(@ModelAttribute("member") MemberVO member) throws Exception {
		
		//request.setCharacterEncoding("utf-8");
		int result = 0;
		result = memberService.addUser13(member);
		System.out.println(result);
		ModelAndView mav = new ModelAndView("redirect:/login.do");
		System.out.println("M.A.T Event : " + "사용자가 회원가입 하였습니다.");
		return mav;
		
	}
	
	@Override
	@RequestMapping(value = "/User13/removeUser13.do", method = RequestMethod.GET)
	public ModelAndView removeMember(@RequestParam("id") String id) throws Exception {
		
		//request.setCharacterEncoding("utf-8");
		memberService.removeUser13(id);
		ModelAndView mav = new ModelAndView("redirect:/admin_member.do");
		System.out.println("M.A.T Event : " + "회원을 삭제했습니다.");
		return mav;

	}
	
	@Override
	@RequestMapping(value = "/updateUser13.do", method = RequestMethod.POST)
	public ModelAndView updateMember(@ModelAttribute("member") MemberVO memberVO, HttpSession session) throws Exception {
		
		int result = 0;
		result = memberService.updateUser13(memberVO);
		System.out.println(result);
		logout(session);
		ModelAndView mav = new ModelAndView("redirect:/login.do");
		System.out.println("M.A.T Event : " + "회원이 정보수정을 하였습니다.");
		return mav;

	}
	
	@Override
	@RequestMapping(value = "/idCheck.do", method = RequestMethod.POST)
	 public void isCheck(@RequestParam("id") String id, HttpServletResponse response) throws Exception {
	 
		PrintWriter out = response.getWriter();
	 
		String CheckResult = memberService.idCheck(id);
	 
		out.print(CheckResult);
	 
	}
	
	@Override
	@RequestMapping(value = "/nicknameCheck.do", method = RequestMethod.POST)
	 public void nicknameCheck(@RequestParam("nickname") String nickname, HttpServletResponse response) throws Exception {
	 
		PrintWriter out = response.getWriter();
	 
		String CheckResult = memberService.nicknameCheck(nickname);
	 
		out.print(CheckResult);
	 
	}
	
	
	  @Override
	  @RequestMapping(value = "loginCheck.do", method = {RequestMethod.POST, RequestMethod.GET})
	  public ModelAndView loginCheck(@ModelAttribute MemberVO memberVO, HttpSession session) throws Exception {
	  
	  boolean result = memberService.loginCheck(memberVO, session);
	  ModelAndView mav = new ModelAndView();
	  
	  if(result == true && session.getAttribute("outuser").equals("NO")) {
		  
		  System.out.println("M.A.T Event : " + "회원이 접속 했습니다.");
		  mav.setViewName("/home");
		  mav.addObject("msg", "success");
		  
	  }else{
		  
		  System.out.println("M.A.T Event : " + "회원이 접속에 실패했습니다.");
		  mav.setViewName("/login");
		  mav.addObject("msg","failure");
		  
	  }
	  
	  	return mav;
	  	
	  }
	  
	  @Override
	  @RequestMapping(value = "/logout.do", method = {RequestMethod.POST,RequestMethod.GET})
	  public ModelAndView logout(HttpSession session) throws Exception {
	  
	  memberService.logout(session);
	  ModelAndView mav = new ModelAndView();
	  
	  mav.setViewName("/login");
	  mav.addObject("msg", "logout");
	  System.out.println("M.A.T Event : " + "회원이 로그아웃 하였습니다.");
	  
	  return mav;
	  
	  }
	  

		@Override
		@RequestMapping(value = "/outuser.do", method = RequestMethod.POST)
		public ModelAndView outuser(@ModelAttribute("member") MemberVO memberVO, HttpSession session) throws Exception {
			
			int result = 0;
			result = memberService.outuser(memberVO);
			System.out.println(result);
			logout(session);
			ModelAndView mav = new ModelAndView("redirect:/login.do");
			System.out.println("M.A.T Event : " + "회원이 탈퇴했습니다.");
			return mav;

		}
	  
	
}
