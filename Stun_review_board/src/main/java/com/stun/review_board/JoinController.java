package com.stun.review_board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.stun.review_board.dao.MemberDAO;
import com.stun.review_board.dto.MemberDTO;

@Controller
public class JoinController {

	@Autowired
	MemberDAO dao;

	@Autowired
	SqlSession sqlsession;

	@RequestMapping(value = "/joinaction")
	public String insert(MemberDTO dto, Model model) {
		if (dto.getName().equals("") || dto.getNickname().equals("") || dto.getId().equals("")
				|| dto.getPw().equals("")) {
			model.addAttribute("msg", "다시확인하세요");
			model.addAttribute("url", "/join");
			return "alert";
		} else {
			sqlsession.insert("member.insert", dto);
			model.addAttribute("msg", "회원가입성공");
			model.addAttribute("url", "/main");
			return "alert";
		}
	}



}
