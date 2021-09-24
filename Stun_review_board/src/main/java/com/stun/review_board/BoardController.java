package com.stun.review_board;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stun.review_board.dao.BoardDAO;
import com.stun.review_board.dto.BoardDTO;



@Controller
public class BoardController {
	
	@Autowired
	BoardDAO dao;
	
	@RequestMapping(value = "/join")
	public String join(Locale locale, Model model) {
		return "join";
	}
	
	@RequestMapping(value = "/notice")
	public String notice(Locale locale, Model model) {
		return "notice";
	}
	
	@RequestMapping(value="/index")
	public String stun(Locale locale, Model model) {
		return "index";
	}
	
	@RequestMapping(value="qna")
	public String qna(Model model) {
		List<BoardDTO> list = dao.selectlist();
		if( list.size() < 6 ) {
			while( list.size() !=5 )
				list.add(new BoardDTO());
		}
		model.addAttribute("list", list);
		return "board/qna";
	}
	
	@RequestMapping(value="gallery")
	public String gallery(Model model) {
		List<BoardDTO> list = dao.selectlist();
		if( list.size() < 6 ) {
			while( list.size() !=5 )
				list.add(new BoardDTO());
		}
		model.addAttribute("list", list);
		return "board/gallery";
	}
	
}
