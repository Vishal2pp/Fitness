package com.fitness.Model;

public class AllMembers {
	private String id;
	private String name;
	private String email;
	private long number;
	private String dob;
	private int age;
	private String gender;
	private String address;
	private String gymTime;
	private String imagePath;
	private String regDate;
	
	private String pkgStartDate;
	private String pkgEndDate;
	private double pkgAmt;
	
	private double pendingAmount;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getNumber() {
		return number;
	}
	public void setNumber(long number) {
		this.number = number;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getGymTime() {
		return gymTime;
	}
	public void setGymTime(String gymTime) {
		this.gymTime = gymTime;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getPkgStartDate() {
		return pkgStartDate;
	}
	public void setPkgStartDate(String pkgStartDate) {
		this.pkgStartDate = pkgStartDate;
	}
	public String getPkgEndDate() {
		return pkgEndDate;
	}
	public void setPkgEndDate(String pkgEndDate) {
		this.pkgEndDate = pkgEndDate;
	}
	public double getPkgAmt() {
		return pkgAmt;
	}
	public void setPkgAmt(double pkgAmt) {
		this.pkgAmt = pkgAmt;
	}
	public double getPendingAmount() {
		return pendingAmount;
	}
	public void setPendingAmount(double pendingAmount) {
		this.pendingAmount = pendingAmount;
	}
	public double getPaidAmount() {
		return paidAmount;
	}
	public void setPaidAmount(double paidAmount) {
		this.paidAmount = paidAmount;
	}
	public String getDueDate() {
		return dueDate;
	}
	public void setDueDate(String dueDate) {
		this.dueDate = dueDate;
	}
	public long getReceiptNo() {
		return receiptNo;
	}
	public void setReceiptNo(long receiptNo) {
		this.receiptNo = receiptNo;
	}
	public String getPaymentDate() {
		return paymentDate;
	}
	public void setPaymentDate(String paymentDate) {
		this.paymentDate = paymentDate;
	}
	public String getPaymentStatus() {
		return paymentStatus;
	}
	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}
	public String getMemberStatus() {
		return memberStatus;
	}
	public void setMemberStatus(String memberStatus) {
		this.memberStatus = memberStatus;
	}
	private double paidAmount;
	private String dueDate = "00-00-0000";
	private long receiptNo;
	private String paymentDate;
	private String paymentStatus;
	private String memberStatus;
}
