package com.stun.review_board;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	public String insert(MemberDTO dto, HttpSession session) {
		sqlsession.insert("member.insert",dto);
		return "notice";
	}

	

}
