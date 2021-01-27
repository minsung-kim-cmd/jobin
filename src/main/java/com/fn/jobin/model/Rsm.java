package com.fn.jobin.model;

import java.sql.Date;

import lombok.Data;
@Data
public class Rsm {
	private int resumeCode;
	private String rSubject;
	private String rGender;
	private Date rBirth;
	private String rName;
	private String rEmail;
	private String rTel;
	private String rAddress;
	private String rPicture;
	private String rMilitary;
	private String rHighname;
	private String rHighmajor;	//고등학교 전공
	private Date rHighgradu;		//고등학교 재학기간
	private Date rHighadmi;		//고등학교 재학기간
	private String rUnidivi;	//대학구분
	private String rUniname;	
	private String rUnimajor;
	public String getrSubject() {
		return rSubject;
	}
	public void setrSubject(String rSubject) {
		this.rSubject = rSubject;
	}
	public String getrGender() {
		return rGender;
	}
	public void setrGender(String rGender) {
		this.rGender = rGender;
	}
	public Date getrBirth() {
		return rBirth;
	}
	public void setrBirth(Date rBirth) {
		this.rBirth = rBirth;
	}
	public String getrName() {
		return rName;
	}
	public void setrName(String rName) {
		this.rName = rName;
	}
	public String getrEmail() {
		return rEmail;
	}
	public void setrEmail(String rEmail) {
		this.rEmail = rEmail;
	}
	public String getrTel() {
		return rTel;
	}
	public void setrTel(String rTel) {
		this.rTel = rTel;
	}
	public String getrAddress() {
		return rAddress;
	}
	public void setrAddress(String rAddress) {
		this.rAddress = rAddress;
	}
	public String getrPicture() {
		return rPicture;
	}
	public void setrPicture(String rPicture) {
		this.rPicture = rPicture;
	}
	public String getrMilitary() {
		return rMilitary;
	}
	public void setrMilitary(String rMilitary) {
		this.rMilitary = rMilitary;
	}
	public String getrHighname() {
		return rHighname;
	}
	public void setrHighname(String rHighname) {
		this.rHighname = rHighname;
	}
	public String getrHighmajor() {
		return rHighmajor;
	}
	public void setrHighmajor(String rHighmajor) {
		this.rHighmajor = rHighmajor;
	}
	public Date getrHighgradu() {
		return rHighgradu;
	}
	public void setrHighgradu(Date rHighgradu) {
		this.rHighgradu = rHighgradu;
	}
	public Date getrHighadmi() {
		return rHighadmi;
	}
	public void setrHighadmi(Date rHighadmi) {
		this.rHighadmi = rHighadmi;
	}
	public String getrUnidivi() {
		return rUnidivi;
	}
	public void setrUnidivi(String rUnidivi) {
		this.rUnidivi = rUnidivi;
	}
	public String getrUniname() {
		return rUniname;
	}
	public void setrUniname(String rUniname) {
		this.rUniname = rUniname;
	}
	public String getrUnimajor() {
		return rUnimajor;
	}
	public void setrUnimajor(String rUnimajor) {
		this.rUnimajor = rUnimajor;
	}
	public Date getrUnigradu() {
		return rUnigradu;
	}
	public void setrUnigradu(Date rUnigradu) {
		this.rUnigradu = rUnigradu;
	}
	public Date getrUniadmi() {
		return rUniadmi;
	}
	public void setrUniadmi(Date rUniadmi) {
		this.rUniadmi = rUniadmi;
	}
	public String getrUniminor() {
		return rUniminor;
	}
	public void setrUniminor(String rUniminor) {
		this.rUniminor = rUniminor;
	}
	public String getrUnitime() {
		return rUnitime;
	}
	public void setrUnitime(String rUnitime) {
		this.rUnitime = rUnitime;
	}
	public double getrUnicredit() {
		return rUnicredit;
	}
	public void setrUnicredit(double rUnicredit) {
		this.rUnicredit = rUnicredit;
	}
	public String getrUnithesis() {
		return rUnithesis;
	}
	public void setrUnithesis(String rUnithesis) {
		this.rUnithesis = rUnithesis;
	}
	public String getrWishjobtype() {
		return rWishjobtype;
	}
	public void setrWishjobtype(String rWishjobtype) {
		this.rWishjobtype = rWishjobtype;
	}
	public int getrWishsal() {
		return rWishsal;
	}
	public void setrWishsal(int rWishsal) {
		this.rWishsal = rWishsal;
	}
	public String getrWisharea() {
		return rWisharea;
	}
	public void setrWisharea(String rWisharea) {
		this.rWisharea = rWisharea;
	}
	public String getrWishjob() {
		return rWishjob;
	}
	public void setrWishjob(String rWishjob) {
		this.rWishjob = rWishjob;
	}
	public String getrOpenwhether() {
		return rOpenwhether;
	}
	public void setrOpenwhether(String rOpenwhether) {
		this.rOpenwhether = rOpenwhether;
	}
	public String getrCareer() {
		return rCareer;
	}
	public void setrCareer(String rCareer) {
		this.rCareer = rCareer;
	}
	private Date rUnigradu;
	private Date rUniadmi;
	private String rUniminor;	//부전공
	private String rUnitime;	//대학 주/야간
	private double rUnicredit;	//대학학점
	private String rUnithesis;	//대학논문,졸업작품
	private String rWishjobtype;	//희망고용형태
	private int rWishsal;		//희망연봉
	private String rWisharea;	//희망 근무 지역
	private String rWishjob;	//희망직종
	private String rOpenwhether;	//공개여부
	private int memberCode;	//회원번호
	private String rCareer;	//회원번호
	private String keyword;
}
