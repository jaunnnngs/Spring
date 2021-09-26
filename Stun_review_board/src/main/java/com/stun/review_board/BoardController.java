package com.stun.review_board;

import java.util.List;
import java.util.Locale;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.stun.review_board.dao.BoardDAO;
import com.stun.review_board.dto.BoardDTO;
import com.stun.review_board.dto.MemberDTO;

@Controller
public class BoardController {

	@Autowired
	BoardDAO dao;

	@Autowired
	SqlSession sqlsession;
	
	@RequestMapping(value = "/join")
	public String join(Locale locale, Model model) {
		return "join";
	}

	@RequestMapping(value = "/main")
	public String notice(Locale locale, Model model) {
		return "main";
	}

	@RequestMapping(value = "/index")
	public String index(Locale locale, Model model) {
		return "index";
	}

	
	@RequestMapping(value = "/write")
	public String write(Locale locale, Model model) {
		model.addAttribute("msg", "게시판 글쓰기로 이동합니다.");
		return "write";
	}
	
	@RequestMapping(value = "/update")
	public String update(Locale locale, Model model) {
		return "update";
	}
	@RequestMapping(value = "/alert")
	public String alert(Locale locale, Model model) {
		return "alert";
	}

	@RequestMapping(value = "/writeaction", produces = "text/html; charset=UTF-8")
	public String writeaction(Locale locale, Model model,BoardDTO dto) {
		sqlsession.insert("board.insert", dto);
		model.addAttribute("msg", "글쓰기 성공");
		model.addAttribute("url", "/notice");
		return "alert";
	}

	@RequestMapping(value = "/updateaction", produces = "text/html; charset=UTF-8")
	public String updateaction(Locale locale, Model model,BoardDTO dto) {
		sqlsession.insert("board.update", dto);
		model.addAttribute("msg", "업데이트 성공");
		model.addAttribute("url", "/noitce");
		return "alert";
	}
	
	@RequestMapping(value = "/deleteaction")
	public String deleteaction(Locale locale, Model model,BoardDTO dto) {
		sqlsession.insert("board.delete", dto);
		model.addAttribute("msg", "삭제 성공");
		model.addAttribute("url", "/notice");
		return "alert";
	}

	@RequestMapping(value = "notice")
	public String notice(Model model) {
		List<BoardDTO> list = dao.selectlist();
		if (list.size() < 6) {
			while (list.size() != 5)
				list.add(new BoardDTO());
		}
		model.addAttribute("list", list);
		return "notice";
	}

}