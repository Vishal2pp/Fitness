package com.fitness.Model;

public class Package {
	private String pkgName;
	private int pkgId;
	private double pkgAmount;
	private int pkgDuration;
	private String pkgStatus;
	
	
	public String getPkgName() {
		return pkgName;
	}
	public void setPkgName(String pkgName) {
		this.pkgName = pkgName;
	}
	public int getPkgId() {
		return pkgId;
	}
	public void setPkgId(int pkgId) {
		this.pkgId = pkgId;
	}
	public double getPkgAmount() {
		return pkgAmount;
	}
	public void setPkgAmount(double pkgAmount) {
		this.pkgAmount = pkgAmount;
	}
	public int getPkgDuration() {
		return pkgDuration;
	}
	public void setPkgDuration(int pkgDuration) {
		this.pkgDuration = pkgDuration;
	}
	public String getPkgStatus() {
		return pkgStatus;
	}
	public void setPkgStatus(String pkgStatus) {
		this.pkgStatus = pkgStatus;
	}
	@Override
	public String toString() {
		return "Package [pkgName=" + pkgName + ", pkgId=" + pkgId + ", pkgAmount=" + pkgAmount + ", pkgDuration="
				+ pkgDuration + ", pkgStatus=" + pkgStatus + "]";
	}
	
	
	
}
