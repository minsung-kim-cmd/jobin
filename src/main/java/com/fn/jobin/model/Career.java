package com.fn.jobin.model;

import java.sql.Date;

import lombok.Data;

@Data
public class Career {
	private int careerCode; // 경력번호
	private int resumeCode;     // 이력서번호
	private String rCompanyname;     // 기업명
	private Date rWorkstart; // 입사년월
	private Date rWorkend; // 퇴사년월
	private int rSal;    // 연봉
	private String rPosition;     // 직급
	private String rJobtype;     // 직종
	private String rCharge;     // 담당업무
	private String rDept;     // 근무부서
	private String rResignation;     // 퇴사사유
	public String getrCompanyname() {
		return rCompanyname;
	}
	public void setrCompanyname(String rCompanyname) {
		this.rCompanyname = rCompanyname;
	}
	public Date getrWorkstart() {
		return rWorkstart;
	}
	public void setrWorkstart(Date rWorkstart) {
		this.rWorkstart = rWorkstart;
	}
	public Date getrWorkend() {
		return rWorkend;
	}
	public void setrWorkend(Date rWorkend) {
		this.rWorkend = rWorkend;
	}
	public int getrSal() {
		return rSal;
	}
	public void setrSal(int rSal) {
		this.rSal = rSal;
	}
	public String getrPosition() {
		return rPosition;
	}
	public void setrPosition(String rPosition) {
		this.rPosition = rPosition;
	}
	public String getrCharge() {
		return rCharge;
	}
	public void setrCharge(String rCharge) {
		this.rCharge = rCharge;
	}
	public String getrDept() {
		return rDept;
	}
	public void setrDept(String rDept) {
		this.rDept = rDept;
	}
	public String getrResignation() {
		return rResignation;
	}
	public void setrResignation(String rResignation) {
		this.rResignation = rResignation;
	}
	public String getrJobtype() {
		return rJobtype;
	}
	public void setrJobtype(String rJobtype) {
		this.rJobtype = rJobtype;
	}
}
