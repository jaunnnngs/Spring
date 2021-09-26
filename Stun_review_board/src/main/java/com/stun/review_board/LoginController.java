package com.stun.review_board;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.stun.review_board.dao.MemberDAO;
import com.stun.review_board.dto.MemberDTO;

@Controller
public class LoginController {

	@Autowired
	MemberDAO dao;

	@RequestMapping(value = "/logincheck", method = RequestMethod.POST, produces = "text/html; charset=UTF-8")
	public String logincheck(MemberDTO dto, HttpSession session, Model model) {
		dto = dao.logincheck(dto);
		if (dto != null) {
			session.setAttribute("dto", dto);
			model.addAttribute("msg", "로그인성공");
			model.addAttribute("url", "/main");
			return "alert";
		} else {
			model.addAttribute("msg", "로그인실패");
			model.addAttribute("url", "/index");
			return "alert";
		}
	}
}
