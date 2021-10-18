package com.stun.review_board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.stun.review_board.dto.BoardDTO;

@Repository
public class BoardDAO {

	@Autowired
	SqlSession sqlsession;

	public List<BoardDTO> selectlist() {
		List<BoardDTO> list = sqlsession.selectList("board.selectlist1");// notice 보여주기
		return list;
	}

	public List<BoardDTO> boardselectlist(BoardDTO dto) {
		List<BoardDTO> list = sqlsession.selectList("board.selectlist2",dto);// 민영이 게시판
		return list;
	}

	public List<BoardDTO> insertlist(BoardDTO dto) {
		List<BoardDTO> boardlist = sqlsession.selectList("board.boardinsert", dto);
		return boardlist;
	}

//	조회수 구현해보기
	public int boardhit(int hits) {
		sqlsession.update("board.noticehit", hits);
		return hits;
	}
}
