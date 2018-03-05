package com.fitness.Service;

import org.springframework.ui.ModelMap;
import com.fitness.Model.Member;

public interface MemberService {
	public boolean addMember(Member member, ModelMap model);
}
