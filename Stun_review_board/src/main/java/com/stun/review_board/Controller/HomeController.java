package com.stun.review_board.Controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


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
	
}