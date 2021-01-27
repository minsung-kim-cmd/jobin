package com.fn.jobin.service;

import java.util.List;

import com.fn.jobin.model.Award;
import com.fn.jobin.model.Career;
import com.fn.jobin.model.Jobopen;
import com.fn.jobin.model.Jobpost;
import com.fn.jobin.model.License;
import com.fn.jobin.model.Mbr;
import com.fn.jobin.model.Portfolio;
import com.fn.jobin.model.Qna;
import com.fn.jobin.model.Rsm;
import com.fn.jobin.model.Scrap;
import com.fn.jobin.model.Self;
import com.fn.jobin.model.SupAward;
import com.fn.jobin.model.SupCareer;
import com.fn.jobin.model.SupLicense;
import com.fn.jobin.model.SupPortfolio;
import com.fn.jobin.model.SupSelf;
import com.fn.jobin.model.Support;
import com.fn.jobin.model.SupportStatus;

public interface MbrService {

	void insertcr(Career cr);

	void insertrsm(Rsm rsm);

	void insertli(License li);

	void insertaw(Award award);

	void insertport(Portfolio port);

	List<String> rsmsubList(int membercode);

	List<Integer> rsmcodeList(int membercode);

	Rsm rsmView(int resumeCode);
	
	SupportStatus suprsm(int resumeCode);

	List<Portfolio> portView(int resumeCode);

	List<Award> awardView(int resumeCode);

	List<Career> careerView(int resumeCode);

	List<License> licenView(int resumeCode);

	List<Self> selfView(int resumeCode);

	Mbr mypage(String string);

	int rsmCnt(int memberCode);

	String attentioncmp(String mId);

	String atcname(int companyCode);

	Integer atjobcnt(int companyCode);

	int supportInsert(SupportStatus spst);

	List<SupportStatus> supList(int memberCode);

	int updateatcmpcode(String at,String mId);

	void supawInsert(SupAward supaw);

	void supcrInsert(SupCareer supcr);

	void supselfInsert(SupSelf supself);

	void supliInsert(SupLicense supli);

	int rsmDelete(int memberCode, int resumeCode);

	Mbr mbrForm(String mId);

	int mbrUpdate(String mEmail, String mTel, String mId);

	String mbrChkpw(String mId);

	int supportDelete(int sNum);

	int scrapCnt(int memberCode);

	int jobopenCnt(int memberCode);

	int supportCnt(int memberCode);

	List<Support> supportList(int memberCode);

	List<Scrap> scrapList(int memberCode);

	List<Jobopen> openList(int memberCode);

	Jobpost addpost(int jobPostCode);

	void insertsup(Support sup);

	int removesup(int jobpostCode, int memberCode);

	int scrapDelete(int scrapCode);

	int qnaInsert(Qna qna);

	List<Qna> qnaList();

	int mbrcode(String mId);

	List<Integer> jpcList(int memberCode);

	int insertscrap(Scrap scrap);

	void supportfolioInsert(SupPortfolio support);

	Qna qanForm(int qnaCode);

	
	Mbr select(String mId);

	int insert(Mbr mbr);
	List<Mbr> list();

	Mbr selectMember(int memberCode);

	Mbr find(Mbr mbr);

	Mbr find2(Mbr mbr);
	
}
