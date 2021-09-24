package com.my.reviewflavour;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	SqlSession sqlsession;
	
	@RequestMapping(value = "/",method = { RequestMethod.POST,RequestMethod.GET})
	public String home(Locale locale, Model model, String text) {
		//System.out.println("text= "+text);
		if(text!=null && text.equals("loginfail")) {
			model.addAttribute("text","로그인 정보를 확인하세요");
		}
//		else if(text.equals("loginsuccess"))
//		{
//			model.addAttribute("text","회원가입 성공!");
//		}

		return "home";
	}
	

	@RequestMapping(value = "/join", method = { RequestMethod.POST,RequestMethod.GET})
	public String join(Locale locale, Model model) {

		return "join";
	}
	
}
