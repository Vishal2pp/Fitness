package com.fitness.dao;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;

import com.fitness.Model.Member;

@Repository
public class MemberDaoImpl implements MemberDao{

	@Autowired
	private JdbcTemplate template;
	@Override
	@Transactional
	public boolean saveMember(Member member, ModelMap model) {
		int id;
		int paymentId;
		try {
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");  
			LocalDateTime now = LocalDateTime.now();  
			String date = dtf.format(now); 
			if(member.getDueDate().equals(""))
				member.setDueDate("00-00-0000");
			String userQuery = "insert into users(pkgId,paymentId,pkgStartDate,pkgEndDate,mName,mAge,mEmail,mSex,mAddress,mPhone,mDob,mPhoto,mGymTIme,mStatus,regDate) "
					+ "VALUES("+member.getPkgId()+",0,'"+member.getPkgStartDate()+"','"+member.getPkgEndDate()+"','"+member.getName()+"',"
					+ ""+member.getAge()+",'"+member.getEmail()+"','"+member.getGender()+"','"+member.getAddress()+"',"
					+ "'"+member.getNumber()+"','"+member.getDob()+"','"+member.getImagePath()+"',"
					+ "'"+member.getGymTime()+"','"+member.getMemberStatus()+"','"+date+"')";
	
			int status = template.update(userQuery);
	
			if(status > 0) {
				String sql = "select regId from users where mPhone=? AND mEmail=? AND mDob=?";
				Object[] data = new Object[] {member.getNumber(),member.getEmail(),member.getDob()};
				id = (int)template.queryForObject(sql, data, Integer.class);
				member.setId(id);
				data = new Object[] {member.getPkgId()};
				sql = "select pkgAmount from package where pkgId=?";
				double amount = (double)template.queryForObject(sql, data, Double.class);
	
				
				String paymentQuery = "insert into payment(regId,receiptNo,pkgId,pkgStartDate,pkgEndDate,amount,"
						+ "paidAmount,pendingAmount,paymentDate,paymentDueDate,paymentStatus) values("+id+","
						+ ""+member.getReceiptNo()+","+member.getPkgId()+",'"+member.getPkgStartDate()+"'"
						+ ",'"+member.getPkgEndDate()+"',"+amount+","+member.getPaidAmount()+","
						+ ""+member.getPendingAmount()+",'"+date+"','"+member.getDueDate()+"','"+member.getPaymentStatus()+"')";
				status = template.update(paymentQuery);
				if(status > 0) {
					data = new Object[] {member.getPkgId(),id,member.getReceiptNo()};
					sql = "select paymentId from payment where pkgId=? AND regId=? AND receiptNo=?";
					paymentId = (int)template.queryForObject(sql, data, Integer.class);
					member.setPaymentId(paymentId);
					userQuery = "update users set paymentId="+paymentId+" where regId="+id+"";
					status = template.update(userQuery);
					if(status > 0) {
						String history = "insert into paymentHistory(regId,paymentId,receiptNo,amountPaid,date,remark) "
								+ "values("+id+","+paymentId+","+member.getReceiptNo()+","+member.getPaidAmount()+",'"+date+"','Cash')";
						status = template.update(history);
						if(status > 0) {
							return true;
						}else {
							template.update("delete from users where regId="+id);
							template.update("delete from payment where regId="+id+"AND paymentId="+paymentId);
							model.put("msg", "Failed to execute payment history query.");
							return false;
						}
					}else {
						template.update("delete from users where regId="+id);
						template.update("delete from payment where regId="+id+"AND paymentId="+paymentId);
						model.put("msg", "Failed to execute user update query.");
						return false;
					}
				}else {
					template.update("delete from users where regId="+id);
					model.put("msg", "Failed to execute payment query.");
					return false;
				}
			}else {
				model.put("msg", "Failed to execute user query.");
				return false;
			}
		}catch(Exception e) {
			e.printStackTrace();
			model.put("msg", "Exception occured in saveMember() function.");
			return false;
		}
	}
}
