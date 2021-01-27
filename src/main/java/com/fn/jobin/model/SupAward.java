package com.fn.jobin.model;

import java.sql.Date;

import lombok.Data;

@Data
public class SupAward {
	private int awardCode ;// 수상번호
	private int resumeCode;   // 이력서번호
	private String rAwards ;     // 수상명
	private String rAwardissuer;     // 수상기관
	private Date rAwarddate ;    // 수상연도
	private String rAwarded ;     // 수상내역
}
