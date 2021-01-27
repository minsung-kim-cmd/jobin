package com.fn.jobin.model;

import java.sql.Date;

import lombok.Data;

@Data
public class Scrap {
	private int scrapCode;
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
