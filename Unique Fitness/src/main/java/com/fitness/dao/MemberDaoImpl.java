package com.fitness.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;

import com.fitness.Controller.ViewController;
import com.fitness.Model.AllMembers;
import com.fitness.Model.Member;
import com.fitness.Model.UpdateMember;

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
			String sql = "select count from count where ?";
			Object[] data1 = new Object[] {1};
			int count = (int)template.queryForObject(sql, data1, Integer.class);
			String regId = ""+now.getYear()+"/"+now.getMonthValue()+"/"+ count;
			
			String date = dtf.format(now); 
			if(member.getDueDate().equals(""))
				member.setDueDate("00-00-0000");
			String userQuery = "insert into users(regId,pkgId,paymentId,pkgStartDate,pkgEndDate,mName,mAge,mEmail,mSex,mAddress,mPhone,mDob,mPhoto,mGymTIme,mStatus,regDate) "
					+ "VALUES('"+regId+"',"+member.getPkgId()+",0,'"+member.getPkgStartDate()+"','"+member.getPkgEndDate()+"','"+member.getName()+"',"
					+ ""+member.getAge()+",'"+member.getEmail()+"','"+member.getGender()+"','"+member.getAddress()+"',"
					+ "'"+member.getNumber()+"','"+member.getDob()+"','"+member.getImagePath()+"',"
					+ "'"+member.getGymTime()+"','"+member.getMemberStatus()+"','"+date+"')";
	
			int status = template.update(userQuery);
	
			if(status > 0) {
				/*sql = "select regId from users where mPhone=? AND mEmail=? AND mDob=?";
				Object[] data = new Object[] {member.getNumber(),member.getEmail(),member.getDob()};
				id = (int)template.queryForObject(sql, data, Integer.class);*/
				member.setId(regId);
				Object[] data = new Object[] {member.getPkgId()};
				sql = "select pkgAmount from package where pkgId=?";
				double amount = (double)template.queryForObject(sql, data, Double.class);
	
				
				String paymentQuery = "insert into payment(regId,receiptNo,pkgId,pkgStartDate,pkgEndDate,amount,"
						+ "paidAmount,pendingAmount,paymentDate,paymentDueDate,paymentStatus) values('"+regId+"',"
						+ ""+member.getReceiptNo()+","+member.getPkgId()+",'"+member.getPkgStartDate()+"'"
						+ ",'"+member.getPkgEndDate()+"',"+amount+","+member.getPaidAmount()+","
						+ ""+member.getPendingAmount()+",'"+date+"','"+member.getDueDate()+"','"+member.getPaymentStatus()+"')";
				
				status = template.update(paymentQuery);
				if(status > 0) {
					data = new Object[] {member.getPkgId(),regId,member.getReceiptNo()};
					sql = "select paymentId from payment where pkgId=? AND regId=? AND receiptNo=?";
					paymentId = (int)template.queryForObject(sql, data, Integer.class);
					member.setPaymentId(paymentId);
					userQuery = "update users set paymentId="+paymentId+" where regId='"+regId+"'";
					status = template.update(userQuery);
					if(status > 0) {
						String history = "insert into paymentHistory(regId,paymentId,receiptNo,amountPaid,date,remark) "
								+ "values('"+regId+"',"+paymentId+","+member.getReceiptNo()+","+member.getPaidAmount()+",'"+date+"','Cash')";
						status = template.update(history);
						if(status > 0) {
							template.update("update count set count = "+(count+1)+" where count="+count);
							return true;
						}else {
							template.update("delete from users where regId='"+regId+"'");
							template.update("delete from payment where regId='"+regId+"' AND paymentId="+paymentId);
							model.put("msg", "Failed to execute payment history query.");
							return false;
						}
					}else {
						template.update("delete from users where regId='"+regId+"'");
						template.update("delete from payment where regId='"+regId+"' AND paymentId="+paymentId);
						model.put("msg", "Failed to execute user update query.");
						return false;
					}
				}else {
					template.update("delete from users where regId='"+regId+"'");
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
	@Override
	public List<AllMembers> getAllMembers(ModelMap model) {
		
		return template.query("select * from users", new RowMapper<AllMembers>() {

			@Override
			public AllMembers mapRow(ResultSet rs, int rowNum) throws SQLException {
					AllMembers m = new AllMembers();
					m.setId(rs.getString(1));
					m.setName(rs.getString(6));
					m.setAge(rs.getInt(7));
					m.setEmail(rs.getString(8));
					//m.setGender(rs.getString(9));
					//m.setAddress(rs.getString(10));
					m.setNumber(rs.getLong(11));
					m.setDob(rs.getString(12));
					m.setImagePath(ViewController.getImageBytes(rs.getString(13)));
					m.setMemberStatus(rs.getString(15));
					m.setRegDate(rs.getString(16));
					return m;
			}
		});
	}
	@Override
	public List<AllMembers> getActiveMembers(ModelMap model) {
		return template.query("select * from users where users.mStatus = 'Active'", new RowMapper<AllMembers>() {

			@Override
			public AllMembers mapRow(ResultSet rs, int rowNum) throws SQLException {
					AllMembers m = new AllMembers();
					m.setId(rs.getString(1));
					m.setName(rs.getString(6));
					m.setAge(rs.getInt(7));
					m.setEmail(rs.getString(8));
					//m.setGender(rs.getString(9));
					//m.setAddress(rs.getString(10));
					m.setNumber(rs.getLong(11));
					m.setDob(rs.getString(12));
					m.setImagePath(ViewController.getImageBytes(rs.getString(13)));
					m.setMemberStatus(rs.getString(15));
					m.setRegDate(rs.getString(16));
					return m;
			}
		});
	}
	@Override
	public List<AllMembers> getExpiredMembers(ModelMap model) {
		return template.query("select * from users where users.mStatus = 'Expired'", new RowMapper<AllMembers>() {

			@Override
			public AllMembers mapRow(ResultSet rs, int rowNum) throws SQLException {
					AllMembers m = new AllMembers();
					m.setId(rs.getString(1));
					m.setName(rs.getString(6));
					m.setAge(rs.getInt(7));
					m.setEmail(rs.getString(8));
					//m.setGender(rs.getString(9));
					//m.setAddress(rs.getString(10));
					m.setNumber(rs.getLong(11));
					m.setDob(rs.getString(12));
					m.setImagePath(ViewController.getImageBytes(rs.getString(13)));
					m.setMemberStatus(rs.getString(15));
					m.setRegDate(rs.getString(16));
					return m;
			}
		});
	}
	@Override
	public List<AllMembers> getDeActiveMembers(ModelMap model) {
		return template.query("select * from users where users.mStatus = 'Deactive'", new RowMapper<AllMembers>() {

			@Override
			public AllMembers mapRow(ResultSet rs, int rowNum) throws SQLException {
					AllMembers m = new AllMembers();
					m.setId(rs.getString(1));
					m.setName(rs.getString(6));
					m.setAge(rs.getInt(7));
					m.setEmail(rs.getString(8));
					//m.setGender(rs.getString(9));
					//m.setAddress(rs.getString(10));
					m.setNumber(rs.getLong(11));
					m.setDob(rs.getString(12));
					m.setImagePath(ViewController.getImageBytes(rs.getString(13)));
					m.setMemberStatus(rs.getString(15));
					m.setRegDate(rs.getString(16));
					return m;
			}
		});
	}
	@Override
	public String getMember(String id) {
		List<UpdateMember> list = template.query("select * from users where regId='"+id+"'", new ResultSetExtractor<List<UpdateMember>>() {

			@Override
			public List<UpdateMember> extractData(ResultSet rs) throws SQLException, DataAccessException {
				List<UpdateMember> list=new ArrayList<UpdateMember>();  
			        while(rs.next()){  
			        	UpdateMember m = new UpdateMember();
			        	m.setId(rs.getString(1));
			        	m.setAddress(rs.getString(10));
			        	m.setAge(rs.getInt(7));
			        	m.setDob(rs.getString(12));
			        	m.setEmail(rs.getString(8));
			        	m.setGender(rs.getString(9));
			        	m.setName(rs.getString(6));
			        	m.setNumber(rs.getLong(11));
			        	m.setMemberStatus(rs.getString(15));
			        	list.add(m);
			        }  
			        return list;  
			}
		});
		JSONObject data = new JSONObject();
		try {
		for(UpdateMember m : list) {
			System.out.println("Name-"+m.getName());
			data.put("name", m.getName());
			data.put("age",m.getAge());
			data.put("id",m.getId());
			data.put("gender",m.getGender());
			data.put("no",m.getNumber());
			data.put("address",m.getAddress());
			data.put("status",m.getMemberStatus());
			data.put("email",m.getEmail());
			data.put("dob",m.getDob());
		}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		return data.toString();
	}
	@Override
	public boolean updateMember(UpdateMember member, ModelMap model) {
		
		String query = "update users set mName='"+member.getName()+"',mAge="+member.getAge()+",mEmail='"+member.getEmail()+"',mPhone='"+member.getNumber()+"'"
				+ ",mSex='"+member.getGender()+"',mStatus='"+member.getMemberStatus()+"',mDob='"+member.getDob()+"',mAddress='"+member.getAddress()+"' where regId='"+member.getId()+"'";
		int status = template.update(query);
		return status > 0 ;
	}
}
