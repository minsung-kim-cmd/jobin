select * from mbr;
select * from qna;
select * from rsm ;
select * from Career ;
select * from Award ;
drop table language;
select * from License ;
select * from Portfolio ;
alter table request add (read varchar2(1) default 'n');
alter table mbr add (mJobopenCnt number(2) default 0);
alter table mbr add (mScrapCnt number(2) default 0);
alter table mbr add (mSupportCnt number(2) default 0);
alter table mbr add (mpicture varchar2(20) null);
select * from qna order by	qRef desc, qRe_step;
alter table rsm add (rSubject varchar2(100) null);
alter table rsm add (rGender varchar2(1) null);
alter table rsm add (rBirth Date null);
alter table rsm add (rUnidivi varchar2(20) null);
alter table rsm add (rHighgradu Date null);
alter table rsm add (rHighadmi Date null);
alter table rsm add (rUnigradu Date null);
alter table rsm add (rUniadmi Date null);
alter table rsm add (rWorkstart Date null);
alter table rsm add (rWorkend Date null);
alter table rsm add (rCareer varchar2(4) null);
alter table rsm add (keyword varchar2(100) null);
alter table jobpost add (wages varchar2(8) null);
alter table qna add (qAnswer varchar2(1000) null);
alter table mbr add (atcompCode varchar2(100) null);
alter table rsm drop column rfinaledu;
alter table rsm drop column rLanguagetest;
alter table rsm drop column rPortfolio;
alter table rsm drop column rAwarddate;
alter table rsm drop column rCareer;
alter table mbr drop column companycode;
ALTER TABLE 테이블명 RENAME COLUMN 원래컬럼명 TO 바꿀컬럼명;

-- 경력
CREATE TABLE supCareer (
	CareerCode   NUMBER(10)    NOT NULL, -- 경력번호
	resumeCode   NUMBER(10)    NULL,     -- 이력서번호
	rCompanyname VARCHAR2(40)  NULL,     -- 기업명
	rWorkstart   DATE          NULL,     -- 입사년월
	rWorkend     DATE          NULL,     -- 퇴사년월
	rSal         NUMBER(7)     NULL,     -- 연봉
	rPosition    VARCHAR2(20)  NULL,     -- 직급
	rjobtype     VARCHAR2(50)  NULL,     -- 직종
	rCharge      VARCHAR2(200) NULL,     -- 담당업무
	rDept        VARCHAR2(50)  NULL,     -- 근무부서
	rResignation VARCHAR2(100) NULL      -- 퇴사사유
);

-- 수상
CREATE TABLE supAward (
	awardCode    NUMBER(10)    NOT NULL, -- 수상번호
	resumeCode   NUMBER(10)    NULL,     -- 이력서번호
	rAwards      VARCHAR2(50)  NULL,     -- 수상명
	rAwardissuer VARCHAR2(50)  NULL,     -- 수상기관
	rAwarddate   DATE          NULL,     -- 수상연도
	rAwarded     VARCHAR2(200) NULL      -- 수상내역
);

-- 포토폴리오
CREATE TABLE supPortfolio (
	portfolioCode NUMBER(10)    NOT NULL, -- 포토폴리오번호
	resumeCode    NUMBER(10)    NULL,     -- 이력서번호
	url           VARCHAR2(100) NULL,     -- url
	rPortfolio    VARCHAR2(50)  NULL      -- 포트폴리오
);

-- 자격증
CREATE TABLE supLicense (
	licenseCode    NUMBER(10)   NOT NULL, -- 자격증번호
	resumeCode     NUMBER(10)   NULL,     -- 이력서번호
	rLicense       VARCHAR2(50) NULL,     -- 자격증명
	rLicenseissuer VARCHAR2(50) NULL,     -- 자격증발행처
	rLicenseacq    DATE         NULL      -- 취득년월
);

create table supself(
	selfcode number(10) not null,
	selfcontent varchar2(2000) null,
	selfsubject varchar2(60) null,
	resumecode number(10) null
);

desc supportstatus;
create sequence ex_ScrapCode
increment by 1
start with 1;
create sequence ex_licenseCode
increment by 1
start with 1;
create sequence ex_portfolioCode
increment by 1
start with 1;
create sequence ex_languagecode
increment by 1
start with 1;
create sequence ex_awardCode
increment by 1
start with 1;
create sequence ex_CareerCode
increment by 1
start with 1;

insert into rsm values(1234567,'홍길동','hong@email.com','010-1212-2323','서울시 뫄뫄구 뫄뫄로 12 301호','','n','ged','','서울대학교','기계공학과','','a',4.2,'','정규직',2000,'강남구,용산구,마포구','','n',4,'m','1988-09-08','','','','','','최선을 다하겠습니다.','신입','C,C++,Java');

select rsubject from rsm where membercode=4; 