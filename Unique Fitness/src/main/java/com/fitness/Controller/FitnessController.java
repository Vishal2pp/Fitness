package com.fitness.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.fitness.Model.Member;
import com.fitness.Service.DownloadDataService;
import com.fitness.Service.MemberService;
import com.fitness.Service.SmsEmailService;

@Controller
public class FitnessController {
	@Autowired
	private DownloadDataService download;
	@Autowired
	private MemberService memberService;
	@Autowired
	private SmsEmailService smsMail;
	
	@RequestMapping(value="addMemberData", method = RequestMethod.POST)
	public String addMemberData(@ModelAttribute("Member")Member member, ModelMap model) {
		System.out.println(member);
		if(memberService.addMember(member, model)) {
			model.put("member", member);
			return "success";
		}
		return "success";
	}
	
	
	
	
	public static void main(String[] args) {
		
	}
}
