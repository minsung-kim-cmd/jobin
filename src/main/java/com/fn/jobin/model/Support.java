package com.fn.jobin.model;

import java.sql.Date;

import lombok.Data;

public class Support {
	private int supportCode;
	private String cName;
	private String jSubject;
	private String finalEdu;
	private String workarea;
	private String career;
	private String jobtype;
	private String regStatus;
	private Date closing;
	private int memberCode;
	private int jobPostCode;
	public int getSupportCode() {
		return supportCode;
	}
	public void setSupportCode(int supportCode) {
		this.supportCode = supportCode;
	}
	public String getFinalEdu() {
		return finalEdu;
	}
	public void setFinalEdu(String finalEdu) {
		this.finalEdu = finalEdu;
	}
	public String getWorkarea() {
		return workarea;
	}
	public void setWorkarea(String workarea) {
		this.workarea = workarea;
	}
	public String getCareer() {
		return career;
	}
	public void setCareer(String career) {
		this.career = career;
	}
	public String getJobtype() {
		return jobtype;
	}
	public void setJobtype(String jobtype) {
		this.jobtype = jobtype;
	}
	public String getRegStatus() {
		return regStatus;
	}
	public void setRegStatus(String regStatus) {
		this.regStatus = regStatus;
	}
	public Date getClosing() {
		return closing;
	}
	public void setClosing(Date closing) {
		this.closing = closing;
	}
	public int getMemberCode() {
		return memberCode;
	}
	public void setMemberCode(int memberCode) {
		this.memberCode = memberCode;
	}
	public int getJobPostCode() {
		return jobPostCode;
	}
	public void setJobPostCode(int jobPostCode) {
		this.jobPostCode = jobPostCode;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public String getjSubject() {
		return jSubject;
	}
	public void setjSubject(String jSubject) {
		this.jSubject = jSubject;
	}
}
