package com.fitness.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fitness.Model.Member;
import com.fitness.dao.MemberDao;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDao memberDao;
	@Override
	public boolean addMember(Member member) {
		
		return memberDao.saveMember(member);
	}

}
