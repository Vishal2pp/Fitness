package com.fitness.dao;

import org.springframework.ui.ModelMap;
import com.fitness.Model.Member;

public interface MemberDao {
	public boolean saveMember(Member member, ModelMap model);
}
