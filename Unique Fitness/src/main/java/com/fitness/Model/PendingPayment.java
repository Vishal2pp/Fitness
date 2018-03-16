package com.fitness.Model;

public class PendingPayment {
	private String id;
	private String pkg;
	private int pkgId;
	private int paymentId;
	private String status;
	private double amount;
	private double paidAmt;
	private double pendingAmt;
	private long receipt;
	private double currentPay;
	private double balance;
	private String dueDate = "00-00-0000";
	public String getDueDate() {
		return dueDate;
	}
	public void setDueDate(String dueDate) {
		this.dueDate = dueDate;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	public double getCurrentPay() {
		return currentPay;
	}
	public void setCurrentPay(double currentPay) {
		this.currentPay = currentPay;
	}
	public String getId() {
		return id;
	}
	@Override
	public String toString() {
		return "PendingPayment [id=" + id + ", pkg=" + pkg + ", pkgId=" + pkgId + ", paymentId=" + paymentId
				+ ", status=" + status + ", amount=" + amount + ", paidAmt=" + paidAmt + ", pendingAmt=" + pendingAmt
				+ ", receipt=" + receipt + ", currentPay=" + currentPay + "]";
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPkg() {
		return pkg;
	}
	public void setPkg(String pkg) {
		this.pkg = pkg;
	}
	public int getPkgId() {
		return pkgId;
	}
	public void setPkgId(int pkgId) {
		this.pkgId = pkgId;
	}
	public int getPaymentId() {
		return paymentId;
	}
	public void setPaymentId(int paymentId) {
		this.paymentId = paymentId;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public double getPaidAmt() {
		return paidAmt;
	}
	public void setPaidAmt(double paidAmt) {
		this.paidAmt = paidAmt;
	}
	public double getPendingAmt() {
		return pendingAmt;
	}
	public void setPendingAmt(double pendingAmt) {
		this.pendingAmt = pendingAmt;
	}
	public long getReceipt() {
		return receipt;
	}
	public void setReceipt(long receipt) {
		this.receipt = receipt;
	}
	
	
	
	
}
