package com.stun.review_board;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model,String text) {
//		sqlsession.selectOne("member.logincheck");
//		System.out.println("text = "+text);
		if (text != null && text.equals("loginfail"))
			model.addAttribute("text","로그인 정보를 다시 확인하세요...");
		return "index";
	}
}
