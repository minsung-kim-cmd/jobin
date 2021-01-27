package com.fn.jobin.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.fn.jobin.model.*;
import com.fn.jobin.service.JobpostService;
import com.fn.jobin.service.MbrService;

@Controller
public class MbrController {
	@Autowired
	private MbrService ms;
	@Autowired
	private JobpostService jps;
	private static final org.slf4j.Logger logger = LoggerFactory.getLogger(MbrController.class);

	// 마이페이지
	@RequestMapping("/Mypage")
	public String Mypage(Model model, HttpServletRequest request) {
		
		 HttpSession session = request.getSession(); String mId = (String)
		 session.getAttribute("mId"); int memberCode =
		 ms.mbrcode(mId);//이름,지원한공고&수,스크랩한 공고&수,최근본 공고&수,
		 
		Mbr mbr = ms.mypage(mId);
		int rsmCnt = ms.rsmCnt(memberCode);
		int scrapCnt = ms.scrapCnt(memberCode);
		int jobopenCnt = ms.jobopenCnt(memberCode);
		int supportCnt = ms.supportCnt(memberCode);
		List<Support> supList = ms.supportList(memberCode);
		List<Jobopen> openList = ms.openList(memberCode);
		List<Scrap> scrapList = ms.scrapList(memberCode);

		model.addAttribute("scrapList", scrapList);
		model.addAttribute("openList", openList);
		model.addAttribute("mbr", mbr);
		model.addAttribute("supList", supList);
		model.addAttribute("rsmCnt", rsmCnt);
		model.addAttribute("scrapCnt", scrapCnt);
		model.addAttribute("jobopenCnt", jobopenCnt);
		model.addAttribute("supportCnt", supportCnt);
		return "mbr/Mypage";
	}

	 //공고 클릭시 공고화면 띄우기
	 @RequestMapping("/jobpost") 
	 public String jobpost(Model model,HttpServletRequest request) {
		 int jobPostCode = Integer.parseInt(request.getParameter("jobPostCode"));
		 Jobpost jobpost = jps.select(jobPostCode); 
		 model.addAttribute("jobpost",jobpost);
		 return "jobpost/jobpost";
	}
	 
	// 이력서 등록
	@RequestMapping("/rsmInsert")
	public String rsmInsert(Model model, MultipartHttpServletRequest request) throws IOException {
		int result = 0;
		// 인적사항
		Rsm rsm = new Rsm();
		rsm.setrName(request.getParameter("rName"));
		Date rBirth = null;
		if (!request.getParameter("rBirth").equals(""))
			Date.valueOf(request.getParameter("rBirth"));
		rsm.setrBirth(rBirth);
		rsm.setrEmail(request.getParameter("rEmail"));
		rsm.setrTel(request.getParameter("rTel"));
		MultipartFile mf = request.getFile("rPicture");
		rsm.setrPicture(fileWrite(mf, request));
		rsm.setrAddress(request.getParameter("address") + request.getParameter("detailAddress"));
		rsm.setrGender(request.getParameter("rGender"));
		rsm.setrMilitary(request.getParameter("rMilitary"));

		// 희망근무조건
		rsm.setrWishjobtype(request.getParameter("rWishjobtype"));
		if (!request.getParameter("rWishsal").equals("")) {
			rsm.setrWishsal(Integer.parseInt(request.getParameter("rWishsal")));
		} else {
			rsm.setrWishsal(0);
		}
		rsm.setrWishjob(request.getParameter("rWishjob"));
		String rWisharea[] = request.getParameterValues("rWisharea");
		String area = "";
		if (rWisharea.length != 0) {
			for (int i = 0; i < rWisharea.length; i++) {
				area += rWisharea[i] + ",";
				if (i == rWisharea.length - 1) {
					area += rWisharea[i];
				}
			}
		}
		rsm.setrWisharea(area);

		// 학력
		rsm.setrHighname(request.getParameter("rHighname"));
		if (!rsm.getrHighname().equals("ged")) {
			Date rHighadmi = null;
			if (!request.getParameter("rHighadmi").equals(""))
				Date.valueOf(request.getParameter("rHighadmi"));
			Date rHighgradu = null;
			if (!request.getParameter("rHighgradu").equals(""))
				Date.valueOf(request.getParameter("rHighgradu"));
			rsm.setrHighadmi(rHighadmi);
			rsm.setrHighadmi(rHighgradu);
			rsm.setrHighmajor(request.getParameter("rHighmajor"));
		}
		rsm.setrUnidivi(request.getParameter("rUnidivi"));
		rsm.setrUniname(request.getParameter("rUniname"));
		Date rUniadmi = null;
		if (!request.getParameter("rUniadmi").equals(null))
			Date.valueOf(request.getParameter("rUniadmi"));
		Date rUnigradu = null;
		if (!request.getParameter("rUnigradu").equals(null))
			Date.valueOf(request.getParameter("rUnigradu"));
		rsm.setrHighadmi(rUniadmi);
		rsm.setrHighadmi(rUnigradu);
		rsm.setrUnimajor(request.getParameter("rUnimajor"));
		if (!request.getParameter("rUnicredit").equals("")) {
			rsm.setrUnicredit(Double.parseDouble(request.getParameter("rUnicredit")));
		} else {
			rsm.setrUnicredit(0);
		}
		rsm.setrUnitime(request.getParameter("rUnitime"));
		rsm.setrUniminor(request.getParameter("rUniminor"));
		rsm.setrUnithesis(request.getParameter("rUnithesis"));

		// 경력
		rsm.setrCareer(request.getParameter("rCareer"));
		ms.insertrsm(rsm);
		String rCompanyname[] = request.getParameterValues("rCompanyname");
		String rWorkstart[] = request.getParameterValues("rWorkstart");
		String rWorkend[] = request.getParameterValues("rWorkend");
		String rSal[] = request.getParameterValues("rSal");
		String rPosition[] = request.getParameterValues("rPosition");
		String rjobtype[] = request.getParameterValues("rjobtype");
		String rCharge[] = request.getParameterValues("rCharge");
		String rDept[] = request.getParameterValues("rDept");
		String rResignation[] = request.getParameterValues("rResignation");
		if (rsm.getrCareer().equals("경력") && rCompanyname.length > 0) {
			for (int i = 0; i < rCompanyname.length; i++) {
				Career cr = new Career();
				cr.setrCompanyname(rCompanyname[i]);
				Date end = null;
				if (!rWorkend[i].equals(""))
					Date.valueOf(rWorkend[i]);
				cr.setrWorkend(end);
				Date start = null;
				if (!rWorkstart[i].equals(""))
					Date.valueOf(rWorkstart[i]);
				cr.setrWorkend(start);
				if (rSal[i].equals(null)) {
					cr.setrSal(0);
				} else {
					cr.setrSal(Integer.parseInt(rSal[i]));
				}
				cr.setrPosition(rPosition[i]);
				cr.setrJobtype(rjobtype[i]);
				cr.setrCharge(rCharge[i]);
				cr.setrDept(rDept[i]);
				cr.setrPosition(rResignation[i]);
				ms.insertcr(cr);
			}
		}

		// 자격증
		String rLicense[] = request.getParameterValues("rLicense");
		String rLicenseissuer[] = request.getParameterValues("rLicenseissuer");
		String rLicenseacq[] = request.getParameterValues("rLicenseacq");
		if (rLicense.length > 0) {
			for (int i = 0; i < rLicense.length; i++) {
				License li = new License();
				li.setrLicense(rLicense[i]);
				li.setrLicenseissuer(rLicenseissuer[i]);
				Date aq = null;
				if (!rLicenseacq[i].equals(""))
					Date.valueOf(rLicenseacq[i]);
				li.setrLicenseacq(aq);
				ms.insertli(li);
			}
		}

		// 수상
		String rAwards[] = request.getParameterValues("rAwards");
		String rAwardissuer[] = request.getParameterValues("rAwardagency");
		String rAwarddate[] = request.getParameterValues("rAwarddate");
		String rAwarded[] = request.getParameterValues("rAwarded");
		if (rAwards.length > 0) {
			for (int i = 0; i < rAwards.length; i++) {
				Award award = new Award();
				award.setrAwards(rAwards[i]);
				award.setrAwardissuer(rAwardissuer[i]);
				award.setrAwarded(rAwarded[i]);
				Date date = null;
				if (!rAwarddate[i].equals(""))
					Date.valueOf(rAwarddate[i]);
				award.setrAwarddate(date);
				ms.insertaw(award);
			}
		}

		// 포토폴리오
		String url[] = request.getParameterValues("url");
		mf = request.getFile("rPortfolio");
		String PortFullPath = fileWrite(mf, request);
		if (url.length > 0) {
			for (int i = 0; i < url.length; i++) {
				Portfolio port = new Portfolio();
				port.setrPortfolio(PortFullPath);
				port.setUrl(url[i]);
				ms.insertport(port);
			}
		} /* model.addAttribute("result", result); */

		return "mbr/rsmInsert";
	}

	// 이력서 관리
	@RequestMapping("/rsmList")
	public String rsmList(Model model, HttpServletRequest request) {
		
		 HttpSession session = request.getSession(); String mId =
		 (String)session.getAttribute("mId"); int membercode = ms.mbrcode(mId);
		 
		List<Integer> rsmcodeList = ms.rsmcodeList(membercode);
		List<String> rsmsubList = ms.rsmsubList(membercode);
		model.addAttribute("rsmsubList", rsmsubList);
		model.addAttribute("rsmcodeList", rsmcodeList);

		return "mbr/rsmList";
	}

	// 이력서 입력폼
	@RequestMapping("/rsmForm")
	public String rsmForm(Model model, HttpServletRequest request) {
		return "mbr/rsmForm";
	}
	// 이력서 수정폼
	@RequestMapping("/rsmUpdateForm")
	public String rsmUpdateForm(Model model, HttpServletRequest request) {
		int resumeCode = Integer.parseInt(request.getParameter("resumeCode"));
		Rsm rsm = ms.rsmView(resumeCode);
		System.out.println(rsm.getrGender());
		model.addAttribute("rsm", rsm);

		List<Portfolio> port = ms.portView(resumeCode);
		List<Award> award = ms.awardView(resumeCode);
		List<Career> career = ms.careerView(resumeCode);
		List<License> licen = ms.licenView(resumeCode);
		List<Self> self = ms.selfView(resumeCode);
		model.addAttribute("port", port);
		model.addAttribute("award", award);
		model.addAttribute("career", career);
		model.addAttribute("licen", licen);
		model.addAttribute("self", self);
		return "mbr/rsmUpdateForm";
	}

	// 이력서 보기
	@RequestMapping("/rsmView")
	public String rsmView(Model model, HttpServletRequest request) {

		int resumeCode = Integer.parseInt(request.getParameter("resumeCode"));
		Rsm rsm = ms.rsmView(resumeCode);
		model.addAttribute("rsm", rsm);

		List<Portfolio> port = ms.portView(resumeCode);
		List<Award> award = ms.awardView(resumeCode);
		List<Career> career = ms.careerView(resumeCode);
		List<License> licen = ms.licenView(resumeCode);
		List<Self> self = ms.selfView(resumeCode);
		model.addAttribute("port", port);
		model.addAttribute("award", award);
		model.addAttribute("career", career);
		model.addAttribute("licen", licen);
		model.addAttribute("self", self);

		return "mbr/rsmView";
	}

	// 이력서 수정
	@RequestMapping("/rsmUpdate")
	public String rsmUpdate(Model model, HttpServletRequest request) {

		return "mbr/rsmUpdate";
	}

	// 이력서 삭제
	@RequestMapping("/rsmDelete")
	public String rsmDelete(Model model, HttpServletRequest request) {
		 HttpSession session = request.getSession(); String mId =
				 (String)session.getAttribute("mId"); int memberCode = ms.mbrcode(mId);
		int resumeCode = Integer.parseInt(request.getParameter("resumeCode"));
		int result =ms.rsmDelete(memberCode,resumeCode);
		model.addAttribute("result", result);
		return "mbr/rsmDelete";
	}

	// 입사 지원 현황
	@RequestMapping("/supportList")
	public String supportList(Model model, HttpServletRequest request) {
		
		 HttpSession session = request.getSession(); String mId = (String)
		 session.getAttribute("mId"); int memberCode = ms.mbrcode(mId);
		 
		List<SupportStatus> supList = ms.supList(memberCode);
		model.addAttribute("supList", supList);

		return "mbr/supportList";
	}
	//지원 취소
	@RequestMapping("/supportDelete")
	public String supportDelete(Model model, HttpServletRequest request) {
		
		 HttpSession session = request.getSession(); String mId = (String)
		 session.getAttribute("mId"); int memberCode = ms.mbrcode(mId);

		int sNum = Integer.parseInt(request.getParameter("sNum"));
		int result = ms.supportDelete(sNum);
		int jobpostCode = Integer.parseInt(request.getParameter("jobPostCode"));
		if(result>0) {
			result = ms.removesup(jobpostCode,memberCode);
		}
		model.addAttribute("result", result);
		return "mbr/supportDelete";
	}
	// 지원에 쓸 이력서 선택
	@RequestMapping("/rsmSelect")
	public String rsmSelect(Model model, HttpServletRequest request) {
		 HttpSession session = request.getSession(); String mId =
				 (String)session.getAttribute("mId"); int membercode = ms.mbrcode(mId);
		List<Integer> rsmcodeList = ms.rsmcodeList(membercode);
		List<String> rsmsubList = ms.rsmsubList(membercode);
		model.addAttribute("rsmsubList", rsmsubList);
		model.addAttribute("rsmcodeList", rsmcodeList);
		model.addAttribute("jobPostCode", request.getParameter("jobPostCode"));
		model.addAttribute("cName", request.getParameter("cName"));
		model.addAttribute("jSubject", request.getParameter("jSubject"));
		return "mbr/rsmSelect";
	}

	// 지원하기
	@RequestMapping("supportInsert")
	public String supportInsert(HttpServletRequest request, Model model) {
		 HttpSession session = request.getSession(); String mId =
				 (String)session.getAttribute("mId"); int membercode = ms.mbrcode(mId);
		int resumeCode = Integer.parseInt(request.getParameter("resumeCode"));
		Rsm rsm = ms.rsmView(resumeCode);
		SupportStatus spst = new SupportStatus();		
		List<Portfolio> port = ms.portView(resumeCode);
		List<Award> award = ms.awardView(resumeCode);
		List<Career> career = ms.careerView(resumeCode);
		List<License> licen = ms.licenView(resumeCode);
		List<Self> self = ms.selfView(resumeCode);

		String jpc = request.getParameter("jobPostCode");
		int jobPostCode = Integer.parseInt(jpc);
		String companyname = request.getParameter("cName");
		String subject = request.getParameter("jSubject");
		spst.setResumeCode(rsm.getResumeCode());		spst.setCompanyname(companyname);
		spst.setSubject(subject);		spst.setJobPostCode(jobPostCode);
		spst.setMemberCode(rsm.getMemberCode());		spst.setrName(rsm.getrName());
		spst.setrEmail(rsm.getrEmail());		spst.setrTel(rsm.getrTel());
		spst.setrAddress(rsm.getrAddress());		spst.setrPicture(rsm.getrPicture());
		spst.setrMilitary(rsm.getrMilitary());		spst.setrHighname(rsm.getrHighname());
		spst.setrHighmajor(rsm.getrHighmajor());		spst.setrUniname(rsm.getrUniname());
		spst.setrUnimajor(rsm.getrUnimajor());		spst.setrUniminor(rsm.getrUniminor());
		spst.setrUnitime(rsm.getrUnitime());		spst.setrUnicredit(rsm.getrUnicredit());
		spst.setrUnithesis(rsm.getrUnithesis());		spst.setrWishjobtype(rsm.getrWishjobtype());
		spst.setrWishsal(rsm.getrWishsal());		spst.setrGender(rsm.getrGender());
		spst.setrBirth(rsm.getrBirth());		spst.setrUnidivi(rsm.getrUnidivi());
		spst.setrHighgradu(rsm.getrHighgradu());		spst.setrHighadmi(rsm.getrHighadmi());
		spst.setrUnigradu(rsm.getrUnigradu());		spst.setrUniadmi(rsm.getrUniadmi());
		spst.setrSubject(rsm.getrSubject());		spst.setrCareer(rsm.getrCareer());
		spst.setKeyword(rsm.getKeyword());	
		ms.supportInsert(spst);
		
		for(int i=0; i<port.size();i++) {
			SupPortfolio support = new SupPortfolio();
			support.setPortfolioCode(port.get(i).getPortfolioCode());
			support.setResumeCode(port.get(i).getResumeCode());
			support.setRPortfolio(port.get(i).getrPortfolio());
			support.setUrl(port.get(i).getUrl());
			ms.supportfolioInsert(support);
		}
		if(award.size()>0) {
			for(int i=0; i<award.size();i++) {
				SupAward supaw = new SupAward();
				supaw.setAwardCode(award.get(i).getAwardCode());
				supaw.setRAwarddate(award.get(i).getrAwarddate());
				supaw.setRAwarded(award.get(i).getrAwarded());
				supaw.setRAwardissuer(award.get(i).getrAwardissuer());
				supaw.setResumeCode(award.get(i).getResumeCode());
				supaw.setRAwards(award.get(i).getrAwards());
				ms.supawInsert(supaw);
			}
		}
		if(career.size()>0) {
			for(int i=0; i<career.size();i++) {
				SupCareer supcr = new SupCareer();
				supcr.setCareerCode(career.get(i).getCareerCode());
				supcr.setResumeCode(career.get(i).getResumeCode());
				supcr.setRCompanyname(career.get(i).getrCompanyname());
				supcr.setRWorkstart(career.get(i).getrWorkstart());
				supcr.setRWorkend(career.get(i).getrWorkend());
				supcr.setRSal(career.get(i).getrSal());
				supcr.setRPosition(career.get(i).getrPosition());
				supcr.setRjobtype(career.get(i).getrJobtype());
				supcr.setRCharge(career.get(i).getrCharge());
				supcr.setRDept(career.get(i).getrDept());
				supcr.setRResignation(career.get(i).getrResignation());
				ms.supcrInsert(supcr);
			}
		}
		if(licen.size()>0) {
			for(int i=0; i<licen.size();i++) {
				SupLicense supli = new SupLicense();
				supli.setLicenseCode(licen.get(i).getLicenseCode());
				supli.setResumeCode(licen.get(i).getResumeCode());
				supli.setRLicense(licen.get(i).getrLicense());
				supli.setRLicenseacq(licen.get(i).getrLicenseacq());
				supli.setRLicenseissuer(licen.get(i).getrLicenseissuer());
				ms.supliInsert(supli);
			}		
		}
		if(self.size()>0) {
			for(int i=0; i<self.size();i++) {
				SupSelf supself = new SupSelf();
				supself.setResumeCode(self.get(i).getResumeCode());
				supself.setSelfCode(self.get(i).getSelfCode());
				supself.setSelfContent(self.get(i).getSelfContent());
				supself.setSelfSubject(self.get(i).getSelfSubject());
				ms.supselfInsert(supself);
			}
		}
		int result = ms.supportInsert(spst);
		//support 테이블에 추가
		Jobpost jobpost = ms.addpost(jobPostCode);
		Support sup = new Support();
		sup.setJobPostCode(jobPostCode); sup.setMemberCode(membercode);
		sup.setcName(jobpost.getcName()); sup.setClosing(jobpost.getClosing());
		sup.setjSubject(jobpost.getjSubject()); sup.setCareer(jobpost.getCareer());
		sup.setFinalEdu(jobpost.getFinalEdu()); sup.setWorkarea(jobpost.getWorkarea());
		sup.setJobtype(jobpost.getJobtype()); sup.setRegStatus(jobpost.getRegStatus());
		ms.insertsup(sup);
		System.out.println(result);
		
		model.addAttribute("result", result);
		return "mbr/supportInsert";
	}

	// 관심 기업리스트
	@RequestMapping("/attentionList")
	public String attentionList(Model model, HttpServletRequest request) {
		
		 HttpSession session = request.getSession(); String mId = (String)
		 session.getAttribute("mId");
		String atcmp ="";
		atcmp = ms.attentioncmp(mId);
		List<String> atcname = new ArrayList<String>();
		List<Integer> atjobcnt = new ArrayList<Integer>();
		List<String> atcmpcode = new ArrayList<String>();
		if(!atcmp.equals("")){
			String[] atcmpList = atcmp.split(",");
			Collections.addAll(atcmpcode, atcmpList);
			for (int i = 0; i < atcmpList.length; i++) {
				// jobpost에서 회사 코드 조건으로 회사명이랑 진행중인 공고수 검색
				atcname.add(ms.atcname(Integer.parseInt(atcmpList[i])));
				atjobcnt.add(ms.atjobcnt(Integer.parseInt(atcmpList[i])));
			}
		}
		model.addAttribute("atcmpcode", atcmpcode);
		model.addAttribute("atcname", atcname);
		model.addAttribute("atjobcnt", atjobcnt);

		return "mbr/attentionList";
	}

	// 관심기업 삭제
	@RequestMapping("/attentionDelete")
	public String attentionDelete(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession(); 
		String mId = (String) session.getAttribute("mId");
		String companyCode = request.getParameter("companyCode");
		String atcmp = ms.attentioncmp(mId);
		String at = "";
		List<String> list = new ArrayList<String>();
		String[] atcmpList = atcmp.split(",");// 1000,1001
		int remove = 0;
		for (int i = 0; i < atcmpList.length; i++) {
			if (atcmpList[i].equals(companyCode)) {
				remove = i;
			}
		}
		for (int i = 0; i < atcmpList.length; i++) {
			if (remove != i) {
				list.add(atcmpList[i]);
			}
		}
		for(int i=0;i<list.size();i++) {
			if(i == list.size()-1) {
				at += list.get(i);
			}else {
				at += list.get(i)+",";
			}
		}
		int result = ms.updateatcmpcode(at, mId);
		model.addAttribute("result", result);
		return "mbr/attentionDelete";
	}
	//관심기업 추가
	@RequestMapping("/attentionInsert")
	public String attentionInsert(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession(); 
		String mId = (String) session.getAttribute("mId");
		int companyCode = Integer.parseInt(request.getParameter("companyCode"));
		String atcmp = ms.attentioncmp(mId);
		String[] at = atcmp.split(",");
		int result = 0;
		for(int i=0; i<at.length;i++) {
			if(at[i].equals(companyCode)) {
				result = -1;
				model.addAttribute("result",result);
				return "mbr/attentionInsert";
			}
		}
		atcmp += ","+companyCode;
		result = ms.updateatcmpcode(atcmp, mId);
		model.addAttribute("result",result);
		return "mbr/attentionInsert";
	}
	//스크랩 삭제
	@RequestMapping("/scrapDelete")
	public String scrapDelete(Model model, HttpServletRequest request) {
		int scrapCode = Integer.parseInt(request.getParameter("scrapCode"));
		int result = ms.scrapDelete(scrapCode);
		model.addAttribute("result", result);
		return "mbr/scrapDelete";
	}

	// 스크랩 추가
	@RequestMapping("/scrapInsert")
	public String scrapInsert(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String mId = (String) session.getAttribute("mId");
		int memberCode = ms.mbrcode(mId);
		int jobPostCode = Integer.parseInt(request.getParameter("jobPostCode"));
		int result = 0;
		List<Integer> scrapjpcList = ms.jpcList(memberCode);
		if(!scrapjpcList.isEmpty()) {
			for(int i=0;i<scrapjpcList.size();i++) {
				if(scrapjpcList.get(i).equals(jobPostCode)) {
					result = -1;
					model.addAttribute("result", result);
					return "mbr/scrapInsert"; 
				}
			}
		}
		Jobpost jobpost = ms.addpost(jobPostCode);
		Scrap scrap = new Scrap();
		scrap.setJobPostCode(jobPostCode); scrap.setMemberCode(memberCode);
		scrap.setcName(jobpost.getcName()); scrap.setClosing(jobpost.getClosing());
		scrap.setjSubject(jobpost.getjSubject()); scrap.setCareer(jobpost.getCareer());
		scrap.setFinalEdu(jobpost.getFinalEdu()); scrap.setWorkarea(jobpost.getWorkarea());
		scrap.setJobtype(jobpost.getJobtype()); scrap.setRegStatus(jobpost.getRegStatus());
		result = ms.insertscrap(scrap);
		model.addAttribute("result", result);
		return "mbr/scrapInsert";
	}
	// 문의 내역
	@RequestMapping("/qnaList")
	public String qnaList(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession(); 
		String mId = (String) session.getAttribute("mId");
		List<Qna> qnaLsit = ms.qnaList();
		List<Integer> ref = new ArrayList<>();
		int cnt =0;
		for(int i=0;i<qnaLsit.size();i++) {
			if(qnaLsit.get(i).getmId().equals(mId)) {//회원의 문의내역
				ref.add(qnaLsit.get(i).getQnaCode());
				cnt++;
			}
			if(!qnaLsit.get(i).getmId().equals(mId) && !qnaLsit.get(i).getmId().equals("master"))
				qnaLsit.remove(i);
		}
		
		if(cnt == 0)
			qnaLsit.removeAll(qnaLsit);
		//221 21
		for(int j=0;j<ref.size();j++) {
			for(int i=0; i<qnaLsit.size();i++){
				if(qnaLsit.get(i).getqRef() != ref.get(j) ) {
					cnt = i;
				}else {
					cnt = -1;
				}
			}
			if(cnt != -1) {
				qnaLsit.remove(cnt);
			}
		}
		System.out.println(qnaLsit.size());
		model.addAttribute("qnaList", qnaLsit);
		return "mbr/qnaList";
	}

	// 문의 내용
	@RequestMapping("/qnaForm")
	public String qnaForm(Model model, HttpServletRequest request) {
		int qnaCode = Integer.parseInt(request.getParameter("qnaCode"));
		Qna qna = ms.qanForm(qnaCode);
		model.addAttribute("qna", qna);
		return "mbr/qnaForm";
	}

	// 문의하기폼
	@RequestMapping("/qnaInsertForm")
	public String qnaInsertForm(Model model, HttpServletRequest request) {
		return "mbr/qnaInsertForm";
	}
	// 문의하기
	@RequestMapping("/qnaInsert")
	public String qnaInsert(Model model, HttpServletRequest request) {
		String qSubject = request.getParameter("qSubject");
		String qContent = request.getParameter("qContent");
		String qWriter = request.getParameter("qWriter");
		HttpSession session = request.getSession(); 
		String mId = (String) session.getAttribute("mId");
		String mPassword = ms.mbrChkpw(mId);
		Qna qna = new Qna();
		qna.setqSubject(qSubject); qna.setqContent(qContent);
		qna.setmId(mId); qna.setmPassword(mPassword); qna.setqWriter(qWriter);
		int result = ms.qnaInsert(qna);
		model.addAttribute("result",result);
		return "mbr/qnaInsert";
	}
	// 개인정보 확인폼
	@RequestMapping("/mbrChkForm")
	public String mbrChkForm() {
		return "mbr/mbrChkForm";
	}
	// 개인정보 확인
	@RequestMapping("/mbrChk")
	public String mbrChk(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession(); 
		String mId = (String)session.getAttribute("mId");
		String mPassword = request.getParameter("mPassword");
		String chkps = ms.mbrChkpw(mId);
		int result = 0;
		if(chkps.equals(mPassword)) {
			result++;
		}
		model.addAttribute("result",result);
		return "mbr/mbrChk";
	}
	// 개인정보 수정
	@RequestMapping("/mbrUpdate")
	public String mbrUpdate(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession(); 
		String mId = (String)session.getAttribute("mId");
		String mEmail = request.getParameter("mEmail");
		String mTel = request.getParameter("mTel");
		int result = ms.mbrUpdate(mEmail,mTel,mId);
		model.addAttribute("result",result);
		return "mbr/mbrUpdate";
	}

	// 개인정보 보기
	@RequestMapping("/mbrForm")
	public String mbrForm(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession(); 
		String mId = (String)session.getAttribute("mId");
		Mbr mbr = ms.mbrForm(mId);
		model.addAttribute("mbr",mbr);
		return "mbr/mbrForm";
	}
	
	private String fileWrite(MultipartFile file,HttpServletRequest request) throws IOException {
		String uploadPath = request.getSession().getServletContext().getRealPath("/WEB-INF/images");
		logger.info("파일 이름" + file.getOriginalFilename());
		logger.info("파일 크기" + file.getSize());
		logger.info("컨텐트 타입" + file.getContentType());
		if (file.getOriginalFilename().equals("")) {
			return null;
		}
		String savedName = file.getOriginalFilename();
		File target = new File(uploadPath, savedName);
		FileCopyUtils.copy(file.getBytes(), target);
		return uploadPath + "/" + savedName;
	}
	
	
	@RequestMapping("/mJoinForm")
	public String mJoinForm() {
		return "mbr/mJoinForm";
	}

	@RequestMapping(value = "/idChk", produces = "text/html;charset=utf-8")
	@ResponseBody // jsp 프로그램을 이용하지 않고 바로 본문을 전달
	public String idChk(String mId) {
		String msg = "";
		Mbr mbr = ms.select(mId);
		if (mbr == null)
			msg = "사용 가능한 ID입니다";
		else
			msg = "사용 중인 ID입니다";
		return msg;
	}

	@RequestMapping("/mJoin")
	public String mJoin(Mbr mbr, Model model, HttpSession session) {
		int result = 0;
		Mbr mr = ms.select(mbr.getmId());
		if (mr == null)
			result = ms.insert(mbr);
		else
			result = -1;
		model.addAttribute("result", result);
		return "mbr/mJoin";
	}

	@RequestMapping("/mLoginForm")
	public String mLoginForm() {
		return "mbr/mLoginForm";
	}

	@RequestMapping("/mLogin")
	public String mLogin(Mbr mbr, Model model, HttpSession session) {
		int result = 0;
		Mbr mr = ms.select(mbr.getmId());
		if (mr == null || mr.getmDel().equals("y"))
			result = -1; // 없는 아이디
		else if (mr.getmPassword().equals(mbr.getmPassword())) {
			result = 1; // 성공
			session.setAttribute("mId", mbr.getmId());
			session.setAttribute("memberCode", mbr.getMemberCode());
		}
		model.addAttribute("result", result);
		return "mbr/mLogin";
	}

	@RequestMapping("/mIdfindForm")
	public String mIdfindForm() {
		return "mbr/mIdfindForm";
	}
	
	 @RequestMapping("/mIdfind") 
	 public String mIdfind(Mbr mbr, Model model) { 
		 Mbr mbr2 = ms.find(mbr);
		 model.addAttribute("mbr", mbr2);
		 return "mbr/mIdfind"; 
	 }
	 @RequestMapping("/mPassfindForm")
		public String mPassfindForm() {
			return "mbr/mPassfindForm";
		}
		
	 @RequestMapping("/mPassfind") 
	 public String mPassfind(Mbr mbr,Model model) { 
		 Mbr mbr3 = ms.find2(mbr);
		 model.addAttribute("mbr", mbr3);
		 return "mbr/mPassfind"; 
		 }
	 @RequestMapping("/mLogout")
	 public String mLogout(HttpSession session) {
		 session.invalidate();
		 return "mbr/mLogout";
	 }
	 @RequestMapping("/mList")
	 public String mList( Model model ) {
		 List<Mbr> list = ms.list();
		 model.addAttribute("list", list);
		 return "mbr/mList";
	 }
	 @RequestMapping("/mView")
	 public String mView(int memberCode, String pageNum, Model model) {
		 Mbr mbr = ms.selectMember(memberCode);
		 model.addAttribute("mbr", mbr);
		 model.addAttribute("pageNum", pageNum);
		 return "mbr/mView";
	 }
}
