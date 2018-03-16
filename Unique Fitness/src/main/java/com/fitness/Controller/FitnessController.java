package com.fitness.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fitness.Model.AllMembers;
import com.fitness.Model.Member;
import com.fitness.Model.PendingPayment;
import com.fitness.Model.UpdateMember;
import com.fitness.Service.MemberService;

@Controller
public class FitnessController {
	
	@Autowired
	private MemberService memberService;

	
	@RequestMapping(value="addMemberData", method = RequestMethod.POST)
	public String addMemberData(@ModelAttribute("Member")Member member, ModelMap model) {
		System.out.println(member);
		if(memberService.addMember(member, model)) {
			model.put("member", member);
			ViewController.memberModel = model;
			return "redirect:success";
		}
		return "redirect:error";
	}
	@RequestMapping(value = "/allMembers", method = RequestMethod.GET)
	public String allM(ModelMap model) {
		List<AllMembers> list = memberService.getAllMembers(model);
		model.put("data", list);
		return "allMembers";
	}
	@RequestMapping(value = "/activeMembers", method = RequestMethod.GET)
	public String allActiveM(ModelMap model) {
		List<AllMembers> list = memberService.getActiveMembers(model);
		model.put("data", list);
		return "activeMembers";
	}
	@RequestMapping(value = "/deactiveMembers", method = RequestMethod.GET)
	public String allDeActiveM(ModelMap model) {
		List<AllMembers> list = memberService.getDeActivedMembers(model);
		model.put("data", list);
		return "deactiveMembers";
	}
	@RequestMapping(value = "/expiredMembers", method = RequestMethod.GET)
	public String allExActiveM(ModelMap model) {
		List<AllMembers> list = memberService.getExpiredMembers(model);
		model.put("data", list);
		return "expiredMembers";
	}
	@RequestMapping(value = "/updateMember", method = RequestMethod.GET)
	public String updateM(ModelMap model) {
		List<AllMembers> list = memberService.getAllMembers(model);
		model.put("data", list);
		return "updateMember";
	}
	@ResponseBody
	@RequestMapping(value = "/getMember", method = RequestMethod.POST)
	public String getM(@RequestParam("mid") String id, ModelMap model) {
		String jsonStr = memberService.getMember(id);
		return jsonStr;
	}
	
	@ResponseBody
	@RequestMapping(value = "/updateMemberData", method = RequestMethod.POST)
	public String updateM(@ModelAttribute("UpdateMember")UpdateMember member, ModelMap model) {
		System.out.println("Id="+member.getId());
		if(memberService.updateMember(member, model))
			return "DONE";
		else
			return "Failed to update";
	}
	
	@RequestMapping(value = "/pendingPayments", method = RequestMethod.GET)
	public String pendingPay(ModelMap model) {
		List<AllMembers> list = memberService.getPendingPayments(model);
		model.put("data", list);
		return "pendingPayments";
	}
	
	@ResponseBody
	@RequestMapping(value = "/getPendingMember", method = RequestMethod.POST)
	public String getPendingM(@RequestParam("mid") String id, ModelMap model) {
		String jsonStr = memberService.getPendingMember(id);
		return jsonStr;
	}
	
	@ResponseBody
	@RequestMapping(value = "/updatePendingMember", method = RequestMethod.POST)
	public String updatePayment(@ModelAttribute("PendingPayment")PendingPayment member, ModelMap model) {
		System.out.println("Id="+member.getId());
		if(memberService.makePayment(member, model))
			return "DONE";
		else
			return "Failed to update";
	}
	public static void main(String[] args) {
		
	}
}
