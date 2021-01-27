package com.fn.jobin.model;

import java.sql.Date;

import lombok.Data;

@Data
public class Mbr {
	private int memberCode;
	private String atcompCode;	// 관심기업번호(String 으로 바꾸기)
	private String mId;
	private String mPassword;
	private String mName;
	private String mGender;
	private Date mBirth;
	private String mEmail;
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
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getmGender() {
		return mGender;
	}
	public void setmGender(String mGender) {
		this.mGender = mGender;
	}
	public Date getmBirth() {
		return mBirth;
	}
	public void setmBirth(Date mBirth) {
		this.mBirth = mBirth;
	}
	public String getmEmail() {
		return mEmail;
	}
	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}
	public String getmTel() {
		return mTel;
	}
	public void setmTel(String mTel) {
		this.mTel = mTel;
	}
	public String getmAddress() {
		return mAddress;
	}
	public void setmAddress(String mAddress) {
		this.mAddress = mAddress;
	}
	public String getmDel() {
		return mDel;
	}
	public void setmDel(String mDel) {
		this.mDel = mDel;
	}
	private String mTel;
	private String mAddress;
	private String mDel;
}
