package com.fitness.Service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.apache.commons.lang3.SystemUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import com.fitness.Model.Member;
import com.fitness.dao.MemberDao;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDao memberDao;
	@Override
	public boolean addMember(Member member, ModelMap model) {
		try {
			boolean flag = false;
			MultipartFile file = member.getFile();
			if(file.isEmpty()) {
				model.put("msg", "Failed to add member as photo is not upploaded. Please try again");
				return false;
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
						flag = true;
	
					} catch (Exception e) {
						model.put("msg", "Failed to add member as photo is not upploaded. Please try again");
						return false;
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
					flag = true;
					} catch (Exception e) {
						model.put("msg", "Failed to add member as photo is not upploaded. Please try again");
						return false;
					}
				}
			}
			
			if(flag) {
				member.setPendingAmount(member.getPkgAmt()-member.getPaidAmount());
				if(member.getPendingAmount() == 0) {
					member.setPaymentStatus("Done");
					member.setMemberStatus("Active");
				}else {
					member.setPaymentStatus("Pending");
					member.setMemberStatus("Active");
				}
				return memberDao.saveMember(member, model);
			}
			model.put("msg", "Undedines error occured. Failed to add member to database. Please try again!");
			return false;
		}catch(Exception e) {
			e.printStackTrace();
			model.put("msg", "Exception occured in addMember() function.");
			return false;
		}
	}
}
