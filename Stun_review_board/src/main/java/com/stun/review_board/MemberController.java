package com.stun.review_board;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.stun.review_board.dao.MemberDAO;
import com.stun.review_board.dto.MemberDTO;

@Controller
public class MemberController {

	@Autowired
	MemberDAO dao;
	
	@RequestMapping(value="/logincheck", method = RequestMethod.POST)
	public String logincheck(MemberDTO dto, HttpSession session) {
		dto= dao.logincheck(dto);
		if(dto != null) {
			session.setAttribute("dto", dto);
			return "chart";
		}
		else {
			return "redirect:/?text=loginfail";
		}
	}
}
