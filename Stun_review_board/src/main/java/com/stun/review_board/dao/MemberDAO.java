package com.stun.review_board.dao;

import java.util.Locale;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.stun.review_board.dto.MemberDTO;

@Repository
public class MemberDAO {
	
	@Autowired
	SqlSession sqlsession;

	public MemberDTO logincheck(MemberDTO dto) {
		dto = sqlsession.selectOne("member.logincheck",dto);
		return dto;
	}
	
	
}
