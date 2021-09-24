package com.my.reviewflavour;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.my.reviewflavour.Dao.MemberDao;
import com.my.reviewflavour.Dto.MemberDto;

/**
 * Handles requests for the application home page.
 */
@Controller
public class LoginController {
	
	@Autowired
	MemberDao dao;
	
	@RequestMapping(value = "/loginchk",method = { RequestMethod.POST,RequestMethod.GET})
	public String loginchk(MemberDto dto, HttpSession session) {
		dto=dao.chklogin(dto);
		if(dto!=null) {
			session.setAttribute("dto",dto);
			return "map";
		}
		else
		{
			return "redirect:/?text=loginfail";
		}
		
		
	}
	@RequestMapping(value = "/joinchk",method = { RequestMethod.POST,RequestMethod.GET})
	public String joinchk(MemberDto dto, HttpSession session) {
		dto=dao.chkjoin(dto);
		
		return "map";
		
		
	}
	

	
}
