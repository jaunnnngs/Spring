package com.my.reviewflavour.Dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.my.reviewflavour.Dto.BoardDto;



@Repository
public class BoardDao {
	@Autowired
	SqlSession sqlsession;

	public List<BoardDto> selectlist(BoardDto dto) {

		List<BoardDto> boardlist = sqlsession.selectList("board.selectlist",dto);
		return boardlist;
	}
	
	public List<BoardDto> insertlist(BoardDto dto)
	{
		List<BoardDto> boardlist= sqlsession.selectList("board.insert",dto);
		return boardlist;
	}

}
