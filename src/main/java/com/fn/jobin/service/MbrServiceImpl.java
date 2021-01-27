package com.fn.jobin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fn.jobin.dao.AwardDao;
import com.fn.jobin.dao.CareerDao;
import com.fn.jobin.dao.JobopenDao;
import com.fn.jobin.dao.JobpostDao;
import com.fn.jobin.dao.LicenseDao;
import com.fn.jobin.dao.MbrDao;
import com.fn.jobin.dao.PortfolioDao;
import com.fn.jobin.dao.QnaDao;
import com.fn.jobin.dao.RsmDao;
import com.fn.jobin.dao.ScrapDao;
import com.fn.jobin.dao.SelfDao;
import com.fn.jobin.dao.SupAwardDao;
import com.fn.jobin.dao.SupCareerDao;
import com.fn.jobin.dao.SupLicenseDao;
import com.fn.jobin.dao.SupPortfolioDao;
import com.fn.jobin.dao.SupSelfDao;
import com.fn.jobin.dao.SupportDao;
import com.fn.jobin.dao.SupportStatusDao;
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

@Service
public class MbrServiceImpl implements MbrService{
	@Autowired
	private MbrDao md;
	@Autowired
	private RsmDao rd;
	@Autowired
	private SelfDao sd;
	@Autowired
	private SupportStatusDao ssd;
	@Autowired
	private QnaDao qd;
	@Autowired
	private CareerDao cd;
	@Autowired
	private LicenseDao ld;
	@Autowired
	private AwardDao ad;
	@Autowired
	private PortfolioDao pd;
	@Autowired
	private JobpostDao jd;
	@Autowired
	private SupAwardDao sad;
	@Autowired
	private SupCareerDao scd;
	@Autowired
	private SupLicenseDao sld;
	@Autowired
	private SupPortfolioDao spd;
	@Autowired
	private SupSelfDao sfd;
	@Autowired
	private SupportDao supd;
	@Autowired
	private ScrapDao scrd;
	@Autowired
	private JobopenDao jod;
	
	@Override
	public void insertcr(Career cr) {cd.insertcr(cr);}
	@Override
	public void insertrsm(Rsm rsm) {rd.insertrsm(rsm);}
	@Override
	public void insertli(License li) {ld.insertli(li);}
	@Override
	public void insertaw(Award award) {	ad.insertaw(award);	}
	@Override
	public void insertport(Portfolio port) {pd.insertport(port);}
	@Override
	public List<String> rsmsubList(int membercode) {return rd.rsmsubList(membercode);}
	@Override
	public List<Integer> rsmcodeList(int membercode) {return rd.rsmcodeList(membercode);}
	@Override
	public Rsm rsmView(int resumeCode) {	return rd.rsmView(resumeCode);	}
	@Override
	public List<Portfolio> portView(int resumeCode) {return pd.portView(resumeCode);	}
	@Override
	public List<Award> awardView(int resumeCode) {return ad.awardView(resumeCode);	}
	@Override
	public List<Career> careerView(int resumeCode) {	return cd.careerVew(resumeCode);}
	@Override
	public List<License> licenView(int resumeCode) {	return ld.licenseView(resumeCode);	}
	@Override
	public List<Self> selfView(int resumeCode) {	return sd.selfView(resumeCode);	}
	@Override
	public Mbr mypage(String mId) {	return md.mypage(mId);}
	@Override
	public int rsmCnt(int memberCode) {	return rd.rsmCnt(memberCode);	}
	@Override
	public String attentioncmp(String mId) {return md.attentioncmp(mId);}
	@Override
	public String atcname(int companyCode) {	return jd.atcname(companyCode);	}
	@Override
	public Integer atjobcnt(int companyCode) {	return jd.atjobcnt(companyCode);	}
	@Override
	public int supportInsert(SupportStatus spst) {return ssd.supportInsert(spst);}
	@Override
	public List<SupportStatus> supList(int memberCode) {return ssd.supList(memberCode);}
	@Override
	public SupportStatus suprsm(int resumeCode) {return rd.suprsm(resumeCode);}
	@Override
	public int updateatcmpcode(String at,String mId) {		return md.updateatcmpcode(at,mId);	}
	@Override
	public void supportfolioInsert(SupPortfolio support) {	spd.supportInsert(support);	}
	@Override
	public void supawInsert(SupAward supaw) {	sad.supawInsert(supaw);	}
	@Override
	public void supcrInsert(SupCareer supcr) {	scd.supcrInsert(supcr);}
	@Override
	public void supselfInsert(SupSelf supself) {sfd.supselfInsert(supself);	}
	@Override
	public void supliInsert(SupLicense supli) {sld.supliInsert(supli);	}
	@Override
	public int rsmDelete(int memberCode, int resumeCode) {	return rd.rsmDelete(memberCode,resumeCode);	}
	@Override
	public Mbr mbrForm(String mId) {return md.mbrForm(mId);	}
	@Override
	public int mbrUpdate(String mEmail, String mTel, String mId) {return md.mbrUpdate(mEmail,mTel,mId);	}
	@Override
	public String mbrChkpw(String mId) {return md.mbrChkpw(mId);}
	@Override
	public int supportDelete(int sNum) {return ssd.supportDelete(sNum);}
	@Override
	public int scrapCnt(int memberCode) {	return scrd.cnt(memberCode);	}
	@Override
	public int jobopenCnt(int memberCode) {return jod.cnt(memberCode);	}
	@Override
	public int supportCnt(int memberCode) {return supd.cnt(memberCode);}
	@Override
	public List<Support> supportList(int memberCode) {	return supd.List(memberCode);	}
	@Override
	public List<Scrap> scrapList(int memberCode) {return scrd.List(memberCode);}
	@Override
	public List<Jobopen> openList(int memberCode) {return jod.List(memberCode);	}
	@Override
	public Jobpost addpost(int jobPostCode) {	return jd.addpost(jobPostCode);	}
	@Override
	public void insertsup(Support sup) {	supd.insertsup(sup);	}
	@Override
	public int removesup(int jobpostCode, int memberCode) {	return supd.remove(jobpostCode,memberCode);	}
	@Override
	public int scrapDelete(int scrapCode) {	return scrd.scrapDelete(scrapCode);	}
	@Override
	public int qnaInsert(Qna qna) {	return qd.qnaInsert(qna);	}
	@Override
	public List<Qna> qnaList() {	return qd.qnaList();	}
	@Override
	public int mbrcode(String mId) {return md.mbrcode(mId);}
	@Override
	public List<Integer> jpcList(int memberCode) {	return scrd.jpcList(memberCode);	}
	@Override
	public int insertscrap(Scrap scrap) {	return scrd.insertscrap(scrap);	}
	@Override
	public Qna qanForm(int qnaCode) {return qd.qnaForm(qnaCode);}
	
	
	
	public Mbr select(String mId) {
		return md.select(mId);
	}
	public int insert(Mbr mbr) {
		return md.insert(mbr);
	}
	@Override
	public List<Mbr> list() {
		return md.list();
	}
	public Mbr selectMember(int memberCode) {
		return md.selectMember(memberCode);
	}
	public Mbr find(Mbr mbr) {
		return md.find(mbr);
	}
	public Mbr find2(Mbr mbr) {
		return  md.find2(mbr);
	}


}	
