package com.fn.jobin.model;

import java.sql.Date;

import lombok.Data;

@Data
public class License {
	private int licenseCode;// 자격증번호
	private int resumeCode;  // 이력서번호
	private String rLicense;  // 자격증명
	private String rLicenseissuer;  // 자격증발행처
	private Date rLicenseacq;  // 취득년월
	public String getrLicense() {
		return rLicense;
	}
	public void setrLicense(String rLicense) {
		this.rLicense = rLicense;
	}
	public String getrLicenseissuer() {
		return rLicenseissuer;
	}
	public void setrLicenseissuer(String rLicenseissuer) {
		this.rLicenseissuer = rLicenseissuer;
	}
	public Date getrLicenseacq() {
		return rLicenseacq;
	}
	public void setrLicenseacq(Date rLicenseacq) {
		this.rLicenseacq = rLicenseacq;
	}
	
}
