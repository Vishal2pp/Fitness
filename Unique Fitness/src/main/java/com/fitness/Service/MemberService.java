package com.fitness.Service;

import java.util.List;

import org.springframework.ui.ModelMap;

import com.fitness.Model.AllMembers;
import com.fitness.Model.Member;

public interface MemberService {
	public boolean addMember(Member member, ModelMap model);
	public List<AllMembers> getAllMembers(ModelMap model);
}
