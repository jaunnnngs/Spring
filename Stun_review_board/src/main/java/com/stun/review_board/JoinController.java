package com.stun.review_board;

import java.util.Locale;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.stun.review_board.dao.MemberDAO;

@Controller
public class JoinController {

	@Autowired
	MemberDAO dao;

	SqlSession sqlsession;

	@RequestMapping(value = "memberinsert")
	public String join() {
		sqlsession.insert("member.insert");
			return "member/insert";
		}
	
	@RequestMapping(value = "/joincheck")
	public String joincheck(Locale locale, Model model) {
		return "join";
	}

}
