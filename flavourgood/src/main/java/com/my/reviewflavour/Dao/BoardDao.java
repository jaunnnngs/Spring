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

	public List<BoardDto> selectlist() {

		List<BoardDto> boardlist = sqlsession.selectList("board.selectlist");
		return boardlist;
	}

}
