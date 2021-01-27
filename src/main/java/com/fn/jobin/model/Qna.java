package com.fn.jobin.model;

import java.sql.Date;

import lombok.Data;

@Data
public class Qna {
	private int qnaCode;
	private String qSubject;
	private String qWriter;
	private String qContent;
	private String qDel;
	private Date qRegister;
	private int qRe_step;
	private String qReadcount;
	private String mId;
	private String mPassword;
	private int qRef;
	private int qRe_level;
	private int endRow;
	private int startRow;
	public String getqSubject() {
		return qSubject;
	}
	public void setqSubject(String qSubject) {
		this.qSubject = qSubject;
	}
	public String getqWriter() {
		return qWriter;
	}
	public void setqWriter(String qWriter) {
		this.qWriter = qWriter;
	}
	public String getqContent() {
		return qContent;
	}
	public void setqContent(String qContent) {
		this.qContent = qContent;
	}
	public String getqDel() {
		return qDel;
	}
	public void setqDel(String qDel) {
		this.qDel = qDel;
	}
	public Date getqRegister() {
		return qRegister;
	}
	public void setqRegister(Date qRegister) {
		this.qRegister = qRegister;
	}
	public int getqRe_step() {
		return qRe_step;
	}
	public void setqRe_step(int qRe_step) {
		this.qRe_step = qRe_step;
	}
	public String getqReadcount() {
		return qReadcount;
	}
	public void setqReadcount(String qReadcount) {
		this.qReadcount = qReadcount;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getmPassword() {
		return mPassword;
	}
	public void setmPassword(String mPassword) {
		this.mPassword = mPassword;
	}
	public int getqRef() {
		return qRef;
	}
	public void setqRef(int qRef) {
		this.qRef = qRef;
	}
	public int getqRe_level() {
		return qRe_level;
	}
	public void setqRe_level(int qRe_level) {
		this.qRe_level = qRe_level;
	}
	
}
