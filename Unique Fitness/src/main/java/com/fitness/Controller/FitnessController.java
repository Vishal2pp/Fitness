package com.fitness.Controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.apache.commons.lang3.SystemUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.fitness.Model.Member;
import com.fitness.Service.DownloadDataService;
import com.fitness.Service.MemberService;
import com.fitness.Service.SmsEmailService;

@Controller
public class FitnessController {
	@Autowired
	private DownloadDataService download;
	@Autowired
	private MemberService member;
	@Autowired
	private SmsEmailService smsMail;
	
	@RequestMapping(value="addMemberData", method = RequestMethod.POST)
	public String addMemberData(@ModelAttribute("Member")Member member, ModelMap model) {
		System.out.println(member);
		MultipartFile file = member.getFile();
		if(file.isEmpty()) {
			model.put("msg", "Failed to add member as photo is not upploaded. Please try again");
			return "error";
		}else {
			if(SystemUtils.IS_OS_WINDOWS) {
				try {
					byte[] bytes = file.getBytes();
					File f = new File("C:\\gymImages");
					if(!f.exists())
						f.mkdir();
					String name = "" + Math.random()+ ".jpg";
					File serverFile = new File("C:\\gymImages\\"+name);
					BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
					stream.write(bytes);
					stream.close();
					member.setImagePath(name);

				} catch (Exception e) {
					model.put("msg", "Failed to add member as photo is not upploaded. Please try again");
					return "error";
				}
			}else if(SystemUtils.IS_OS_LINUX) {
				try {
				byte[] bytes = file.getBytes();
				String path = "/home/"+System.getProperty("user.name")+"/Documents/gymImages/";
				File f = new File(path);
				if(!f.exists())
					f.mkdir();
				String name = "" + Math.random()+ ".jpg";
				File serverFile = new File(path + File.pathSeparator +name);
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				member.setImagePath(name);
				} catch (Exception e) {
					model.put("msg", "Failed to add member as photo is not upploaded. Please try again");
					return "error";
				}
			}
		}
		
		return "login";
	}
	public static void main(String[] args) {
		System.out.println(System.getProperty("os.name"));
	}
}
