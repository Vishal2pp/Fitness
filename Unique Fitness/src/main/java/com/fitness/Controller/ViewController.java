package com.fitness.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fitness.Service.JsonService;
import com.fitness.Service.PackageService;

@Controller
public class ViewController {
	
	@Autowired
	private JsonService jsonService;
	
	@Autowired
	private PackageService pkgService;
	
	@RequestMapping(value = {"login","/"}, method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout() {
		return "redirect:login";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.POST)
	public String home() {
		return "home";
	}
	
	@RequestMapping(value = "/addMember", method = RequestMethod.GET)
	public String addM(ModelMap model) {
		model.addAttribute("pkgData", pkgService.getAllPkgs());
		return "addMember";
	}
	@RequestMapping(value = "/updateMember", method = RequestMethod.GET)
	public String updateM() {
		return "updateMember";
	}
	@RequestMapping(value = "/allMembers", method = RequestMethod.GET)
	public String allM() {
		return "allMembers";
	}
	@RequestMapping(value = "/activeMembers", method = RequestMethod.GET)
	public String activeM() {
		return "activeMembers";
	}
	@RequestMapping(value = "/pendingPayments", method = RequestMethod.GET)
	public String pendingPay() {
		return "pendingPayments";
	}
	@RequestMapping(value = "/modifyPayment", method = RequestMethod.GET)
	public String modifyPay() {
		return "modifyPayment";
	}
	
}
