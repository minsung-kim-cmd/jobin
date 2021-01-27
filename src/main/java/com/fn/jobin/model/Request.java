package com.fn.jobin.model;

import java.sql.Date;

import lombok.Data;

@Data
public class Request {
	private int requestCode;
	private String subject;
	private String content;
	private Date requestDate;
	private int memberCode;
	private int companyCode;
	private String read;
}
