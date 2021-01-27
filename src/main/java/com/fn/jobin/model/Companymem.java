package com.fn.jobin.model;

import java.sql.Date;

import lombok.Data;
@Data
public class Companymem {
	private int companyCode;
	private String cId;
	private String cPassword;
	private int cRegistrationNum;
	private String cName;
	private String cType;
	private String cRepresentative;
	private String cAddress;
	private String cTel;
	private String cEmail;
	private String cBusiness;
	private String cHomepage;
	private int cSales;
	private Date cEstablishDate;
	private String cLogo;
	private int cAttention;
	private int cJobposting;
	private int cEmpcount;
	private String cSector;
	private String cDel;
	public String getcId() {
		return cId;
	}
	public void setcId(String cId) {
		this.cId = cId;
	}
	public String getcPassword() {
		return cPassword;
	}
	public void setcPassword(String cPassword) {
		this.cPassword = cPassword;
	}
	public int getcRegistrationNum() {
		return cRegistrationNum;
	}
	public void setcRegistrationNum(int cRegistrationNum) {
		this.cRegistrationNum = cRegistrationNum;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public String getcType() {
		return cType;
	}
	public void setcType(String cType) {
		this.cType = cType;
	}
	public String getcRepresentative() {
		return cRepresentative;
	}
	public void setcRepresentative(String cRepresentative) {
		this.cRepresentative = cRepresentative;
	}
	public String getcAddress() {
		return cAddress;
	}
	public void setcAddress(String cAddress) {
		this.cAddress = cAddress;
	}
	public String getcTel() {
		return cTel;
	}
	public void setcTel(String cTel) {
		this.cTel = cTel;
	}
	public String getcEmail() {
		return cEmail;
	}
	public void setcEmail(String cEmail) {
		this.cEmail = cEmail;
	}
	public String getcBusiness() {
		return cBusiness;
	}
	public void setcBusiness(String cBusiness) {
		this.cBusiness = cBusiness;
	}
	public String getcHomepage() {
		return cHomepage;
	}
	public void setcHomepage(String cHomepage) {
		this.cHomepage = cHomepage;
	}
	public int getcSales() {
		return cSales;
	}
	public void setcSales(int cSales) {
		this.cSales = cSales;
	}
	public Date getcEstablishDate() {
		return cEstablishDate;
	}
	public void setcEstablishDate(Date cEstablishDate) {
		this.cEstablishDate = cEstablishDate;
	}
	public String getcLogo() {
		return cLogo;
	}
	public void setcLogo(String cLogo) {
		this.cLogo = cLogo;
	}
	public int getcAttention() {
		return cAttention;
	}
	public void setcAttention(int cAttention) {
		this.cAttention = cAttention;
	}
	public int getcJobposting() {
		return cJobposting;
	}
	public void setcJobposting(int cJobposting) {
		this.cJobposting = cJobposting;
	}
	public int getcEmpcount() {
		return cEmpcount;
	}
	public void setcEmpcount(int cEmpcount) {
		this.cEmpcount = cEmpcount;
	}
	public String getcSector() {
		return cSector;
	}
	public void setcSector(String cSector) {
		this.cSector = cSector;
	}
	public String getcDel() {
		return cDel;
	}
	public void setcDel(String cDel) {
		this.cDel = cDel;
	}
	
}
