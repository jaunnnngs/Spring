package com.stun.review_board.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
<<<<<<< HEAD

import com.stun.review_board.dto.MemberDto;

@Repository
public class MemberDao {


	@Autowired
	SqlSession sqlsession;
	
	public MemberDto chklogin(MemberDto dto) {
		dto=sqlsession.selectOne("member.loginchk",dto);
=======
import com.stun.review_board.dto.MemberDTO;

@Repository
public class MemberDAO {
	
	@Autowired
	SqlSession sqlsession;

	public MemberDTO logincheck(MemberDTO dto) {
		dto = sqlsession.selectOne("member.logincheck",dto);
>>>>>>> jaunnnngs
		return dto;
	}
	
	
}
