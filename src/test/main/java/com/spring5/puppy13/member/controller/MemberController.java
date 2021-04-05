package com.spring5.puppy13.member.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring5.puppy13.member.vo.MemberVO;

public interface MemberController {
	
	public ModelAndView listMembers() throws Exception;
	
	public ModelAndView addMember(@ModelAttribute("member") MemberVO member) throws Exception;
	
	public ModelAndView removeMember(@RequestParam("id") String id) throws Exception;
	
	public ModelAndView updateMember(@ModelAttribute("member") MemberVO memberVO, HttpSession session) throws Exception;
	
	public void isCheck(@RequestParam("id") String id, HttpServletResponse response) throws Exception;
	
	public void nicknameCheck(@RequestParam("nickname") String nickname, HttpServletResponse response) throws Exception;

	public ModelAndView loginCheck(@ModelAttribute MemberVO memberVO, HttpSession session) throws Exception;
	
	public ModelAndView logout(HttpSession session) throws Exception;
	
	public ModelAndView outuser(@ModelAttribute("member") MemberVO memberVO, HttpSession session) throws Exception;

}
