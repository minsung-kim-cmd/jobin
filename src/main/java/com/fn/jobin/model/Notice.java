package com.fn.jobin.model;

import java.sql.Date;

import lombok.Data;
@Data
public class Notice {
	private int noticeCode;
	private String nSubject;
	private String mPassword;
	/* private String mName; */
	private String nWriter;
	private String nContent;
	private Date nRegister;
	private String nDel;
	private int nReadcount;
	/*
	 * private int ref; private int re_step; private int re_level;
	 */
	
	// 페이징용
	private int startRow;
	private int endRow;
	public String getnSubject() {
		return nSubject;
	}
	public void setnSubject(String nSubject) {
		this.nSubject = nSubject;
	}
	public String getnWriter() {
		return nWriter;
	}
	public void setnWriter(String nWriter) {
		this.nWriter = nWriter;
	}
	public String getnContent() {
		return nContent;
	}
	public void setnContent(String nContent) {
		this.nContent = nContent;
	}
	public Date getnRegister() {
		return nRegister;
	}
	public void setnRegister(Date nRegister) {
		this.nRegister = nRegister;
	}
	public String getnDel() {
		return nDel;
	}
	public void setnDel(String nDel) {
		this.nDel = nDel;
	}
	public int getnReadcount() {
		return nReadcount;
	}
	public void setnReadcount(int nReadcount) {
		this.nReadcount = nReadcount;
	}
	public String getmPassword() {
		return mPassword;
	}
	public void setmPassword(String mPassword) {
		this.mPassword = mPassword;
	}
	/*
	 * public String getmName() { return mName; } public void setmName(String mName)
	 * { this.mName = mName; }
	 */
	/*
	 * // 검색용 private String search; private String keyword;
	 */
	
}

/*-- 공지사항
CREATE TABLE notice (
   noticeCode NUMBER(10)     NOT NULL, -- 글번호
   nSubject   VARCHAR2(30)   NULL,     -- 제목
   nWriter    VARCHAR2(20)   NULL,     -- 작성자
   nContent   VARCHAR2(1000) NULL,     -- 내용
   nRegister  DATE           NULL,     -- 등록일
   nDel       CHAR(1)        NULL,     -- 삭제
   nReadcount NUMBER(10)     NULL      -- 조회수
);

-- 공지사항
ALTER TABLE notice
   ADD
      CONSTRAINT PK_notice -- 공지사항 기본키
      PRIMARY KEY (
         noticeCode -- 글번호
      );
*/
