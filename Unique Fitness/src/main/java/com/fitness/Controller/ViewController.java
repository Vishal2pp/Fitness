package com.fitness.Controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.util.Base64;

import org.apache.commons.lang3.SystemUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fitness.Model.Member;
import com.fitness.Service.PackageService;

@Controller
public class ViewController {

	public static ModelMap memberModel = null;
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

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home() {
		return "home";
	}

	@RequestMapping(value = "/addMember", method = RequestMethod.GET)
	public String addM(ModelMap model) {
		model.addAttribute("pkgData", pkgService.getAllPkgs());
		return "addMember";
	}
	
	@RequestMapping(value = "/pendingPayments", method = RequestMethod.GET)
	public String pendingPay() {
		return "pendingPayments";
	}
	@RequestMapping(value = "/modifyPayment", method = RequestMethod.GET)
	public String modifyPay() {
		return "modifyPayment";
	}
	@RequestMapping(value = "error", method = RequestMethod.GET)
	public String error(ModelMap model) {
		return "error";
	}
	@RequestMapping(value = "success", method = RequestMethod.GET)
	public String success(ModelMap model) {
			model.put("member", memberModel.get("member"));
			System.out.println(memberModel.get("member"));
			model.put("msg", memberModel.get("msg"));
			model.put("image", getImageBytes(((Member)memberModel.get("member")).getImagePath()));
			return "success";
	}
	
	public static String getImageBytes(String imageName) {
		if(SystemUtils.IS_OS_WINDOWS) {
			try {
				File serverFile = new File("C:\\gymImages\\"+imageName);
				FileInputStream fis=new FileInputStream(serverFile);
				ByteArrayOutputStream bos=new ByteArrayOutputStream();
				int b;
				byte[] buffer = new byte[1024];
				while((b=fis.read(buffer))!=-1){
				   bos.write(buffer,0,b);
				}
				byte[] fileBytes=bos.toByteArray();
				fis.close();
				bos.close();
				byte[] encoded=Base64.getEncoder().encode(fileBytes);
				return new String(encoded);
			} catch (Exception e) {
				return "";
			}
		}else if(SystemUtils.IS_OS_LINUX) {
			try {
				File serverFile = new File("/home/"+System.getProperty("user.name")+"/Documents/gymImages/:"+imageName);
				FileInputStream fis=new FileInputStream(serverFile);
				ByteArrayOutputStream bos=new ByteArrayOutputStream();
				int b;
				byte[] buffer = new byte[1024000];
				while((b=fis.read(buffer))!=-1){
				   bos.write(buffer,0,b);
				}
				byte[] fileBytes=bos.toByteArray();
				fis.close();
				bos.close();
				byte[] encoded=Base64.getEncoder().encode(fileBytes);
				return new String(encoded);
			} catch (Exception e) {
				e.printStackTrace();
				return "";
			}
		}
		return "";
	}
}
