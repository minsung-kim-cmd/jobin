package com.fn.jobin.model;


import lombok.Data;

@Data
public class Portfolio {
	private int portfolioCode;// 포토폴리오번호
	private int resumeCode;   // 이력서번호
	private String url;   // url
	private String rPortfolio;  // 포트폴리오
	public String getrPortfolio() {
		return rPortfolio;
	}
	public void setrPortfolio(String rPortfolio) {
		this.rPortfolio = rPortfolio;
	}
	
}
