package com.fn.jobin.model;

import java.sql.Date;

import lombok.Data;

@Data
public class Award {
	private int awardCode;// 수상번호
	private int resumeCode;   // 이력서번호
	private String rAwards;     // 수상명
	private String rAwardissuer;     // 수상기관
	private Date rAwarddate;    // 수상연도
	private String rAwarded;     // 수상내역
	
	public String getrAwards() {
		return rAwards;
	}
	public void setrAwards(String rAwards) {
		this.rAwards = rAwards;
	}
	public String getrAwardissuer() {
		return rAwardissuer;
	}
	public void setrAwardissuer(String rAwardissuer) {
		this.rAwardissuer = rAwardissuer;
	}
	public Date getrAwarddate() {
		return rAwarddate;
	}
	public void setrAwarddate(Date rAwarddate) {
		this.rAwarddate = rAwarddate;
	}
	public String getrAwarded() {
		return rAwarded;
	}
	public void setrAwarded(String rAwarded) {
		this.rAwarded = rAwarded;
	}
}
