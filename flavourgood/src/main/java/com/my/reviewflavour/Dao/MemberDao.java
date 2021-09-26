package com.my.reviewflavour.Dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.my.reviewflavour.Dto.MemberDto;

@Repository
public class MemberDao {

	@Autowired
	SqlSession sqlsession;
	
	public MemberDto chklogin(MemberDto dto) {
		dto=sqlsession.selectOne("member.loginchk",dto);
		return dto;
	}
	
	public MemberDto chkjoin(MemberDto dto) {
		dto=sqlsession.selectOne("member.joinchk",dto);
		return dto;
	}
	
}
