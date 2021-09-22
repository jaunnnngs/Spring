package com.stun.review_board;

import java.util.Locale;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model,String text) {
//		sqlsession.selectOne("member.loginchk");
		System.out.println("text = "+text);
		if (text != null && text.equals("loginfail"))
			model.addAttribute("text","�α��� ������ Ȯ���ϼ���...");
		return "index";
	}
}
