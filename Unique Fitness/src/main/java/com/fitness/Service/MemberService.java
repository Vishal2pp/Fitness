package com.fitness.Service;

import java.util.List;

import org.springframework.ui.ModelMap;

import com.fitness.Model.AllMembers;
import com.fitness.Model.Member;
import com.fitness.Model.UpdateMember;

public interface MemberService {
	public boolean addMember(Member member, ModelMap model);
	public boolean updateMember(UpdateMember member, ModelMap model);
	public List<AllMembers> getAllMembers(ModelMap model);
	public List<AllMembers> getActiveMembers(ModelMap model);
	public List<AllMembers> getExpiredMembers(ModelMap model);
	public List<AllMembers> getDeActivedMembers(ModelMap model);
	public String getMember(String id);
}
