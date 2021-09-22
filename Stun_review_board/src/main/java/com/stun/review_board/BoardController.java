package com.stun.review_board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stun.review_board.dao.BoardDAO;
import com.stun.review_board.dto.BoardDTO;



@Controller
@RequestMapping(value="board")
public class BoardController {
	
	@Autowired
	BoardDAO dao;
	
	@RequestMapping(value="main")
	public String main(Model model) {
		List<BoardDTO> list = dao.selectlist();
		if( list.size() < 6 ) {
			while( list.size() !=5 )
				list.add(new BoardDTO());
		}
		model.addAttribute("list", list);
		return "board/main";
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
