package com.fn.jobin.controller;

import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fn.jobin.model.Companymem;
import com.fn.jobin.model.Companyreview;
import com.fn.jobin.model.Jobpost;
import com.fn.jobin.model.Mbr;
import com.fn.jobin.model.SupportStatus;
import com.fn.jobin.service.CompanymemService;
import com.fn.jobin.service.CompanyreviewService;
import com.fn.jobin.service.JobpostService;
import com.fn.jobin.service.SupportStatusService;

@Controller
public class CompanymemController {
	@Autowired
	private CompanymemService cms;
	@Autowired
	private JobpostService jps;
	@Autowired
	private SupportStatusService sss;
	@Autowired
	private CompanyreviewService crs;

	@RequestMapping("/insertJobpostForm")
	public String insertJobpostForm(Model model, HttpSession session) {
		int companyCode = (Integer) session.getAttribute("companyCode");
		Companymem companymem = cms.select(companyCode);
		model.addAttribute("companymem",companymem);
		return "/Companymember/insertJobpostForm";
	}
	@RequestMapping("/updateJobpostForm")
	public String updateJobpostForm(Model model, int jobPostCode) {
		Jobpost jobpost = jps.select(jobPostCode);
		model.addAttribute("jobpost", jobpost);
		return "/Companymember/updateJobpostForm";
	}
	@RequestMapping("/updateJobpost")
	public String updateJobpost(Model model, Jobpost jobpost) {
		int result = jps.update(jobpost);
		model.addAttribute("result",result);
		model.addAttribute("jobpost",jobpost);
		return "/Companymember/updateJobpost";
	}
	@RequestMapping("/insertJobpost")
	public String insertJobpost(Jobpost jobpost,Model model) {
		int result = jps.insertJobpost(jobpost);
		model.addAttribute("result", result);
		return "/Companymember/insertJobpost";
	}
	@RequestMapping("/allJobpost")
	public String allJobpost( Model model,HttpSession session) {
		int companyCode = (Integer)session.getAttribute("companyCode");
		Collection<Jobpost> jobpostList = jps.jobpostList(companyCode);
		model.addAttribute("jobpostList", jobpostList);
		return "/Companymember/allJobpost";
	}
	@RequestMapping("/allJobpostPro")
	public String allJobpostPro(Model model,HttpSession session) {
		int companyCode = (Integer)session.getAttribute("companyCode");
		Collection<Jobpost> jobpostList = jps.jobpostList(companyCode);
		model.addAttribute("jobpostList", jobpostList);
		return "/Companymember/allJobpostPro";
	}
	@RequestMapping("/allJobpostEnd")
	public String allJobpostEnd(Model model,HttpSession session) {
		int companyCode = (Integer)session.getAttribute("companyCode");
		Collection<Jobpost> jobpostList = jps.jobpostList(companyCode);
		model.addAttribute("jobpostList", jobpostList);
		return "/Companymember/allJobpostEnd";
	}
	@RequestMapping("/endEmp")
	public String endEmp(Model model,int jobPostCode) {
		int result = jps.endEmp(jobPostCode);
		model.addAttribute("result", result);
		return "/Companymember/endEmp";
	}
	@RequestMapping("/deleteJobpost")
	public String deleteJobpost(int jobPostCode, Model model) {
		int result = jps.delete(jobPostCode);
		model.addAttribute("result",result);
		return "/Companymember/deleteJobpost";
	}
	
	@RequestMapping("/companyInfo")
	public String companyInfo(int companyCode, Model model) {
		Companymem companymem = cms.select(companyCode);
		model.addAttribute("companymem", companymem);
		return "/Companymember/companyInfo";
	}
	@RequestMapping("/companyInfoPost")
	public String companyInfoPost(int companyCode, Model model) {
		Companymem companymem = cms.select(companyCode);
		Collection<Jobpost> jobpostList = jps.jobpostList(companyCode);
		model.addAttribute("companymem",companymem);
		model.addAttribute("jobpostList", jobpostList);
		return "/Companymember/companyInfoPost";
	}
		@RequestMapping("/companyInfoReview")
	public String companyInfoReview(int companyCode, Model model) {
		Companymem companymem = cms.select(companyCode);
		Collection<Companyreview> companyreview = crs.selectList(companyCode);
		model.addAttribute("companyreview",companyreview);
		model.addAttribute("companymem", companymem);
		return "/Companymember/companyInfoReview";
	}
	@RequestMapping("/insertReview")
	public String insertReview(Companyreview companyreview, Model model) {
		int result = crs.insertReview(companyreview);
		model.addAttribute("result", result);
		return "/Companymember/insertReview";
	}
	@RequestMapping("/updateReview")
	public String updateReview(Companyreview companyreview, Model model) {
		int result = crs.updateReview(companyreview);
		model.addAttribute("result", result);
		model.addAttribute("companyreview",companyreview);
		return "/Companymember/updateReview";
	}
	@RequestMapping("/deleteReview")
	public String deleteReview(int reviewCode,Model model) {
		int result = crs.deleteReview(reviewCode);
		model.addAttribute("result",result);
		return "/Companymember/deleteReview";
	}
	@RequestMapping("/companyJobpost")
	public String companyJobpost() {
		return "/Companymember/companyJobpost";
	}
	
	@RequestMapping("/postnApply")
	public String postnApply(HttpSession session,Model model) {
		int companyCode = (Integer)session.getAttribute("companyCode");
		Collection<Jobpost> jobpostList = jps.jobpostList(companyCode);
		Collection<SupportStatus> applyList = sss.selectApply(companyCode);
		model.addAttribute("jobpostList",jobpostList);
		model.addAttribute("applyList",applyList);
		return "/Companymember/postnApply";
	}

	
	@RequestMapping("/allApplicant")
	public String allApplicant(HttpSession session,Model model) {
		int companyCode = (Integer)session.getAttribute("companyCode");
		Collection<SupportStatus> applyList = sss.selectApply(companyCode);
		model.addAttribute("applyList",applyList);
		return "/Companymember/allApplicant";
	}
	@RequestMapping("/applypass")
	public String applypass(Model model, int sNum) {
		int result=sss.applypass(sNum);
		model.addAttribute("result",result);
		return "/Companymember/applypass";
	}
	@RequestMapping("/applyfail")
	public String applyfail(Model model, int sNum) {
		int result=sss.applyfail(sNum);
		model.addAttribute("result",result);
		return "/Companymember/applyfail";
	}
	@RequestMapping("/supportStatusOpen")
	public String supportStatusOpen(Model model,int sNum) {
		SupportStatus apply = sss.select(sNum); 
		model.addAttribute("apply",apply);
		return "/Companymember/supportStatusOpen";
	}
	@RequestMapping("/insertCompanyInfo")
	public String insertCompanyInfo() {
		return "/Companymember/insertCompanyInfo";
	}
	@RequestMapping("/cJoinForm")
	public String cJoinForm() {
		return "/companymem/cJoinForm";
	}

	@RequestMapping(value = "/cIdChk", produces = "text/html;charset=utf-8")
	@ResponseBody
	public String cIdChk(String cId) {
		String msg = "";
		Companymem companymem = cms.select(cId);
		if (companymem == null)
			msg = "사용 가능한 ID입니다";
		else
			msg = "사용 중인 ID입니다";
		return msg;
	}

	@RequestMapping("/cJoin")
	public String cJoin(Companymem companymem, Model model, HttpSession session) {
		int result = 0;
		Companymem cpm = cms.select(companymem.getcId());
		if(cpm==null)
			result = cms.insert(companymem);
		else
			result = -1;
		model.addAttribute("result", result);
		return "/companymem/cJoin";
	}

	@RequestMapping("/cLoginForm")
	public String cLoginForm() {
		return "/companymem/cLoginForm";
	}

	@RequestMapping("/cLogin")
	public String cLogin(Companymem companymem, Model model, HttpSession session) {
		int result = 0;
		Companymem cpm = cms.select(companymem.getcId());
		if (cpm == null || cpm.getcDel().equals("y"))
			result = -1; // 실패
		else if (cpm.getcPassword().equals(companymem.getcPassword())) {
			result = 1; // 성공
			session.setAttribute("cId", cpm.getcId());
		}
		model.addAttribute("result", result);
		return "/companymem/cLogin";
	}
	@RequestMapping("/cIdfindForm")
	public String cIdfindForm() {
		return "/companymem/cIdfindForm";
	}
	@RequestMapping("/cIdfind")
	public String cIdfind(Companymem companymem, Model model) {
		Companymem companymem2 = cms.find(companymem);
		model.addAttribute("companymem", companymem2);
		return "/companymem/cIdfind";
	}
	@RequestMapping("/cPassfindForm")
	public String cPassfindForm() {
		return "/companymem/cPassfindForm";
	}
	@RequestMapping("/cPassfind")
	public String cPassfind(Companymem companymem, Model model) {
		Companymem companymem3 = cms.find2(companymem);
		model.addAttribute("companymem", companymem3);
		return "/companymem/cPassfind";
	}
	 @RequestMapping("/cLogout")
	 public String mLogout(HttpSession session) {
		 session.invalidate();
		 return "/companymem/cLogout";
	 }
	 @RequestMapping("/cList")
	 public String cList( Model model ) {
		 List<Mbr> list = cms.list();
		 model.addAttribute("list", list);
		 return "/companymem/cList";
	 }
	 @RequestMapping("/cView")
	 public String cView(int companyCode, String pageNum, Model model) {
		 Companymem companymem = cms.selectMember(companyCode);
		 model.addAttribute("companymem", companymem);
		 model.addAttribute("pageNum", pageNum);
		 return "/companymem/cView";
	 }
}
