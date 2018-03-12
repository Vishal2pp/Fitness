package com.fitness.dao;

import java.util.List;

import org.springframework.ui.ModelMap;

import com.fitness.Model.AllMembers;
import com.fitness.Model.Member;

public interface MemberDao {
	public boolean saveMember(Member member, ModelMap model);
	public List<AllMembers> getAllMembers(ModelMap model);
}
