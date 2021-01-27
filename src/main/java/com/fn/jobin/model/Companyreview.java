package com.fn.jobin.model;

import java.sql.Date;

import lombok.Data;

@Data
public class Companyreview {
	private int reviewCode;
	private int companyCode;
	private int vMemberCode;
	private String vJob;
	private String vWorkstatus;
	private String vWorkarea;
	private Date vRegister;
	private int vStarscore;
	private String vContent;
}
