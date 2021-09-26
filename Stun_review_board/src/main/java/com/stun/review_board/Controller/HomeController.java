package com.stun.review_board.Controller;

<<<<<<< HEAD:Stun_review_board/src/main/java/com/stun/review_board/Controller/HomeController.java
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
=======
>>>>>>> jaunnnngs:Stun_review_board/src/main/java/com/stun/review_board/HomeController.java
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

<<<<<<< HEAD:Stun_review_board/src/main/java/com/stun/review_board/Controller/HomeController.java

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "main";
	}
	
//	@RequestMapping(value = "/map", method = { RequestMethod.POST,RequestMethod.GET})
//	public String map() {
//
//		return "map";
//		}
	@RequestMapping(value = "/evaluate", method = { RequestMethod.POST,RequestMethod.GET})
	public String evaluate() {

		return "evalaute";
		}
	
=======
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
>>>>>>> jaunnnngs:Stun_review_board/src/main/java/com/stun/review_board/HomeController.java
}
