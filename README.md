# jobin table 
CREATE TABLE notice (
    noticecode  NUMBER(10) NOT NULL, -- 글번호
    nsubject    VARCHAR2(30) NULL,     -- 제목
    nwriter     VARCHAR2(20) NULL,     -- 작성자
    ncontent    VARCHAR2(1000) NULL,     -- 내용
    nregister   DATE NULL,     -- 등록일
    ndel        CHAR(1) NULL,     -- 삭제
    nreadcount  NUMBER(10) NULL      -- 조회수
);

CREATE TABLE award (
    awardcode     NUMBER(10) NOT NULL,
    resumecode    NUMBER(10) NULL,
    raward        VARCHAR2(50) NULL,
    rawardissuer  VARCHAR2(50) NULL,
    rawraddate    DATE NULL,
    rawraded      VARCHAR2(300) NULL
);

CREATE TABLE license (
    licensecode     NUMBER(10) NOT NULL,
    resumecode      NUMBER(10) NULL,
    rlicense        VARCHAR2(20) NULL,
    rlicenseissuer  VARCHAR2(50) NULL,
    rlicenseacq     DATE NULL
);

CREATE TABLE companymem (
    companycode       NUMBER(10) NOT NULL,
    cid               VARCHAR2(20) NULL,
    cpassword         VARCHAR2(20) NULL,
    cregistrationnum  NUMBER(10) NULL,
    cname             VARCHAR2(50) NULL,
    ctype             VARCHAR2(20) NULL,
    crepresentative   VARCHAR2(20) NULL,
    caddress          VARCHAR2(100) NULL,
    ctel              VARCHAR2(20) NULL,
    cemail            VARCHAR2(30) NULL,
    cbusiness         VARCHAR2(100) NULL,
    chomepage         VARCHAR2(30) NULL,
    csales            NUMBER(10) NULL,
    cestablishdate    DATE NULL,
    clogo             VARCHAR2(20) NULL,
    cattention        NUMBER(10) NULL,
    cjobposting       NUMBER(10) NULL,
    cempcount         NUMBER(10) NULL,
    csector           VARCHAR2(20) NULL,
    cdel              VARCHAR2(2) NULL
);

CREATE TABLE career (
    careercode    NUMBER(10) NOT NULL,
    resumecode    NUMBER(10) NULL,
    rcompanyname  VARCHAR2(50) NULL,
    rworkstart    DATE NULL,
    rworkend      DATE NULL,
    rsal          NUMBER(10) NULL,
    rposition     VARCHAR2(10) NULL,
    rjobtype      VARCHAR2(30) NULL,
    rcharge       VARCHAR2(500) NULL,
    rdept         VARCHAR2(30) NULL,
    rresignation  VARCHAR2(300) NULL
);

CREATE TABLE companyreview (
    reviewcode   NUMBER(10) NOT NULL,
    companycode  NUMBER(10) NULL,
    membercode   NUMBER(10) NULL,
    vjob         DATE NULL,
    vworkstatus  VARCHAR2(10) NULL,
    vworkarea    VARCHAR2(10) NULL,
    vregister    DATE NULL,
    vstarscore   NUMBER(2) NULL,
    vcontent     VARCHAR2(600) NULL
);

CREATE TABLE jobopen (
    jobopencode  NUMBER(10) NOT NULL,
    jobpostcode  NUMBER(10) NULL,
    membercode   NUMBER(10) NULL,
    cname        VARCHAR2(10) NULL,
    closing      DATE NULL,
    jsubject     VARCHAR2(150) NULL,
    career       VARCHAR2(10) NULL,
    finaledu     VARCHAR2(30) NULL,
    workarea     VARCHAR2(20) NULL,
    jobtype      VARCHAR2(20) NULL,
    regstatus    VARCHAR2(20) NULL
);

CREATE TABLE jobpost (
    jobpostcode    NUMBER(10) NOT NULL,
    companycode    NUMBER(10) NULL,
    cname          VARCHAR2(10) NULL,
    dept           VARCHAR2(30) NULL,
    position       VARCHAR2(30) NULL,
    career         VARCHAR2(10) NULL,
    careerdatea    NUMBER(10) NULL,
    numofpeo       VARCHAR2(10) NULL,
    preferential   VARCHAR2(60) NULL,
    finaledu       VARCHAR2(20) NULL,
    major          VARCHAR2(30) NULL,
    sal            NUMBER(10) NULL,
    worktime       VARCHAR2(30) NULL,
    workweek       VARCHAR2(30) NULL,
    jobtype        VARCHAR2(30) NULL,
    workarea       VARCHAR2(30) NULL,
    agelimit       NUMBER(3) NULL,
    jsubject       VARCHAR2(150) NULL,
    jwelfare       VARCHAR2(150) NULL,
    jcontent       VARCHAR2(3000) NULL,
    jregister      DATE NULL,
    closing        DATE NULL,
    applicantnum   NUMBER(10) NULL,
    keyword        VARCHAR2(50) NULL,
    regstatus      VARCHAR2(30) NULL,
    clogo          VARCHAR2(20) NULL,
    readcnt        NUMBER(10) NULL,
    managername    VARCHAR2(30) NULL,
    managertel     VARCHAR2(20) NULL,
    manageremail   VARCHAR2(20) NULL,
    careerdateb    NUMBER(10) NULL,
    finaleduconf   VARCHAR2(30) NULL,
    resumecode     NUMBER(10) NULL,
    startrow       NUMBER(10) NULL,
    endrow         NUMBER(10) NULL,
    searchkeyword  VARCHAR2(50) NULL,
    search         VARCHAR2(30) NULL,
    chomepage      VARCHAR2(50) NULL
);

CREATE TABLE mbr (
    membercode  NUMBER(10) NOT NULL,
    mid         VARCHAR2(20) NULL,
    mpassword   VARCHAR2(20) NULL,
    mname       VARCHAR2(10) NULL,
    mgender     VARCHAR2(10) NULL,
    mbirth      DATE NULL,
    memail      VARCHAR2(20) NULL,
    mtel        VARCHAR2(10) NULL,
    maddress    VARCHAR2(100) NULL,
    mdel        VARCHAR2(2) NULL,
    mpicture    VARCHAR2(30) NULL,
    atcompcode  VARCHAR2(1000) NULL
);

CREATE TABLE portfolio (
    portfoliocode  NUMBER(10) NOT NULL,
    resumecode     NUMBER(10) NULL,
    url            VARCHAR2(100) NULL,
    rportfolio     VARCHAR2(100) NULL
);

CREATE TABLE qna (
    qnacode     NUMBER(10) NOT NULL,
    qsubject    VARCHAR2(50) NULL,
    qwriter     VARCHAR2(10) NULL,
    qcontent    VARCHAR2(500) NULL,
    qdel        VARCHAR2(2) NULL,
    qregister   DATE NULL,
    qre_step    NUMBER(10) NULL,
    qreadcount  NUMBER(10) NULL,
    mid         VARCHAR2(20) NULL,
    mpassword   VARCHAR2(20) NULL,
    qref        NUMBER(10) NULL,
    qre_level   NUMBER(10) NULL
);

CREATE TABLE rsm (
    resumecode    NUMBER(10) NOT NULL,
    rname         VARCHAR2(20) NULL,
    remail        VARCHAR2(20) NULL,
    rtel          VARCHAR2(20) NULL,
    raddress      VARCHAR2(500) NULL,
    rpicture      VARCHAR2(50) NULL,
    rmilitary     VARCHAR2(10) NULL,
    rhighname     VARCHAR2(20) NULL,
    rhighmajor    VARCHAR2(20) NULL,
    runiname      VARCHAR2(20) NULL,
    runimajor     VARCHAR2(20) NULL,
    runiminor     VARCHAR2(20) NULL,
    runitime      VARCHAR2(20) NULL,
    runicredit    NUMBER(3) NULL,
    runithesis    VARCHAR2(20) NULL,
    rwishjobtype  VARCHAR2(20) NULL,
    rwishsal      NUMBER(10) NULL,
    rwisharea     VARCHAR2(50) NULL,
    rwishjob      VARCHAR2(20) NULL,
    ropenwhether  VARCHAR2(10) NULL,
    membercode    NUMBER(10) NULL,
    rgender       VARCHAR2(10) NULL,
    rbirth        DATE NULL,
    runidivi      VARCHAR2(10) NULL,
    rhighgradu    DATE NULL,
    rhighadmi     DATE NULL,
    runigradu     DATE NULL,
    runiadmi      DATE NULL,
    rsubject      VARCHAR2(100) NULL,
    rcareer       VARCHAR2(10) NULL,
    keyword       VARCHAR2(50) NULL
);

CREATE TABLE scrap (
    scrapcode    NUMBER(10) NOT NULL,
    jobpostcode  NUMBER(10) NULL,
    membercode   NUMBER(10) NULL,
    cname        VARCHAR2(10) NULL,
    closing      DATE NULL,
    jsubject     VARCHAR2(100) NULL,
    career       VARCHAR2(10) NULL,
    finaledu     VARCHAR2(20) NULL,
    workarea     VARCHAR2(50) NULL,
    jobtype      VARCHAR2(30) NULL,
    regstatus    VARCHAR2(20) NULL
);

CREATE TABLE self (
    selfcode     NUMBER(10) NOT NULL,
    selfcontent  VARCHAR2(100) NULL,
    selfsubject  VARCHAR2(1000) NULL,
    resumecode   NUMBER(10) NULL
);

CREATE table supaward (
awardcode number(10) not null,
resumecode number(10) null,
rawards varchar2(50) null,
rAwardissuer varchar2(50) null,
rAwarddate date null,
rAwarded varchar2(300) null
);

create table supcareer(
careerCode number(10) not null,
resumeCode number(10) null,
rCompanyname varchar2(50) null,
rWorkstart date null,
rWorkend date null,
rSal number(10) null,
rPosition varchar2(20) null,
rjobtype varchar2(20) null,
rCharge varchar2(50) null,
rDept varchar2(30) null,
rResignation varchar2(100) null
);

create table supself(
selfcode number(10) not null,
selfcontent  VARCHAR2(100) NULL,
    selfsubject  VARCHAR2(1000) NULL,
    resumecode   NUMBER(10) NULL
);

create table SupLicense(
licenseCode number(10) not null,
resumeCode number(10) null,
 rlicense        VARCHAR2(20) NULL,
    rlicenseissuer  VARCHAR2(50) NULL,
    rlicenseacq     DATE NULL
);

create table support (
supportCode number(10) not null,
jobPostCode number(10) null,
memberCode number(10) null,
cName varchar2(50) null,
closing date null,
jSubject varchar2(150) null,
career varchar2(50) null,
finalEdu varchar2(50) null,
workarea varchar2(50) null,
jobtype varchar2(50) null,
regStatus varchar2(50) null
);

create table supportstatus (
resumeCode number(10) not null,
companyname number(10) null,
subject varchar2(100) null,
applydate date null,
applycount number(10) null,
cancel varchar2(10) null,
open varchar2(10) null,
jobPostCode number(10) null,
memberCode number(10) null,
sNum number(10) null,
rname         VARCHAR2(20) NULL,
    remail        VARCHAR2(20) NULL,
    rtel          VARCHAR2(20) NULL,
    raddress      VARCHAR2(500) NULL,
    rpicture      VARCHAR2(50) NULL,
    rmilitary     VARCHAR2(10) NULL,
    rhighname     VARCHAR2(20) NULL,
    rhighmajor    VARCHAR2(20) NULL,
    runiname      VARCHAR2(20) NULL,
    runimajor     VARCHAR2(20) NULL,
    runiminor     VARCHAR2(20) NULL,
    runitime      VARCHAR2(20) NULL,
    runicredit    NUMBER(3) NULL,
    runithesis    VARCHAR2(20) NULL,
    rwishjobtype  VARCHAR2(20) NULL,
    rwishsal      NUMBER(10) NULL,
    rwisharea     VARCHAR2(50) NULL,
    rwishjob      VARCHAR2(20) NULL,
    rgender       VARCHAR2(10) NULL,
    rbirth        DATE NULL,
    runidivi      VARCHAR2(10) NULL,
    rhighgradu    DATE NULL,
    rhighadmi     DATE NULL,
    runigradu     DATE NULL,
    runiadmi      DATE NULL,
    rsubject      VARCHAR2(100) NULL,
    rcareer       VARCHAR2(10) NULL,
    keyword       VARCHAR2(50) NULL,
    companyCode number(10) null,
    pass varchar2(10) null
);

create table supportfolio(
portfolioCode number(10) not null,
resumeCode number(10) null,
url            VARCHAR2(100) NULL,
    rportfolio     VARCHAR2(100) NULL
);
