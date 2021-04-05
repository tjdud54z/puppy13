package com.spring5.puppy13;


import java.util.Locale;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	//private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	//이동만 하는 컨트롤러만 관리....
	
	@RequestMapping(value = "/index.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String index(Locale locale, Model model) {
		return "index";	
	}
	
	@RequestMapping(value = "/login.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String login(Locale locale, Model model) {
		return "login";
	}
	
	@RequestMapping(value = "/signcheck.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String signcheck(Locale locale, Model model) {
		return "signcheck";
	}
	
	@RequestMapping(value = "/sign.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String sign(Locale locale, Model model) {
		return "sign";
	}

	@RequestMapping(value = "/home.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String home(Locale locale, Model model) {
		return "home";
	}
	
	@RequestMapping(value = "/admin_login.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String admin_login(Locale locale, Model model) {
		return "admin_login";
	}
	
	@RequestMapping(value = "/usermypage.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String usermypage(Locale locale, Model model) {
		return "usermypage";
	}
	
	@RequestMapping(value = "/usermypage_update.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String usermypage_update(Locale locale, Model model) {
		return "usermypage_update";
	}
	
	@RequestMapping(value = "/usermypage_out.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String usermypage_out(Locale locale, Model model) {
		return "usermypage_out";
	}

}
