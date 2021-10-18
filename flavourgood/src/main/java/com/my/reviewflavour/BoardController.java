package com.my.reviewflavour;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.my.reviewflavour.Dao.BoardDao;
import com.my.reviewflavour.Dto.BoardDto;
import com.my.reviewflavour.Dto.MemberDto;

<<<<<<< HEAD

@Controller

=======
@Controller
>>>>>>> main
public class BoardController {
		
	@Autowired
	SqlSession sqlsession;
	@Autowired
	BoardDao dao;
	
	
<<<<<<< HEAD
	@RequestMapping(value = "/evaluate",method = { RequestMethod.POST,RequestMethod.GET})
	public String evaluate(Model model, HttpSession session, BoardDto dto ) {
		List<BoardDto> list= dao.selectlist(dto);
		if(list.size()<5)
		{
			while(list.size()!=5)
			{
				list.add(new BoardDto());
			}
		}
		System.out.println(dto.getTitle());
		model.addAttribute("list",list);
		return "/evaluate";
	}
=======
//	@RequestMapping(value = "/evaluate",method = { RequestMethod.POST,RequestMethod.GET})
//	public String evaluate(Model model, HttpSession session, BoardDto dto ) {
//		List<BoardDto> list= dao.selectlist(dto);
//		if(list.size()<5)
//		{
//			while(list.size()!=5)
//			{
//				list.add(new BoardDto());
//			}
//		}
//		System.out.println(dto.getTitle());
//		model.addAttribute("list",list);
//		return "evaluate";
//	}
	
	@RequestMapping(value = "evaluate")
	public String evaluate(Model model,BoardDto dto ) {
		List<BoardDto> list = dao.selectlist(dto);
		if (list.size() < 6) {
			while (list.size() != 5)
				list.add(new BoardDto());
		}
		model.addAttribute("list", list);
		return "evaluate";
	}
	
>>>>>>> main
	@RequestMapping(value = "/evaldb",method = { RequestMethod.POST,RequestMethod.GET})
	public String evaldb(Model model, BoardDto dto) {
		List<BoardDto> list= dao.insertlist(dto);
		System.out.println(dto.getNickname());
		model.addAttribute("list",list);
<<<<<<< HEAD
		return "/evaluate";
=======
		return "evaluate";
	}
	
	@RequestMapping(value = "/board")
	public String board(Locale locale, Model model) {
		return "board";
>>>>>>> main
	}
	
	
	
}
