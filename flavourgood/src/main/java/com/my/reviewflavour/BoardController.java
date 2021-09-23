package com.my.reviewflavour;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

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


@Controller
@RequestMapping(value="evaluate")
public class BoardController {
		
	@Autowired
	SqlSession sqlsession;
	BoardDao dao;
	
	
	@RequestMapping(value = "boardmain")
	public String evaluate(Model model) {
		List<BoardDto> list= dao.selectlist();
		if(list.size()<5)
		{
			while(list.size()!=5)
			{
				list.add(new BoardDto());
			}
		}
		model.addAttribute("list",list);
		return "evaluate";
	}
	
}
