package com.fn.jobin.model;

import java.sql.Date;

import lombok.Data;
@Data
public class Jobpost {
	private int jobPostCode;
	private int companyCode;
	private String cName;
	private String occupation;
	private String dept;
	private String position;
	private String career;
	private int careerDateA;
	private String numOfPeo;
	private String preferential;
	private String finalEdu;
	private String major;
	private int sal;
	private String workTime;
	private String workWeek;
	private String jobtype;
	private String workarea;
	private int ageLimit;
	private String jSubject;
	private String jWelfare;
	private String jContent;
	private Date jRegister;
	private Date closing;
	private int applicantNum;
	private String keyword;
	private String regStatus;
	private String cLogo;
	private int readCnt;
	private String managerName;
	private String managerTel;
	private String managerEmail;
	private int careerDateB;
	private String finalEduConf;
	private int resumeCode;
	private int startRow;
	private int endRow;
	private String searchKeyword;
	private String search;
	private String cHomepage;
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
	public String getjWelfare() {
		return jWelfare;
	}
	public void setjWelfare(String jWelfare) {
		this.jWelfare = jWelfare;
	}
	public String getjContent() {
		return jContent;
	}
	public void setjContent(String jContent) {
		this.jContent = jContent;
	}
	public Date getjRegister() {
		return jRegister;
	}
	public void setjRegister(Date jRegister) {
		this.jRegister = jRegister;
	}
	public String getcLogo() {
		return cLogo;
	}
	public void setcLogo(String cLogo) {
		this.cLogo = cLogo;
	}
	public String getcHomepage() {
		return cHomepage;
	}
	public void setcHomepage(String cHomepage) {
		this.cHomepage = cHomepage;
	}
}
