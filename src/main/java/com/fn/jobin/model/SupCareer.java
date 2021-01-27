package com.fn.jobin.model;

import java.sql.Date;

import lombok.Data;

@Data
public class SupCareer {
	private int careerCode; // 경력번호
	private int resumeCode;     // 이력서번호
	private String rCompanyname;     // 기업명
	private Date rWorkstart; // 입사년월
	private Date rWorkend; // 퇴사년월
	private int rSal;    // 연봉
	private String rPosition;     // 직급
	private String rjobtype;     // 직종
	private String rCharge ;     // 담당업무
	private String rDept ;     // 근무부서
	private String rResignation;     // 퇴사사유
}
