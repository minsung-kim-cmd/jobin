package com.fn.jobin.controller;

import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fn.jobin.model.Jobpost;
import com.fn.jobin.service.CompanymemService;
import com.fn.jobin.service.JobpostService;
import com.fn.jobin.service.MbrService;
import com.fn.jobin.service.PagingBean;
import com.fn.jobin.service.QnaService;

@Controller
public class MainController {

	@Autowired
	private JobpostService jps;
	@Autowired
	private MbrService ms;
	
	@RequestMapping("main")
	public String main() {
		return "redirect:main/pageNum/1";
	}

	@RequestMapping("main/pageNum/{pageNum}")
	public String list(@PathVariable String pageNum, Jobpost jobpost, Model model) {
		if (pageNum == null || pageNum.equals("")) pageNum = "1";
		int currentPage = Integer.parseInt(pageNum);
		int rowPerPage  = 8;
		int total = jps.getTotal(jobpost); 
		int startRow = (currentPage - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		int no = total - startRow + 1; // 페이지별 시작번호
		jobpost.setStartRow(startRow);
		jobpost.setEndRow(endRow);
		Collection<Jobpost> list = jps.list(jobpost);
		List<Jobpost> l1 = (List<Jobpost>)list;
		PagingBean pb=new PagingBean(currentPage,rowPerPage,total);
		String tit[] = {"작성자","제목","내용","제목+내용"};
		model.addAttribute("list", list);
		model.addAttribute("no", no);
		model.addAttribute("pb", pb);
		model.addAttribute("jobpost", jobpost);
		model.addAttribute("pageNum", pageNum);
		return "main";
	}
		
	@RequestMapping("jobpost/{jobPostCode}/{pageNum}")
	public String jobpost(@PathVariable int jobPostCode,
			@PathVariable String pageNum, Model model) {
		jps.updateReadCnt(jobPostCode);
		Jobpost jobpost = jps.select(jobPostCode);
		model.addAttribute("jobpost",jobpost);
		model.addAttribute("pageNum",pageNum);
		return "jobpost/jobpost";
	}

	@RequestMapping("login")
	public String loginFrom() {
		return "login";
	}
}
