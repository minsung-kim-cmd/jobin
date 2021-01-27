package com.fn.jobin.model;

import java.sql.Date;

import lombok.Data;
@Data
public class SupportStatus{
	private int resumeCode;
	private String companyname;
	private String subject;
	private Date applydate;
	private int applycount;
	private String cancel;
	private String open;
	private int jobPostCode;
	private int memberCode;
	private int sNum;
	
	public int getsNum() {
		return sNum;
	}
	public void setsNum(int sNum) {
		this.sNum = sNum;
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
	public String getrUnidivi() {
		return rUnidivi;
	}
	public void setrUnidivi(String rUnidivi) {
		this.rUnidivi = rUnidivi;
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
	public String getrSubject() {
		return rSubject;
	}
	public void setrSubject(String rSubject) {
		this.rSubject = rSubject;
	}
	public String getrCareer() {
		return rCareer;
	}
	public void setrCareer(String rCareer) {
		this.rCareer = rCareer;
	}
	//새로추가한것들
	private String rName;		// 지원자 이름
	private String rEmail;		// 지원자 이메일
	private String rTel;			// 지원자 연락처
	private String rAddress; 	// 주소
	private String rPicture; 	// 지원자 사진
	private String rMilitary; 	// 병역
	private String rHighname; 	// 졸업고등학교이름
	private String rHighmajor;	// 고등학교 전공
	private String rUniname;  	// 대학이름
	private String rUnimajor; 	// 대학전공
	private String rUniminor; 	// 대학부전공
	private String rUnitime; 	// 대학 주/야간
	private double rUnicredit;		// 대학 학점
	private String rUnithesis; 	// 논문,졸업작품
	private String rWishjobtype; // 희망고용형태 (정규직,계약직등등)
	private int rWishsal; 		// 희망연봉
	private String rWisharea; 	// 희망근무지역
	private String rWishjob; 	// 희망직종
	private String rGender;		// 지원자성별
	private Date rBirth;			// 지원자생일
	private String rUnidivi; 	// 대학구분
	private Date rHighgradu; 	// 고등학교 입학
	private Date rHighadmi;		// 고등학교 졸업
	private Date rUnigradu; 	// 대학 입학
	private Date rUniadmi; 		// 대학 졸업
	private String rSubject;		// 이력서 제목
	private String rCareer;		// 경력여부 (신입,경력)
	private String keyword;		// 사용 프로그래밍언어
	private int companyCode;		// 사용 프로그래밍언어
	private String pass;
}
